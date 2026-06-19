using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

namespace VoidAI
{
    // Thrown when VoidAI returns a structured API error
    // (ref for future: https://docs.voidai.app/guides/errors and /authentication).
    internal sealed class VoidAIException : Exception
    {
        public string ErrorCode { get; }

        public VoidAIException(string message, string errorCode) : base(message)
        {
            ErrorCode = errorCode;
        }
    }

    // Smoll wrapper around VoidAI's OpenAI-compatible chat completions
    // endpoint. Handles auth, request shaping, and manual SSE parsing for
    // streaming responses (HttpClient has no built-in SSE reader) .
    internal sealed class VoidAIClient : IDisposable
    {
        private const string BaseUrl = "https://api.voidai.app/v1";

        private readonly HttpClient _http;

        public VoidAIClient(string apiKey)
        {
            _http = new HttpClient(new Yggdrasil.Networking.BifrostEngine())
            {
                Timeout = Timeout.InfiniteTimeSpan // streaming responses can run long; we cancel via token instead
            };
            _http.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiKey);
            _http.DefaultRequestHeaders.UserAgent.ParseAdd(
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"); // Chrome 124 on Windows x64
            _http.DefaultRequestHeaders.Accept.ParseAdd("application/json");
            _http.DefaultRequestHeaders.AcceptLanguage.ParseAdd("en-US,en;q=0.9");
        }

        // Quick credential check. VoidAI has no dedicated "verify this key"
        /// endpoint, GET /v1/models is unauthenticated, so it can't tell us
        // whether the key is valid. A minimal chat completion is the only
        // way to confirm auth, so this sends the cheapest possible request
        // (max_tokens: 1 against the lowest-multiplier free model) purely to
        // read the auth outcome off the response/error.

        // TODO: maybe there is a better way to do ts ?
        public async Task<bool> ValidateKeyAsync(CancellationToken cancellationToken = default)
        {
            try
            {
                var probeModel = FreeModels.All.Count > 0 ? FreeModels.All[0].ModelId : "gpt-4o-mini";
                var messages = new List<ChatTurn> { new ChatTurn("user", "hi") };
                await SendNonStreamingAsync(probeModel, messages, cancellationToken, maxTokens: 1).ConfigureAwait(false);
                return true;
            }
            catch (VoidAIException ex) when (
                ex.ErrorCode == "INVALID_KEY" ||
                ex.ErrorCode == "MISSING_HEADER" ||
                ex.ErrorCode == "INVALID_FORMAT" ||
                ex.ErrorCode == "ACCOUNT_DISABLED" ||
                ex.ErrorCode == "IP_ACCESS_DENIED")
            {
                return false;
            }
            // Any other exception (network, model unavailable, etc.) is not
            // treated as a bad key, let it bubble up so the caller can
            // distinguish "wrong key" from "something else went wrong."
        }

