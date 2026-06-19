/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our license.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

namespace Chaco
{
    internal sealed class ChacoException : Exception
    {
        public string ErrorCode { get; }

        public ChacoException(string message, string errorCode) : base(message)
        {
            ErrorCode = errorCode;
        }
    }

    internal sealed class ChacoClient : IDisposable
    {
        private readonly string _baseUrl;
        private readonly HttpClient _http;

        public ChacoClient(string baseUrl, string apiKey)
        {
            if (string.IsNullOrWhiteSpace(baseUrl))
                throw new ArgumentException("Base URL must not be empty.", nameof(baseUrl));

            _baseUrl = baseUrl.TrimEnd('/');

            _http = new HttpClient(new Yggdrasil.Networking.BifrostEngine())
            {
                Timeout = Timeout.InfiniteTimeSpan
            };

            if (!string.IsNullOrWhiteSpace(apiKey))
            {
                _http.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiKey);
            }

            _http.DefaultRequestHeaders.UserAgent.ParseAdd(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36");
            _http.DefaultRequestHeaders.Accept.ParseAdd("application/json");
            _http.DefaultRequestHeaders.AcceptLanguage.ParseAdd("en-US,en;q=0.9");
        }

        public async Task<List<string>> ListModelsAsync(CancellationToken cancellationToken = default)
        {
            using (var request = new HttpRequestMessage(HttpMethod.Get, $"{_baseUrl}/models"))
            using (var response = await _http.SendAsync(request, cancellationToken).ConfigureAwait(false))
            {
                if (!response.IsSuccessStatusCode)
                {
                    await ThrowForErrorResponseAsync(response, cancellationToken).ConfigureAwait(false);
                    throw new ChacoException("Request failed.", "UNKNOWN");
                }

                var json = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
                var ids = new List<string>();

                using (var doc = JsonDocument.Parse(json))
                {
                    if (doc.RootElement.TryGetProperty("data", out var dataEl) && dataEl.ValueKind == JsonValueKind.Array)
                    {
                        foreach (var item in dataEl.EnumerateArray())
                        {
                            if (item.TryGetProperty("id", out var idEl) && idEl.ValueKind == JsonValueKind.String)
                            {
                                var id = idEl.GetString();
                                if (!string.IsNullOrEmpty(id)) ids.Add(id);
                            }
                        }
                    }
                }

                return ids;
            }
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

            using (var request = new HttpRequestMessage(HttpMethod.Post, $"{_baseUrl}/chat/completions"))
            {
                request.Content = new StringContent(requestBody, Encoding.UTF8, "application/json");

                using (var response = await _http.SendAsync(
                    request, HttpCompletionOption.ResponseHeadersRead, cancellationToken).ConfigureAwait(false))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        await ThrowForErrorResponseAsync(response, cancellationToken).ConfigureAwait(false);
                        throw new ChacoException("Chaco request failed.", "UNKNOWN"); // unreachable; satisfies flow analysis
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

            using (var request = new HttpRequestMessage(HttpMethod.Post, $"{_baseUrl}/chat/completions"))
            {
                request.Content = new StringContent(requestBody, Encoding.UTF8, "application/json");

                using (var response = await _http.SendAsync(request, cancellationToken).ConfigureAwait(false))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        await ThrowForErrorResponseAsync(response, cancellationToken).ConfigureAwait(false);
                        throw new ChacoException("Chaco request failed.", "UNKNOWN"); // unreachable; satisfies flow analysis
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

        // pull choices[0].delta.content out of a SSE data payload
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
                // Malformed or unexpected chunk shape!!111!! skip 
                return null;
            }
        }

        private static async Task ThrowForErrorResponseAsync(HttpResponseMessage response, CancellationToken cancellationToken)
        {
            var body = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            string message = $"Chaco request failed with status {(int)response.StatusCode}. Body: {body}";
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
            throw new ChacoException(message, code);
        }

        public void Dispose()
        {
            _http.Dispose();
        }
    }
}