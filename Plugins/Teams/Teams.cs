/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

// ============================================================
// Teams plugin — reverse-engineered MSA (login.live.com) auth
//
// Auth flow (from HAR capture, 2026-03-30):
//
//   1. GET  login.live.com/oauth20_authorize.srf
//              → 200 login page; harvest uaid, flowToken (sFT), opid, bk, contextid
//
//   2. POST login.live.com/GetCredentialType.srf
//              → verify account exists, get updated flowToken
//
//   3. POST login.live.com/ppsecure/post.srf  (type=11, password)
//              → if MFA required: response contains arrUserProofs + new PPFT
//              → if no MFA: 302 redirect to redirect_uri#code=...
//
//   4. POST login.live.com/ppsecure/post.srf  (type=19, TOTP OTC)
//              → KMSI page (sPageId=i5245) or direct redirect
//
//   5. POST login.live.com/ppsecure/post.srf  (type=28, KMSI)
//              → 302 redirect to https://teams.live.com/v2#code=M.C545_SN1...
//
//   6. POST login.live.com/oauth20_token.srf
//              → exchange code + code_verifier for access_token (EwAI...)
//                The access_token is an MSA compact token, NOT a JWT.
//
//   7. POST https://teams.live.com/api/auth/v1.0/authz/consumer
//              Authorization: Bearer <access_token>
//              ms-teams-authz-type: ExplicitLogin
//              (empty body)
//              → JSON: { skypeToken: { skypetoken, expiresIn, skypeid, signinname },
//                        regionGtms: { chatServiceAfd, middleTier, ... } }
//
//   8. POST <regionGtms.ams>/v1/skypetokenauth
//              body: skypetoken=<jwt>
//              Authorization: skype_token <jwt>
//              → 204 — registers token with Skype session management
//
// All subsequent API calls use:
//   - chatsvc:  "authentication: skypetoken=<jwt>"
//   - mt/beta:  "x-skypetoken: <jwt>" + "Authorization: Bearer <access_token>"
//
// Saved-credential login re-exchanges the refresh_token for a new access_token,
// then repeats steps 7-8 to get a fresh skypetoken.
//
// Observed client_id:    4b3e8f46-56d3-427f-b1e2-d239b2ea6bca
// Observed redirect_uri: https://teams.live.com/v2
// Observed scope:        openId profile openid offline_access
// ============================================================

using MiddleMan;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;

namespace Teams
{
    // ----------------------------------------------------------------
    // MSA auth session — carries all stateful bits across steps
    // ----------------------------------------------------------------
    internal class MsaSession
    {
        public string Uaid { get; set; }
        public string FlowToken { get; set; } // PPFT — rotates on every POST
        public string Opid { get; set; }
        public string Bk { get; set; }
        public string ContextId { get; set; }

        // PKCE
        public string CodeVerifier { get; set; }
        public string CodeChallenge { get; set; }
        public string State { get; set; }
        public string Nonce { get; set; }

        // Cookie jar shared across all login.live.com steps
        public CookieContainer Cookies { get; } = new CookieContainer();

        // Set after password step when MFA is required
        public string PendingProofId { get; set; }

        // URL for the next POST (MFA or KMSI), resolved from urlPost
        public string NextPostUrl { get; set; }
    }

    // ----------------------------------------------------------------
    // Teams chatsvc / mt API wrapper
    // All calls use skypetoken, not Graph API.
    // ----------------------------------------------------------------
    internal static class TeamsAPI
    {
        // chatServiceAfd base from regionGtms
        internal const string ChatSvcBase = "https://teams.live.com/api/chatsvc/consumer";
        internal const string MtBase = "https://teams.live.com/api/mt";
        internal const string AsmBase = "https://us-api.asm.skype.com";

        // chatsvc uses "authentication: skypetoken=<jwt>" header
        internal static async Task<string> ChatSvcGet(
            string path,
            string skypeToken,
            HttpClient client)
        {
            var req = new HttpRequestMessage(HttpMethod.Get, ChatSvcBase + path);
            req.Headers.Add("authentication", "skypetoken=" + skypeToken);
            req.Headers.Add("behavioroverride", "redirectAs404");
            req.Headers.Add("clientinfo",
                "os=windows; osVer=NT 10.0; proc=x86; lcid=en-us; deviceType=1; " +
                "country=us; clientName=skypeteams; clientVer=1415/26022706352; " +
                "utcOffset=+00:00; timezone=UTC");
            req.Headers.Add("ms-ic3-product", "tfl");
            try
            {
                var resp = await client.SendAsync(req).ConfigureAwait(false);
                return await resp.Content.ReadAsStringAsync().ConfigureAwait(false);
            }
            catch (Exception ex) { return "[ChatSvc/Error] " + ex.Message; }
        }

        internal static async Task<string> ChatSvcPost(
            string path,
            string body,
            string skypeToken,
            HttpClient client)
        {
            var req = new HttpRequestMessage(HttpMethod.Post, ChatSvcBase + path)
            {
                Content = new StringContent(body, Encoding.UTF8, "application/json")
            };
            req.Headers.Add("authentication", "skypetoken=" + skypeToken);
            req.Headers.Add("behavioroverride", "redirectAs404");
            req.Headers.Add("ms-ic3-product", "tfl");
            try
            {
                var resp = await client.SendAsync(req).ConfigureAwait(false);
                return await resp.Content.ReadAsStringAsync().ConfigureAwait(false);
            }
            catch (Exception ex) { return "[ChatSvc/Error] " + ex.Message; }
        }

        // mt/beta uses both x-skypetoken and Authorization: Bearer <access_token>
        internal static async Task<string> MtGet(
            string path,
            string skypeToken,
            string accessToken,
            HttpClient client)
        {
            var req = new HttpRequestMessage(HttpMethod.Get, MtBase + path);
            req.Headers.Add("x-skypetoken", skypeToken);
            if (!string.IsNullOrWhiteSpace(accessToken))
                req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
            try
            {
                var resp = await client.SendAsync(req).ConfigureAwait(false);
                return await resp.Content.ReadAsStringAsync().ConfigureAwait(false);
            }
            catch (Exception ex) { return "[Mt/Error] " + ex.Message; }
        }

        internal static async Task<string> MtPost(
            string path,
            string jsonBody,
            string skypeToken,
            string accessToken,
            HttpClient client)
        {
            var req = new HttpRequestMessage(HttpMethod.Post, MtBase + path)
            {
                Content = new StringContent(jsonBody, Encoding.UTF8, "application/json")
            };
            req.Headers.Add("x-skypetoken", skypeToken);
            if (!string.IsNullOrWhiteSpace(accessToken))
                req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
            try
            {
                var resp = await client.SendAsync(req).ConfigureAwait(false);
                return await resp.Content.ReadAsStringAsync().ConfigureAwait(false);
            }
            catch (Exception ex) { return "[Mt/Error] " + ex.Message; }
        }
    }

    // ----------------------------------------------------------------
    // Message parser — chatsvc JSON shape
    // ----------------------------------------------------------------
    internal static class TeamsParser
    {
        // Extract sender MRI from a full contact URL like
        // "https://teams.live.com/api/chatsvc/consumer/v1/users/ME/contacts/8:live:.cid.abc"
        private static string MriFromUrl(string url)
        {
            if (string.IsNullOrEmpty(url)) return "unknown";
            int last = url.LastIndexOf('/');
            return last >= 0 ? url.Substring(last + 1) : url;
        }