        // Sends a chat Completion request with stream:true and invokes
        // onDelta for each piece of text content as it arrives. Returns the
        // full concatenated response text once the stream comppletes .
        public async Task<string> SendStreamingAsync(
            string model,
            IReadOnlyList<ChatTurn> history,
            Action<string> onDelta,
            CancellationToken cancellationToken = default)
        {
            var requestBody = BuildRequestBody(model, history, stream: true);

            using (var request = new HttpRequestMessage(HttpMethod.Post, $"{BaseUrl}/chat/completions"))
            {
                request.Content = new StringContent(requestBody, Encoding.UTF8, "application/json");

                using (var response = await _http.SendAsync(
                    request, HttpCompletionOption.ResponseHeadersRead, cancellationToken).ConfigureAwait(false))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        await ThrowForErrorResponseAsync(response, cancellationToken).ConfigureAwait(false);
                        throw new VoidAIException("VoidAI request failed.", "UNKNOWN"); // unreachable; satisfies flow analysis
                    }

                    var fullText = new StringBuilder();

                    using (var stream = await response.Content.ReadAsStreamAsync().ConfigureAwait(false))
                    using (var reader = new StreamReader(stream, Encoding.UTF8))
                    {
                        string line;
                        while ((line = await reader.ReadLineAsync().ConfigureAwait(false)) != null)
                        {
                            cancellationToken.ThrowIfCancellationRequested();

                            if (line.Length == 0) continue; // blank line between SSE events
                            if (!line.StartsWith("data:", StringComparison.Ordinal)) continue;

                            var payload = line.Substring(5).TrimStart();
                            if (payload == "[DONE]") break;
                            if (payload.Length == 0) continue;

                            string delta = TryExtractDeltaContent(payload);
                            if (!string.IsNullOrEmpty(delta))
                            {
                                fullText.Append(delta);
                                onDelta(delta);
                            }
                        }
                    }

                    return fullText.ToString();
                }
            }
        }

        // Sends a Non-streaming chat Completion request and returns the full
        // response text. Used for the login key-validation probe .
        public async Task<string> SendNonStreamingAsync(
            string model,
            IReadOnlyList<ChatTurn> history,
            CancellationToken cancellationToken = default,
            int? maxTokens = null)
        {
            var requestBody = BuildRequestBody(model, history, stream: false, maxTokens: maxTokens);

            using (var request = new HttpRequestMessage(HttpMethod.Post, $"{BaseUrl}/chat/completions"))
            {
                request.Content = new StringContent(requestBody, Encoding.UTF8, "application/json");

                using (var response = await _http.SendAsync(request, cancellationToken).ConfigureAwait(false))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        await ThrowForErrorResponseAsync(response, cancellationToken).ConfigureAwait(false);
                        throw new VoidAIException("VoidAI request failed.", "UNKNOWN"); // unreachable; satisfies flow analysis
                    }

                    var json = await response.Content.ReadAsStringAsync().ConfigureAwait(false);

                    using (var doc = JsonDocument.Parse(json))
                    {
                        var choices = doc.RootElement.GetProperty("choices");
                        var message = choices[0].GetProperty("message");
                        return message.TryGetProperty("content", out var contentEl)
                            ? contentEl.GetString() ?? string.Empty
                            : string.Empty;
                    }
                }
            }
        }

        private static string BuildRequestBody(string model, IReadOnlyList<ChatTurn> history, bool stream, int? maxTokens = null)
        {
            using (var ms = new MemoryStream())
            {
                using (var writer = new Utf8JsonWriter(ms))
                {
                    writer.WriteStartObject();
                    writer.WriteString("model", model);
                    writer.WriteBoolean("stream", stream);
                    if (maxTokens.HasValue)
                    {
                        writer.WriteNumber("max_tokens", maxTokens.Value);
                    }

                    writer.WriteStartArray("messages");
                    foreach (var turn in history)
                    {
                        writer.WriteStartObject();
                        writer.WriteString("role", turn.Role);
                        writer.WriteString("content", turn.Content);
                        writer.WriteEndObject();
                    }
                    writer.WriteEndArray();

                    writer.WriteEndObject();
                }

                return Encoding.UTF8.GetString(ms.ToArray());
            }
        }

        // Pulls choices[0].delta.content out of a single SSE data payload,
        // per the chunk shape documented at
        // https://docs.voidai.app/api-reference/chat/completions.
        // Returns null if the chunk has no content delta (e.g. the initial
        // role-only chunk, or a finish_reason-only chunk).
        private static string TryExtractDeltaContent(string jsonPayload)
        {
            try
            {
                using (var doc = JsonDocument.Parse(jsonPayload))
                {
                    if (!doc.RootElement.TryGetProperty("choices", out var choices) || choices.GetArrayLength() == 0)
                        return null;

                    var choice = choices[0];
                    if (!choice.TryGetProperty("delta", out var delta))
                        return null;

                    if (delta.TryGetProperty("content", out var contentEl) && contentEl.ValueKind == JsonValueKind.String)
                        return contentEl.GetString();

                    return null;
                }
            }
            catch (JsonException)
            {
                // Malformed or unexpected chunk shape!!111!! skip it rather than
                // tearing down the whole stream over one bad line.
                return null;
            }
        }

        private static async Task ThrowForErrorResponseAsync(HttpResponseMessage response, CancellationToken cancellationToken)
        {
            var body = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            string message = $"VoidAI request failed with status {(int)response.StatusCode}. Body: {body}";
            string code = (int)response.StatusCode == 429 ? "RATE_LIMITED" : "UNKNOWN";
            try
            {
                using (var doc = JsonDocument.Parse(body))
                {
                    if (doc.RootElement.TryGetProperty("error", out var errorEl))
                    {
                        if (errorEl.TryGetProperty("message", out var msgEl))
                            message = msgEl.GetString() ?? message;
                        if (errorEl.TryGetProperty("code", out var codeEl))
                            code = codeEl.GetString() ?? code;
                    }
                }
            }
            catch (JsonException)
            {
                // body wasn't the expected {"error": } JSON shappe,, message
                // above already contains the raw body for diagnosis
            }
            throw new VoidAIException(message, code);
        }

        public void Dispose()
        {
            _http.Dispose();
        }
    }
}