        internal static Message ParseMessage(
            JsonObject msg,
            Dictionary<string, User> userCache)
        {
            if (msg == null) return null;

            string id = msg["id"]?.GetValue<string>() ?? Guid.NewGuid().ToString();

            string msgType = msg["messagetype"]?.GetValue<string>()
                          ?? msg["messageType"]?.GetValue<string>()
                          ?? "RichText";

            // Skip non-chat message types (calls, membership events, etc.)
            if (msgType.StartsWith("Event/", StringComparison.OrdinalIgnoreCase) ||
                msgType.StartsWith("ThreadActivity/", StringComparison.OrdinalIgnoreCase))
                return null;

            // Content: strip HTML tags
            string rawBody = msg["content"]?.GetValue<string>() ?? string.Empty;
            string body = Regex.Replace(rawBody, "<[^>]+>", "").Trim();
            if (string.IsNullOrWhiteSpace(body)) return null;

            // Timestamp: chatsvc uses "originalarrivaltime" or "composetime"
            string timeRaw = msg["originalarrivaltime"]?.GetValue<string>()
                          ?? msg["composetime"]?.GetValue<string>();
            DateTime time = DateTime.TryParse(timeRaw, null,
                System.Globalization.DateTimeStyles.RoundtripKind, out DateTime t)
                ? t.ToLocalTime()
                : DateTime.Now;

            // Sender: chatsvc gives a URL in "from", display name in "imdisplayname"
            string fromUrl = msg["from"]?.GetValue<string>() ?? "";
            string senderId = MriFromUrl(fromUrl);
            string senderName = msg["imdisplayname"]?.GetValue<string>()
                              ?? senderId;

            User sender;
            if (!userCache.TryGetValue(senderId, out sender))
            {
                sender = new User(senderName, senderId, senderId);
                userCache[senderId] = sender;
            }

            return new Message(id, sender, time, body, null);
        }
    }

    // ----------------------------------------------------------------
    // Core plugin
    // ----------------------------------------------------------------
    public class Core : ICore
    {
        // ---- ICore metadata ----
        public string Name => "Microsoft Teams";
        public string InternalName => "teams";
        public bool SupportsServers => false; // consumer Teams has no team/channel concept via this API

        public AuthTypeInfo[] AuthenticationTypes => new[]
        {
            new AuthTypeInfo(AuthenticationMethod.Password, "Microsoft account email"),
        };

        // ---- ICore events ----
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;

        // ---- Observable collections ----
        public ObservableCollection<DirectMessage> ContactsList { get; } = new ObservableCollection<DirectMessage>();
        public ObservableCollection<Conversation> RecentsList { get; } = new ObservableCollection<Conversation>();
        public ObservableCollection<Server> ServerList { get; } = new ObservableCollection<Server>();
        public ObservableCollection<User> TypingUsersList { get; } = new ObservableCollection<User>();

        public ClickableConfiguration[] ClickableConfigurations => new[]
        {
            new ClickableConfiguration(ClickableItemType.User, "@", " ")
        };

        public User MyInformation { get; private set; }

        // ---- Internal state ----
        private string _accessToken;   // MSA compact token (EwAI...) — short-lived
        private string _refreshToken;  // for silent re-auth
        private string _skypeToken;    // JWT from /authz/consumer — used for all API calls
        private string _skypeId;       // e.g. "live:.cid.c1a53d3ceb228ad7"
        private string _asmBase;       // from regionGtms.ams, default AsmBase

        private string _activeConvId;
        private SynchronizationContext _uiContext;
        private MsaSession _session;
        private HttpClient _httpClient; // shared for all Teams API calls after login

        private readonly Dictionary<string, User> _userCache = new Dictionary<string, User>();

        // Polling
        private CancellationTokenSource _pollCts;
        private const int POLL_INTERVAL_MS = 10_000;

        // ================================================================
        // MSA app registration — from HAR capture
        // ================================================================
        private const string CLIENT_ID = "4b3e8f46-56d3-427f-b1e2-d239b2ea6bca";
        private const string REDIRECT_URI = "https://teams.live.com/v2";
        private const string SCOPE = "openId profile openid offline_access";
        private const string MSA_HOST = "https://login.live.com";

        // Firefox UA as observed in the HAR
        private const string USER_AGENT =
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0";

        // ================================================================
        // Debug helpers
        // ================================================================
        private static void DbgAuth(string step, string msg) =>
            Debug.WriteLine(string.Format("[TEAMS-AUTH][{0}] {1}", step, msg));

        private static void DbgApi(string msg) =>
            Debug.WriteLine("[TEAMS-API] " + msg);

        private static void DbgHtml(string step, string html, int maxChars = 600)
        {
            if (html == null) { DbgAuth(step, "HTML: (null)"); return; }
            string excerpt = html.Length <= maxChars
                ? html
                : html.Substring(0, maxChars) + "...[+" + (html.Length - maxChars) + " chars]";
            DbgAuth(step, "HTML excerpt:\n" + excerpt);

            string[] signals =
            {
                "sFT", "sPageId", "urlPost", "arrUserProofs", "i5245", "kmsi",
                "reply_params", "savestate", "sErrorCode", "50126", "1002", "code="
            };
            var found = signals.Where(s => html.Contains(s)).ToList();
            DbgAuth(step, "Signals: " + (found.Count > 0 ? string.Join(", ", found) : "(none)"));
        }

        // ================================================================
        // STEP 1 + 2 — Authenticate (password)
        // ================================================================
        public async Task<LoginResult> Authenticate(
            AuthenticationMethod authType,
            string username,
            string password)
        {
            if (authType != AuthenticationMethod.Password)
                return LoginResult.UnsupportedAuthType;

            DbgAuth("S1", "=== BEGIN MSA AUTH FLOW ===");
            DbgAuth("S1", "Username: " + username);
            DbgAuth("S1", "CLIENT_ID: " + CLIENT_ID);
            DbgAuth("S1", "REDIRECT_URI: " + REDIRECT_URI);

            _session = new MsaSession();
            _httpClient = BuildHttpClient(_session.Cookies);

            // PKCE
            _session.CodeVerifier = GenerateCodeVerifier();
            _session.CodeChallenge = GenerateCodeChallenge(_session.CodeVerifier);
            _session.Nonce = Guid.NewGuid().ToString("N");
            _session.State = ToBase64Url(Guid.NewGuid().ToByteArray());

            DbgAuth("S1", "CodeVerifier[:12]: " + _session.CodeVerifier.Substring(0, 12) + "...");

            // --- Step 1: GET oauth20_authorize.srf ---
            string authorizeUrl =
                MSA_HOST + "/oauth20_authorize.srf" +
                "?client_id=" + CLIENT_ID +
                "&scope=" + Uri.EscapeDataString(SCOPE) +
                "&redirect_uri=" + Uri.EscapeDataString(REDIRECT_URI) +
                "&response_type=code" +
                "&response_mode=fragment" +
                "&nonce=" + _session.Nonce +
                "&code_challenge=" + _session.CodeChallenge +
                "&code_challenge_method=S256" +
                "&state=" + _session.State +
                "&msproxy=1&issuer=mso&tenant=consumers&ui_locales=en-US&client_info=1";

            DbgAuth("S1", "GET " + authorizeUrl);
            string authPage = await GetPage(authorizeUrl, "https://teams.live.com/").ConfigureAwait(false);

            if (authPage == null)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Could not reach Microsoft login servers. Check your internet connection."));
                return LoginResult.Failure;
            }

            DbgAuth("S1", "authPage received (" + authPage.Length + " chars)");
            DbgHtml("S1", authPage);

            ParseServerData(authPage, _session);
            DbgAuth("S1", "FlowToken : " + (_session.FlowToken ?? "(null)"));
            DbgAuth("S1", "Uaid      : " + (_session.Uaid ?? "(null)"));
            DbgAuth("S1", "Opid      : " + (_session.Opid ?? "(null)"));
            DbgAuth("S1", "Bk        : " + (_session.Bk ?? "(null)"));
            DbgAuth("S1", "ContextId : " + (_session.ContextId ?? "(null)"));

            if (string.IsNullOrWhiteSpace(_session.FlowToken))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Could not parse the login page (flowToken missing).\n" +
                    "Microsoft may have updated their login UI."));
                return LoginResult.Failure;
            }

            // --- Step 2: POST GetCredentialType ---
            string credTypeUrl =
                MSA_HOST + "/GetCredentialType.srf" +
                "?opid=" + (_session.Opid ?? "") +
                "&id=293577" +
                "&client_id=" + CLIENT_ID +
                "&mkt=EN-US&lc=1033" +
                "&uaid=" + (_session.Uaid ?? "");

            DbgAuth("S2", "POST " + credTypeUrl);

            var credTypeBody = new
            {
                checkPhones = false,
                country = "",
                federationFlags = 3,
                flowToken = _session.FlowToken,
                forceotclogin = false,
                isCookieBannerShown = false,
                isExternalFederationDisallowed = false,
                isFederationDisabled = false,
                isFidoSupported = true,
                isOtherIdpSupported = false,
                isReactLoginRequest = true,
                isRemoteConnectSupported = false,
                isRemoteNGCSupported = true,
                isSignup = false,
                originalRequest = "",
                otclogindisallowed = false,
                uaid = _session.Uaid,
                username = username
            };

            string credJson = await PostJson(credTypeUrl, credTypeBody, authorizeUrl).ConfigureAwait(false);
            if (credJson == null)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Failed to reach the Microsoft credential check endpoint."));
                return LoginResult.Failure;
            }

            DbgAuth("S2", "GetCredentialType response: " + credJson);

            var credNode = JsonNode.Parse(credJson)?.AsObject();
            int ifExists = credNode?["IfExistsResult"]?.GetValue<int>() ?? -1;
            DbgAuth("S2", "IfExistsResult=" + ifExists + " (0=exists)");

            if (ifExists != 0)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Account not found: " + username + "\nCheck the email address and try again."));
                return LoginResult.Failure;
            }

            // flowToken rotates
            string updatedToken = credNode?["FlowToken"]?.GetValue<string>();
            if (!string.IsNullOrWhiteSpace(updatedToken))
            {
                _session.FlowToken = updatedToken;
                DbgAuth("S2", "FlowToken rotated: " + _session.FlowToken.Substring(0, Math.Min(20, _session.FlowToken.Length)) + "...");
            }

            return await SubmitPasswordAsync(username, password, authorizeUrl).ConfigureAwait(false);
        }

        // ================================================================
        // STEP 3 — Password POST (type=11)
        // ================================================================
        private async Task<LoginResult> SubmitPasswordAsync(
            string username, string password, string referer)
        {
            string postUrl =
                MSA_HOST + "/ppsecure/post.srf" +
                "?client_id=" + CLIENT_ID +
                "&contextid=" + (_session.ContextId ?? "") +
                "&opid=" + (_session.Opid ?? "") +
                "&bk=" + (_session.Bk ?? "") +
                "&uaid=" + (_session.Uaid ?? "") +
                "&pid=15216";

            DbgAuth("S3", "POST (password, type=11) " + postUrl);

            var form = new Dictionary<string, string>
            {
                ["ps"] = "2",
                ["PPFT"] = _session.FlowToken,
                ["PPSX"] = "Passp",
                ["NewUser"] = "1",
                ["fspost"] = "0",
                ["i21"] = "0",
                ["CookieDisclosure"] = "0",
                ["IsFidoSupported"] = "1",
                ["isSignupPost"] = "0",
                ["i13"] = "0",
                ["login"] = username,
                ["loginfmt"] = username,
                ["type"] = "11",
                ["LoginOptions"] = "3",
                ["passwd"] = password,
            };

            var (html, finalUri) = await PostForm(postUrl, form, referer).ConfigureAwait(false);
            DbgAuth("S3", "Final URI: " + (finalUri?.AbsoluteUri ?? "(null)"));
            DbgHtml("S3", html);

            if (html == null)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "No response from Microsoft during password submission."));
                return LoginResult.Failure;
            }

            if (IsRedirectToApp(finalUri))
            {
                DbgAuth("S3", "Direct redirect to app — no MFA");
                return await ExchangeCodeFromUri(finalUri).ConfigureAwait(false);
            }

            if (html.Contains("50126") || html.Contains("sErrorCode"))
            {
                DbgAuth("S3", "Wrong password (50126/sErrorCode detected)");
                OnError?.Invoke(this, new PluginMessageEventArgs("Incorrect password. Please try again."));
                return LoginResult.Failure;
            }

            if (html.Contains("arrUserProofs"))
            {
                DbgAuth("S3", "MFA required — arrUserProofs found");
                ParseServerData(html, _session);
                DbgAuth("S3", "FlowToken after MFA page: " + (_session.FlowToken?.Substring(0, Math.Min(20, _session.FlowToken?.Length ?? 0)) ?? "(null)") + "...");

                // Prefer TOTP (type=10), fall back to email/SMS (type=1x)
                Match proofMatch = Regex.Match(html,
                    @"""type""\s*:\s*10.*?""data""\s*:\s*""([^""]+)""", RegexOptions.Singleline);
                if (!proofMatch.Success)
                    proofMatch = Regex.Match(html,
                        @"""type""\s*:\s*1[^0].*?""data""\s*:\s*""([^""]+)""", RegexOptions.Singleline);

                _session.PendingProofId = proofMatch.Success ? proofMatch.Groups[1].Value : "";
                DbgAuth("S3", "PendingProofId: " + (_session.PendingProofId.Length > 0 ? _session.PendingProofId : "(empty)"));

                // Resolve next POST URL from urlPost in ServerData
                _session.NextPostUrl = ResolveUrlPost(html, postUrl);
                DbgAuth("S3", "NextPostUrl: " + _session.NextPostUrl);

                return LoginResult.TwoFARequired;
            }

            DbgAuth("S3", "ERROR: unexpected response — no redirect, no MFA, no wrong-pw signal");
            OnError?.Invoke(this, new PluginMessageEventArgs(
                "Sign-in failed: unexpected response from Microsoft.\n" +
                "Final URL: " + (finalUri?.AbsoluteUri ?? "(null)")));
            return LoginResult.Failure;
        }

        // ================================================================
        // STEP 4 — TOTP POST (type=19)
        // ================================================================
        public async Task<LoginResult> AuthenticateTwoFA(string code)
        {
            DbgAuth("S4", "=== TOTP submission (type=19) ===");
            DbgAuth("S4", "OTC: " + code);

            if (_session == null)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "No active login session. Please restart the sign-in process."));
                return LoginResult.Failure;
            }

            string postUrl = _session.NextPostUrl ?? (MSA_HOST + "/ppsecure/post.srf");
            DbgAuth("S4", "POST URL: " + postUrl);
            DbgAuth("S4", "SentProofIDE: " + (_session.PendingProofId ?? "(null)"));

            var form = new Dictionary<string, string>
            {
                ["otc"] = code,
                ["AddTD"] = "true",
                ["SentProofIDE"] = _session.PendingProofId ?? "",
                ["GeneralVerify"] = "false",
                ["PPFT"] = _session.FlowToken,
                ["hideSmsInMfaProofs"] = "false",
                ["type"] = "19",
                ["login"] = "",
                ["infoPageShown"] = "0",
                ["canary"] = "",
                ["sacxt"] = "1",
                ["hpgrequestid"] = "",
            };

            var (html, finalUri) = await PostForm(postUrl, form, MSA_HOST + "/").ConfigureAwait(false);
            DbgAuth("S4", "Final URI: " + (finalUri?.AbsoluteUri ?? "(null)"));
            DbgHtml("S4", html);

            if (html == null)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "No response from Microsoft during MFA verification."));
                return LoginResult.Failure;
            }

            if (IsRedirectToApp(finalUri))
            {
                DbgAuth("S4", "Direct redirect after TOTP — skipping KMSI");
                return await ExchangeCodeFromUri(finalUri).ConfigureAwait(false);
            }

            if (html.Contains("1002") || html.Contains("incorrect") || html.Contains("sErrorCode"))
            {
                DbgAuth("S4", "Bad OTC — 1002/incorrect/sErrorCode");
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Incorrect verification code. Please try again."));
                return LoginResult.Failure;
            }

            if (html.Contains("i5245") || html.Contains("kmsi") || html.Contains("urlPost"))
            {
                DbgAuth("S4", "KMSI page detected");
                ParseServerData(html, _session);
                DbgAuth("S4", "FlowToken after KMSI page: " + (_session.FlowToken?.Substring(0, Math.Min(20, _session.FlowToken?.Length ?? 0)) ?? "(null)") + "...");
                string kmsiUrl = ResolveUrlPost(html, postUrl);
                DbgAuth("S4", "KMSI URL: " + kmsiUrl);
                return await SubmitKmsiAsync(kmsiUrl).ConfigureAwait(false);
            }

            DbgAuth("S4", "ERROR: unexpected response after TOTP");
            OnError?.Invoke(this, new PluginMessageEventArgs(
                "MFA step returned an unexpected response.\nFinal URL: " +
                (finalUri?.AbsoluteUri ?? "(null)")));
            return LoginResult.Failure;
        }

        // ================================================================
        // STEP 5 — KMSI POST (type=28)
        // Response is a 302 redirect to https://teams.live.com/v2#code=M.C545_SN1...
        // ================================================================
        private async Task<LoginResult> SubmitKmsiAsync(string kmsiUrl)
        {
            DbgAuth("S5", "=== KMSI submission (type=28) ===");
            DbgAuth("S5", "POST URL: " + kmsiUrl);

            var form = new Dictionary<string, string>
            {
                ["LoginOptions"] = "1",
                ["PPFT"] = _session.FlowToken,
                ["type"] = "28",
                ["canary"] = "",
                ["hpgrequestid"] = "",
                ["ctx"] = "",
            };

            var (html, finalUri) = await PostForm(kmsiUrl, form, MSA_HOST + "/").ConfigureAwait(false);
            DbgAuth("S5", "Final URI: " + (finalUri?.AbsoluteUri ?? "(null)"));
            DbgHtml("S5", html);

            if (html == null)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("No response during KMSI step."));
                return LoginResult.Failure;
            }

            // Primary: redirect already has the code in the fragment
            if (IsRedirectToApp(finalUri))
            {
                DbgAuth("S5", "Direct redirect with code in URI");
                return await ExchangeCodeFromUri(finalUri).ConfigureAwait(false);
            }

            // Expected: self-submitting form with reply_params containing code=...
            Match rpMatch = Regex.Match(html,
                @"name=""reply_params""\s[^>]*value=""([^""]+)""",
                RegexOptions.IgnoreCase);

            if (rpMatch.Success)
            {
                DbgAuth("S5", "reply_params found");
                string encoded = rpMatch.Groups[1].Value
                    .Replace("&amp;", "&").Replace("&#43;", "+").Replace("&quot;", "\"");
                string decoded = Uri.UnescapeDataString(encoded);
                DbgAuth("S5", "reply_params decoded[:300]: " + decoded.Substring(0, Math.Min(300, decoded.Length)));
                if (decoded.Contains("code="))
                    return await ExchangeCodeFromParams(decoded).ConfigureAwait(false);
                DbgAuth("S5", "WARNING: reply_params decoded has no code=");
            }

            // Fallback: POST the savestate form ourselves
            Match actionMatch = Regex.Match(html,
                @"<form[^>]+action=""([^""]+)""", RegexOptions.IgnoreCase);

            if (actionMatch.Success)
            {
                string actionUrl = actionMatch.Groups[1].Value;
                DbgAuth("S5", "Form action found: " + actionUrl);

                if (actionUrl.IndexOf("savestate", StringComparison.OrdinalIgnoreCase) >= 0 ||
                    actionUrl.IndexOf("microsoftonline.com", StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    var hiddenFields = new Dictionary<string, string>();
                    foreach (Match inp in Regex.Matches(html,
                        @"<input[^>]+type=""hidden""[^>]*name=""([^""]+)""[^>]*value=""([^""]*)""",
                        RegexOptions.IgnoreCase))
                    {
                        hiddenFields[inp.Groups[1].Value] = inp.Groups[2].Value;
                    }
                    DbgAuth("S5", "Hidden fields: " + string.Join(", ", hiddenFields.Keys));

                    var (html2, finalUri2) = await PostForm(actionUrl, hiddenFields, MSA_HOST + "/")
                        .ConfigureAwait(false);
                    DbgAuth("S5", "savestate POST finalUri: " + (finalUri2?.AbsoluteUri ?? "(null)"));

                    if (IsRedirectToApp(finalUri2))
                    {
                        DbgAuth("S5", "Redirect to app after savestate POST");
                        return await ExchangeCodeFromUri(finalUri2).ConfigureAwait(false);
                    }

                    if (html2 != null)
                    {
                        Match rp2 = Regex.Match(html2,
                            @"name=""reply_params""\s[^>]*value=""([^""]+)""", RegexOptions.IgnoreCase);
                        if (rp2.Success)
                        {
                            string enc2 = rp2.Groups[1].Value
                                .Replace("&amp;", "&").Replace("&#43;", "+").Replace("&quot;", "\"");
                            string dec2 = Uri.UnescapeDataString(enc2);
                            DbgAuth("S5", "savestate reply_params[:300]: " + dec2.Substring(0, Math.Min(300, dec2.Length)));
                            return await ExchangeCodeFromParams(dec2).ConfigureAwait(false);
                        }
                    }
                }
            }

            DbgAuth("S5", "ERROR: exhausted all paths — no auth code obtained");
            OnError?.Invoke(this, new PluginMessageEventArgs(
                "KMSI step completed but no auth code was returned.\n" +
                "Final URL: " + (finalUri?.AbsoluteUri ?? "(null)")));
            return LoginResult.Failure;
        }

        // ================================================================
        // STEP 6 — Exchange auth code for access_token + refresh_token
        //
        // POST login.live.com/oauth20_token.srf
        // grant_type=authorization_code, code=M.C545..., code_verifier=...
        // Returns: access_token (EwAI...), refresh_token, id_token, expires_in
        // ================================================================
        private Task<LoginResult> ExchangeCodeFromUri(Uri redirectUri)
        {
            DbgAuth("S6", "ExchangeCodeFromUri: " + (redirectUri?.AbsoluteUri ?? "(null)"));
            string rawParams = redirectUri.Fragment.TrimStart('#');
            if (rawParams.Length == 0) rawParams = redirectUri.Query.TrimStart('?');
            DbgAuth("S6", "rawParams[:200]: " + rawParams.Substring(0, Math.Min(200, rawParams.Length)));
            return ExchangeCodeFromParams(rawParams);
        }

        private async Task<LoginResult> ExchangeCodeFromParams(string rawParams)
        {
            DbgAuth("S6", "ExchangeCodeFromParams[:300]: " + rawParams.Substring(0, Math.Min(300, rawParams.Length)));

            var qs = ParseQueryString(rawParams);
            DbgAuth("S6", "Keys: " + string.Join(", ", qs.Keys));

            string code;
            if (!qs.TryGetValue("code", out code) || string.IsNullOrWhiteSpace(code))
            {
                DbgAuth("S6", "ERROR: no 'code' key in QS");
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "No authorization code found in the Microsoft redirect."));
                return LoginResult.Failure;
            }

            DbgAuth("S6", "Auth code[:40]: " + code.Substring(0, Math.Min(40, code.Length)) + "...");
            DbgAuth("S6", "code_verifier[:12]: " + _session.CodeVerifier.Substring(0, 12) + "...");

            // Use a dedicated HttpClient WITHOUT cookie handling for the token exchange,
            // because login.live.com/oauth20_token.srf doesn't need the login cookie jar.
            using (var tokenClient = new HttpClient())
            {
                tokenClient.DefaultRequestHeaders.UserAgent.ParseAdd(USER_AGENT);

                var tokenParams = new Dictionary<string, string>
                {
                    ["grant_type"] = "authorization_code",
                    ["client_id"] = CLIENT_ID,
                    ["code"] = code,
                    ["redirect_uri"] = REDIRECT_URI,
                    ["code_verifier"] = _session.CodeVerifier,
                    ["scope"] = SCOPE,
                };

                string tokenEndpoint = MSA_HOST + "/oauth20_token.srf";
                DbgAuth("S6", "POST " + tokenEndpoint);

                using (var content = new FormUrlEncodedContent(tokenParams))
                {
                    HttpResponseMessage resp;
                    try { resp = await tokenClient.PostAsync(tokenEndpoint, content).ConfigureAwait(false); }
                    catch (Exception ex)
                    {
                        DbgAuth("S6", "HTTP exception: " + ex.Message);
                        OnError?.Invoke(this, new PluginMessageEventArgs(
                            "Token exchange failed: " + ex.Message));
                        return LoginResult.Failure;
                    }

                    string body = await resp.Content.ReadAsStringAsync().ConfigureAwait(false);
                    DbgAuth("S6", "HTTP " + (int)resp.StatusCode + " body[:500]: " + body.Substring(0, Math.Min(500, body.Length)));

                    if (!resp.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs(
                            "Token exchange failed (HTTP " + (int)resp.StatusCode + ").\n\n" + body));
                        return LoginResult.Failure;
                    }

                    return await FinalizeFromTokenResponse(body).ConfigureAwait(false);
                }
            }
        }

        // ================================================================
        // Saved-credential login (refresh_token)
        // ================================================================
        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            DbgAuth("refresh", "=== SAVED CREDENTIAL LOGIN (refresh_token) ===");
            _refreshToken = credential.PasswordOrToken;

            if (string.IsNullOrWhiteSpace(_refreshToken))
            {
                DbgAuth("refresh", "ERROR: refresh_token is null/empty");
                return LoginResult.Failure;
            }

            DbgAuth("refresh", "refresh_token[:40]: " + _refreshToken.Substring(0, Math.Min(40, _refreshToken.Length)) + "...");

            if (_httpClient == null)
                _httpClient = BuildHttpClient(new CookieContainer());

            using (var tokenClient = new HttpClient())
            {
                tokenClient.DefaultRequestHeaders.UserAgent.ParseAdd(USER_AGENT);

                var tokenParams = new Dictionary<string, string>
                {
                    ["grant_type"] = "refresh_token",
                    ["client_id"] = CLIENT_ID,
                    ["refresh_token"] = _refreshToken,
                    ["scope"] = SCOPE,
                };

                string endpoint = MSA_HOST + "/oauth20_token.srf";
                DbgAuth("refresh", "POST " + endpoint);

                using (var content = new FormUrlEncodedContent(tokenParams))
                {
                    HttpResponseMessage resp;
                    try { resp = await tokenClient.PostAsync(endpoint, content).ConfigureAwait(false); }
                    catch (Exception ex)
                    {
                        DbgAuth("refresh", "HTTP exception: " + ex.Message);
                        OnError?.Invoke(this, new PluginMessageEventArgs(
                            "Token refresh failed: " + ex.Message));
                        return LoginResult.Failure;
                    }

                    string body = await resp.Content.ReadAsStringAsync().ConfigureAwait(false);
                    DbgAuth("refresh", "HTTP " + (int)resp.StatusCode + " body[:500]: " + body.Substring(0, Math.Min(500, body.Length)));

                    if (!resp.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs(
                            "Saved session has expired. Please sign in again."));
                        return LoginResult.Failure;
                    }

                    return await FinalizeFromTokenResponse(body).ConfigureAwait(false);
                }
            }
        }

        // ================================================================
        // Shared token-response handler
        // STEP 7 — obtain skypetoken from /authz/consumer
        // STEP 8 — register skypetoken with ASM
        // ================================================================
        private async Task<LoginResult> FinalizeFromTokenResponse(string tokenBody)
        {
            DbgAuth("S6-finalize", "Token response[:500]: " + tokenBody.Substring(0, Math.Min(500, tokenBody.Length)));

            var tokenJson = JsonNode.Parse(tokenBody)?.AsObject();
            _accessToken = tokenJson?["access_token"]?.GetValue<string>();
            string newRef = tokenJson?["refresh_token"]?.GetValue<string>();

            DbgAuth("S6-finalize", "access_token present:  " + !string.IsNullOrWhiteSpace(_accessToken));
            DbgAuth("S6-finalize", "refresh_token present: " + !string.IsNullOrWhiteSpace(newRef));

            if (!string.IsNullOrWhiteSpace(_accessToken))
                DbgAuth("S6-finalize", "access_token[:40]: " + _accessToken.Substring(0, Math.Min(40, _accessToken.Length)) + "...");

            if (!string.IsNullOrWhiteSpace(newRef))
            {
                _refreshToken = newRef;
                DbgAuth("S6-finalize", "refresh_token stored[:40]: " + _refreshToken.Substring(0, Math.Min(40, _refreshToken.Length)) + "...");
            }

            if (string.IsNullOrWhiteSpace(_accessToken))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Token response did not contain an access_token.\n\n" + tokenBody));
                return LoginResult.Failure;
            }

            // --- Step 7: POST /authz/consumer to get skypetoken ---
            DbgAuth("S7", "POST https://teams.live.com/api/auth/v1.0/authz/consumer");

            // Re-use _httpClient (plain HttpClient, no cookies needed here)
            if (_httpClient == null)
                _httpClient = BuildHttpClient(new CookieContainer());

            var authzReq = new HttpRequestMessage(
                HttpMethod.Post,
                "https://teams.live.com/api/auth/v1.0/authz/consumer");
            authzReq.Headers.Authorization = new AuthenticationHeaderValue("Bearer", _accessToken);
            authzReq.Headers.Add("ms-teams-authz-type", "ExplicitLogin");
            authzReq.Headers.Add("x-ms-client-type", "web");
            authzReq.Headers.Add("x-ms-client-version", "1415/26022706352");
            authzReq.Headers.Add("clientrequestid", Guid.NewGuid().ToString());
            authzReq.Headers.Add("claimschallengecapable", "true");
            authzReq.Headers.Add("Origin", "https://teams.live.com");
            authzReq.Content = new StringContent("", Encoding.UTF8, "application/json");

            string authzBody;
            try
            {
                var authzResp = await _httpClient.SendAsync(authzReq).ConfigureAwait(false);
                authzBody = await authzResp.Content.ReadAsStringAsync().ConfigureAwait(false);
                DbgAuth("S7", "HTTP " + (int)authzResp.StatusCode + " body[:500]: " + authzBody.Substring(0, Math.Min(500, authzBody.Length)));

                if (!authzResp.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs(
                        "/authz/consumer failed (HTTP " + (int)authzResp.StatusCode + ").\n\n" + authzBody));
                    return LoginResult.Failure;
                }
            }
            catch (Exception ex)
            {
                DbgAuth("S7", "Exception: " + ex.Message);
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "Failed to obtain skypetoken: " + ex.Message));
                return LoginResult.Failure;
            }

            var authzJson = JsonNode.Parse(authzBody)?.AsObject();
            var skypeTokenNode = authzJson?["skypeToken"]?.AsObject();

            _skypeToken = skypeTokenNode?["skypetoken"]?.GetValue<string>();
            _skypeId = skypeTokenNode?["skypeid"]?.GetValue<string>();
            string signinName = skypeTokenNode?["signinname"]?.GetValue<string>();

            DbgAuth("S7", "skypetoken present: " + !string.IsNullOrWhiteSpace(_skypeToken));
            DbgAuth("S7", "skypeid: " + (_skypeId ?? "(null)"));
            DbgAuth("S7", "signinname: " + (signinName ?? "(null)"));

            if (string.IsNullOrWhiteSpace(_skypeToken))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    "/authz/consumer did not return a skypetoken.\n\n" + authzBody));
                return LoginResult.Failure;
            }

            // Extract useful regionGtms endpoints
            var regionGtms = authzJson?["regionGtms"]?.AsObject();
            if (regionGtms != null)
            {
                _asmBase = regionGtms["ams"]?.GetValue<string>() ?? TeamsAPI.AsmBase;
                DbgAuth("S7", "regionGtms.ams = " + _asmBase);
                DbgAuth("S7", "regionGtms.chatServiceAfd = " + (regionGtms["chatServiceAfd"]?.GetValue<string>() ?? "(null)"));
                DbgAuth("S7", "regionGtms.middleTier = " + (regionGtms["middleTier"]?.GetValue<string>() ?? "(null)"));
            }
            else
            {
                _asmBase = TeamsAPI.AsmBase;
                DbgAuth("S7", "regionGtms missing — using defaults");
            }

            // --- Step 8: POST <ams>/v1/skypetokenauth to register skypetoken ---
            DbgAuth("S8", "POST " + _asmBase + "/v1/skypetokenauth");

            var asmReq = new HttpRequestMessage(
                HttpMethod.Post,
                _asmBase + "/v1/skypetokenauth");
            asmReq.Headers.Authorization = new AuthenticationHeaderValue("skype_token", _skypeToken);
            asmReq.Headers.Add("Origin", "https://teams.live.com");
            asmReq.Content = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("skypetoken", _skypeToken)
            });

            try
            {
                var asmResp = await _httpClient.SendAsync(asmReq).ConfigureAwait(false);
                DbgAuth("S8", "ASM skypetokenauth HTTP " + (int)asmResp.StatusCode +
                    " (204 = success)");
            }
            catch (Exception ex)
            {
                // Non-fatal — ASM registration failure shouldn't block login
                DbgAuth("S8", "ASM registration exception (non-fatal): " + ex.Message);
            }

            // Build MyInformation from skypeid / signinname
            string displayName = signinName ?? _skypeId ?? "Unknown";
            string userId = _skypeId ?? signinName ?? "me";

            var user = new User(displayName, signinName ?? userId, userId, null, UserConnectionStatus.Online);
            _userCache[userId] = user;
            MyInformation = user;

            DbgAuth("S8", "=== AUTH FLOW COMPLETE — LoginResult.Success ===");
            DbgAuth("S8", "Logged in as: " + displayName + " / " + userId);

            return LoginResult.Success;
        }

        // ================================================================
        // ICore stubs
        // ================================================================
        public Task<string> GetQRCode() => Task.FromResult<string>(null);
        public Task<SavedCredential> StoreCredential() =>
            Task.FromResult(new SavedCredential(
                MyInformation, _refreshToken, AuthenticationMethod.Password, InternalName));

        // ================================================================
        // Sidebar population
        // ================================================================
        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;
            _pollCts = new CancellationTokenSource();
            _ = PollForMessagesAsync(_pollCts.Token);
            return true;
        }

        public async Task<bool> PopulateContactsList()
        {
            if (string.IsNullOrWhiteSpace(_skypeToken)) return false;

            try
            {
                // GET /api/mt/beta/contacts/roaming/folders — returns contact list
                string json = await TeamsAPI.MtGet(
                    "/beta/contacts/roaming/folders", _skypeToken, _accessToken, _httpClient)
                    .ConfigureAwait(false);

                DbgApi("contacts/roaming/folders[:300]: " + json.Substring(0, Math.Min(300, json.Length)));

                if (json.StartsWith("[Mt/Error]", StringComparison.Ordinal)) return false;

                var root = JsonNode.Parse(json)?.AsObject();
                var contacts = root?["contacts"] as JsonArray;
                if (contacts == null) return true;

                foreach (var c in contacts.OfType<JsonObject>())
                {
                    string mri = c["mri"]?.GetValue<string>() ?? Guid.NewGuid().ToString();
                    string name = c["displayName"]?.GetValue<string>() ?? mri;

                    var u = GetOrCreateUser(mri, name, null);
                    var dm = new DirectMessage(u, 0, mri);
                    _uiContext?.Post(_ => ContactsList.Add(dm), null);
                }
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Failed to populate contacts: " + ex.Message));
                return false;
            }
        }

        public async Task<bool> PopulateRecentsList()
        {
            if (string.IsNullOrWhiteSpace(_skypeToken)) return false;

            try
            {
                // GET /api/chatsvc/consumer/v1/users/ME/conversations
                // Returns the list of recent conversations
                string json = await TeamsAPI.ChatSvcGet(
                    "/v1/users/ME/conversations?view=msnp24Equivalent&pageSize=50",
                    _skypeToken, _httpClient)
                    .ConfigureAwait(false);

                DbgApi("ME/conversations[:400]: " + json.Substring(0, Math.Min(400, json.Length)));

                if (json.StartsWith("[ChatSvc/Error]", StringComparison.Ordinal)) return false;

                var root = JsonNode.Parse(json)?.AsObject();
                var conversations = root?["conversations"] as JsonArray;
                if (conversations == null) return true;

                foreach (var conv in conversations.OfType<JsonObject>())
                {
                    string id = conv["id"]?.GetValue<string>();
                    string type = conv["type"]?.GetValue<string>() ?? "Thread";
                    if (string.IsNullOrWhiteSpace(id)) continue;

                    // Determine display name from threadProperties or last message
                    string topic = conv["threadProperties"]?["topic"]?.GetValue<string>();

                    // Group chat (19:...) vs 1:1 (8:...) vs phone (4:+...)
                    if (id.StartsWith("19:", StringComparison.Ordinal) ||
                        id.StartsWith("28:", StringComparison.Ordinal))
                    {
                        string name = !string.IsNullOrWhiteSpace(topic) ? topic : id;
                        var grp = new MiddleMan.Group(name, id, 0, Array.Empty<User>());
                        _uiContext?.Post(_ => RecentsList.Add(grp), null);
                    }
                    else
                    {
                        // 1:1 or phone — try to get display name from members
                        string partnerId = id;
                        string partnerName = id;

                        var members = conv["members"] as JsonArray;
                        if (members != null)
                        {
                            foreach (var m in members.OfType<JsonObject>())
                            {
                                string mid = m["id"]?.GetValue<string>() ?? "";
                                if (mid == _skypeId || mid == "8:" + _skypeId) continue;
                                partnerId = mid;
                                partnerName = m["friendlyName"]?.GetValue<string>() ?? mid;
                                break;
                            }
                        }

                        var user = GetOrCreateUser(partnerId, partnerName, null);
                        var dm = new DirectMessage(user, 0, id);
                        _uiContext?.Post(_ => RecentsList.Add(dm), null);
                    }
                }
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Failed to populate recents: " + ex.Message));
                return false;
            }
        }

        public Task<bool> PopulateServerList() => Task.FromResult(true); // not applicable

        // ================================================================
        // Message fetching
        // chatsvc API: GET /v1/users/ME/conversations/{id}/messages
        // Auth header: "authentication: skypetoken=<jwt>"
        // ================================================================
        public async Task<ConversationItem[]> FetchMessages(
            Conversation conversation,
            Fetch fetch_type = Fetch.Newest,
            int message_count = 50,
            string identifier = null)
        {
            TypingUsersList.Clear();
            if (fetch_type == Fetch.Oldest) return Array.Empty<ConversationItem>();
            if (string.IsNullOrWhiteSpace(_skypeToken)) return Array.Empty<ConversationItem>();

            string convId = conversation.Identifier;
            _activeConvId = convId;

            string encoded = Uri.EscapeDataString(convId);
            string path = string.Format(
                "/v1/users/ME/conversations/{0}/messages" +
                "?view=msnp24Equivalent|supportsMessageProperties|supportsExtendedHistory" +
                "&pageSize={1}&startTime=1",
                encoded, message_count);

            if (fetch_type == Fetch.BeforeIdentifier && identifier != null)
                path += "&syncState=" + Uri.EscapeDataString(identifier);

            DbgApi("FetchMessages: " + path);

            try
            {
                string json = await TeamsAPI.ChatSvcGet(path, _skypeToken, _httpClient)
                    .ConfigureAwait(false);

                if (json.StartsWith("[ChatSvc/Error]", StringComparison.Ordinal))
                {
                    OnWarning?.Invoke(this, new PluginMessageEventArgs("Could not fetch messages: " + json));
                    return Array.Empty<ConversationItem>();
                }

                DbgApi("FetchMessages response[:300]: " + json.Substring(0, Math.Min(300, json.Length)));

                var root = JsonNode.Parse(json)?.AsObject();
                var messages = root?["messages"] as JsonArray;
                if (messages == null) return Array.Empty<ConversationItem>();

                var result = new List<ConversationItem>();
                foreach (var msgNode in messages.OfType<JsonObject>())
                {
                    var parsed = TeamsParser.ParseMessage(msgNode, _userCache);
                    if (parsed != null) result.Add(parsed);
                }

                // chatsvc returns newest-first; reverse to display oldest-first
                result.Reverse();
                return result.ToArray();
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Failed to load messages: " + ex.Message));
                _activeConvId = null;
                return Array.Empty<ConversationItem>();
            }
        }

        // ================================================================
        // Sending messages
        // chatsvc POST /v1/users/ME/conversations/{id}/messages
        // ================================================================
        public async Task<bool> SendMessage(
            string identifier,
            string text = null,
            Attachment attachment = null,
            string parent_message_identifier = null)
        {
            if (string.IsNullOrWhiteSpace(identifier) ||
                string.IsNullOrWhiteSpace(text) ||
                string.IsNullOrWhiteSpace(_skypeToken))
                return false;

            string encoded = Uri.EscapeDataString(identifier);
            string path = "/v1/users/ME/conversations/" + encoded + "/messages";

            // chatsvc message body format
            long clientMsgId = (long)(DateTime.UtcNow - new DateTime(1970, 1, 1)).TotalMilliseconds;
            var msgBody = new
            {
                content = text,
                messagetype = "RichText/Html",
                contenttype = "text",
                clientmessageid = clientMsgId.ToString(),
            };

            try
            {
                string resp = await TeamsAPI.ChatSvcPost(
                    path, JsonSerializer.Serialize(msgBody), _skypeToken, _httpClient)
                    .ConfigureAwait(false);

                DbgApi("SendMessage response: " + resp.Substring(0, Math.Min(200, resp.Length)));
                return !resp.StartsWith("[ChatSvc/Error]", StringComparison.Ordinal);
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Failed to send message: " + ex.Message));
                return false;
            }
        }

        // ================================================================
        // Presence (via presence.teams.live.com)
        // ================================================================
        public async Task<bool> SetConnectionStatus(UserConnectionStatus status)
        {
            if (string.IsNullOrWhiteSpace(_skypeToken)) return false;

            string avail;
            switch (status)
            {
                case UserConnectionStatus.Online: avail = "Available"; break;
                case UserConnectionStatus.Away: avail = "Away"; break;
                case UserConnectionStatus.DoNotDisturb: avail = "DoNotDisturb"; break;
                case UserConnectionStatus.Invisible: avail = "Offline"; break;
                default: avail = "Available"; break;
            }

            // PUT https://presence.teams.live.com/v1/me/endpoints/<epid>
            // Using a simplified approach — post to unifiedPresence
            try
            {
                var req = new HttpRequestMessage(
                    HttpMethod.Put,
                    "https://presence.teams.live.com/v1/me/endpoints/" + Uri.EscapeDataString(_skypeId ?? "skymu"));
                req.Headers.Add("x-skypetoken", _skypeToken);
                req.Content = new StringContent(
                    JsonSerializer.Serialize(new
                    {
                        endpointPresenceDocUrl = (string)null,
                        availability = avail,
                        deviceType = "Desktop"
                    }),
                    Encoding.UTF8, "application/json");

                var resp = await _httpClient.SendAsync(req).ConfigureAwait(false);
                DbgApi("SetConnectionStatus HTTP " + (int)resp.StatusCode);
                return resp.IsSuccessStatusCode || resp.StatusCode == HttpStatusCode.Created;
            }
            catch (Exception ex)
            {
                DbgApi("SetConnectionStatus exception: " + ex.Message);
                return false;
            }
        }

        public Task<bool> SetTextStatus(string status)
        {
            OnWarning?.Invoke(this, new PluginMessageEventArgs(
                "Custom text status is not supported in Teams consumer."));
            return Task.FromResult(false);
        }

        // ================================================================
        // Polling
        // ================================================================
        private async Task PollForMessagesAsync(CancellationToken ct)
        {
            var lastSeen = new Dictionary<string, string>();

            while (!ct.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(POLL_INTERVAL_MS, ct).ConfigureAwait(false);

                    string convId = _activeConvId;
                    if (string.IsNullOrWhiteSpace(convId) || string.IsNullOrWhiteSpace(_skypeToken))
                        continue;

                    string encoded = Uri.EscapeDataString(convId);
                    string path = string.Format(
                        "/v1/users/ME/conversations/{0}/messages" +
                        "?view=msnp24Equivalent&pageSize=10&startTime=1",
                        encoded);

                    string json = await TeamsAPI.ChatSvcGet(path, _skypeToken, _httpClient)
                        .ConfigureAwait(false);

                    if (json.StartsWith("[ChatSvc/Error]", StringComparison.Ordinal)) continue;

                    var root = JsonNode.Parse(json)?.AsObject();
                    var messages = root?["messages"] as JsonArray;
                    if (messages == null) continue;

                    string lastId;
                    lastSeen.TryGetValue(convId, out lastId);
                    string newestId = lastId;

                    // chatsvc returns newest-first
                    foreach (var msgNode in messages.OfType<JsonObject>())
                    {
                        string msgId = msgNode["id"]?.GetValue<string>();
                        if (msgId == null) continue;

                        if (lastId != null &&
                            string.Compare(msgId, lastId, StringComparison.Ordinal) <= 0) continue;

                        var parsed = TeamsParser.ParseMessage(msgNode, _userCache);
                        if (parsed == null) continue;

                        if (newestId == null ||
                            string.Compare(msgId, newestId, StringComparison.Ordinal) > 0)
                            newestId = msgId;

                        string cid = convId;
                        _uiContext?.Post(_ => MessageEvent?.Invoke(this,
                            new MessageRecievedEventArgs(cid, parsed, false)), null);
                    }

                    if (newestId != null) lastSeen[convId] = newestId;
                }
                catch (TaskCanceledException) { break; }
                catch (Exception ex) { Debug.WriteLine("[Teams/Poll] " + ex.Message); }
            }
        }

        // ================================================================
        // Dispose
        // ================================================================
        public void Dispose()
        {
            _pollCts?.Cancel();
            _pollCts?.Dispose();
            _pollCts = null;

            _httpClient?.Dispose();
            _httpClient = null;

            _userCache.Clear();
            _activeConvId = null;
            _accessToken = null;
            _refreshToken = null;
            _skypeToken = null;
            _skypeId = null;
            _session = null;
            MyInformation = null;

            ContactsList.Clear();
            RecentsList.Clear();
            ServerList.Clear();
            TypingUsersList.Clear();
        }

        // ================================================================
        // HTTP helpers
        // ================================================================
        private HttpClient BuildHttpClient(CookieContainer cookies)
        {
            var handler = new HttpClientHandler
            {
                CookieContainer = cookies,
                UseCookies = true,
                AllowAutoRedirect = true,
                MaxAutomaticRedirections = 10,
            };
            var client = new HttpClient(handler);
            client.DefaultRequestHeaders.UserAgent.ParseAdd(USER_AGENT);
            client.DefaultRequestHeaders.Accept.ParseAdd(
                "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
            client.DefaultRequestHeaders.AcceptLanguage.ParseAdd("en-US,en;q=0.5");
            return client;
        }

        private async Task<string> GetPage(string url, string referer)
        {
            try
            {
                var req = new HttpRequestMessage(HttpMethod.Get, url);
                if (!string.IsNullOrEmpty(referer) &&
                    Uri.TryCreate(referer, UriKind.Absolute, out var refUri))
                    req.Headers.Referrer = refUri;
                var response = await _httpClient.SendAsync(req).ConfigureAwait(false);
                return await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            }
            catch (Exception ex) { Debug.WriteLine("[Teams/GetPage] " + ex.Message); return null; }
        }

        private async Task<string> PostJson(string url, object body, string referer)
        {
            try
            {
                var request = new HttpRequestMessage(HttpMethod.Post, url)
                {
                    Content = new StringContent(JsonSerializer.Serialize(body), Encoding.UTF8, "application/json")
                };
                if (Uri.TryCreate(referer, UriKind.Absolute, out var refUri))
                    request.Headers.Referrer = refUri;
                request.Headers.Add("hpgid", "33");
                request.Headers.Add("hpgact", "0");
                var response = await _httpClient.SendAsync(request).ConfigureAwait(false);
                return await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            }
            catch (Exception ex) { Debug.WriteLine("[Teams/PostJson] " + ex.Message); return null; }
        }

        // Returns (html, finalUri) using Tuple for C# 7.3 / .NET 4.6 compatibility
        private async Task<(string, Uri)> PostForm(
            string url,
            Dictionary<string, string> fields,
            string referer)
        {
            try
            {
                var request = new HttpRequestMessage(HttpMethod.Post, url)
                {
                    Content = new FormUrlEncodedContent(fields)
                };
                if (Uri.TryCreate(referer, UriKind.Absolute, out var refUri))
                    request.Headers.Referrer = refUri;
                var response = await _httpClient.SendAsync(request).ConfigureAwait(false);
                string html = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
                Uri finalUri = response.RequestMessage?.RequestUri ?? response.Headers.Location;
                return (html, finalUri);
            }
            catch (Exception ex)
            {
                Debug.WriteLine("[Teams/PostForm] " + ex.Message);
                return (null, null);
            }
        }

        // ================================================================
        // ServerData parser
        // ================================================================
        private static void ParseServerData(string html, MsaSession session)
        {
            // FlowToken (PPFT)
            // Primary: "sFTTag":"<input ... name=\"PPFT\" ... value=\"TOKEN\"/>",
            // The attribute quotes inside the JSON string value are backslash-escaped.
            Match ppft = Regex.Match(html,
                "\"sFTTag\"\\s*:\\s*\"[^\"]*value=\\\\\"([^\\\\]+)\\\\\"");

            // Fallback: name=\"PPFT\" ... value=\"TOKEN\" (same escaping, different attribute order)
            if (!ppft.Success)
                ppft = Regex.Match(html,
                    "name=\\\\\"PPFT\\\\\"[^\"]*value=\\\\\"([^\\\\]+)\\\\\"");

            // Fallback: unescaped hidden input (some MFA / KMSI pages render plain HTML, not a JS blob)
            if (!ppft.Success)
                ppft = Regex.Match(html,
                    @"name=""PPFT""\s[^>]*value=""([^""]+)""",
                    RegexOptions.IgnoreCase);
            if (!ppft.Success)
                ppft = Regex.Match(html,
                    @"value=""([^""]+)""\s*name=""PPFT""",
                    RegexOptions.IgnoreCase);

            // Fallback: i0327 element id (present when PPFT is rendered without name attr first)
            if (!ppft.Success)
                ppft = Regex.Match(html,
                    @"id=""i0327""\s[^>]*value=""([^""]+)""",
                    RegexOptions.IgnoreCase);
            if (!ppft.Success)
                ppft = Regex.Match(html,
                    @"value=""([^""]+)""\s*id=""i0327""",
                    RegexOptions.IgnoreCase);

            if (ppft.Success) session.FlowToken = ppft.Groups[1].Value;

            DbgAuth("ParseServerData", "FlowToken result: " + (session.FlowToken ?? "(null)"));

            // uaid — "sUnauthSessionID":"<guid>" in the ServerData blob
            if (string.IsNullOrWhiteSpace(session.Uaid))
            {
                Match uaid = Regex.Match(html, "\"sUnauthSessionID\"\\s*:\\s*\"([^\"]+)\"");
                if (uaid.Success) session.Uaid = uaid.Groups[1].Value.Replace("-", "");
            }

            // opid — appears in urlPost or the page URL as opid=HEXHEX
            if (string.IsNullOrWhiteSpace(session.Opid))
            {
                Match opid = Regex.Match(html, @"[?&]opid=([A-F0-9]+)", RegexOptions.IgnoreCase);
                if (opid.Success) session.Opid = opid.Groups[1].Value;
            }

            // bk — numeric timestamp in query string
            if (string.IsNullOrWhiteSpace(session.Bk))
            {
                Match bk = Regex.Match(html, @"[?&]bk=(\d+)");
                if (bk.Success) session.Bk = bk.Groups[1].Value;
            }

            // contextid — hex token in query string
            if (string.IsNullOrWhiteSpace(session.ContextId))
            {
                Match ctx = Regex.Match(html, @"contextid=([A-F0-9]+)", RegexOptions.IgnoreCase);
                if (ctx.Success) session.ContextId = ctx.Groups[1].Value;
            }
        }

        // ================================================================
        // Utility
        // ================================================================

        // Resolves urlPost from ServerData, normalises to absolute URL
        private static string ResolveUrlPost(string html, string fallback)
        {
            Match m = Regex.Match(html, @"""urlPost""\s*:\s*""([^""]+)""");
            if (!m.Success) return fallback;
            string url = m.Groups[1].Value.Replace(@"\/", "/");
            if (!url.StartsWith("http", StringComparison.Ordinal))
                url = MSA_HOST + "/" + url.TrimStart('/');
            return url;
        }

        private static bool IsRedirectToApp(Uri uri) =>
            uri != null && (
                uri.AbsoluteUri.StartsWith(REDIRECT_URI, StringComparison.OrdinalIgnoreCase) ||
                uri.Fragment.Contains("code=") ||
                uri.Query.Contains("code="));

        private static Dictionary<string, string> ParseQueryString(string qs)
        {
            var result = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
            foreach (string pair in qs.Split('&'))
            {
                int eq = pair.IndexOf('=');
                if (eq < 0) continue;
                string key = Uri.UnescapeDataString(pair.Substring(0, eq));
                string val = Uri.UnescapeDataString(pair.Substring(eq + 1));
                result[key] = val;
            }
            return result;
        }

        private static string GenerateCodeVerifier()
        {
            byte[] bytes = new byte[32];
            using (var rng = System.Security.Cryptography.RandomNumberGenerator.Create())
                rng.GetBytes(bytes);
            return ToBase64Url(bytes);
        }

        private static string GenerateCodeChallenge(string verifier)
        {
            using (var sha = System.Security.Cryptography.SHA256.Create())
                return ToBase64Url(sha.ComputeHash(Encoding.ASCII.GetBytes(verifier)));
        }

        private static string ToBase64Url(byte[] bytes) =>
            Convert.ToBase64String(bytes).TrimEnd('=').Replace('+', '-').Replace('/', '_');

        private User GetOrCreateUser(string id, string displayName, string username)
        {
            User existing;
            if (_userCache.TryGetValue(id, out existing)) return existing;
            var user = new User(displayName, username ?? id, id);
            _userCache[id] = user;
            return user;
        }
    }
}