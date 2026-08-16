using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json;
using System.Globalization;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace DiscordRewrite.Classes.Discord
{
    internal class ConfigMgr
    {
        private static readonly HttpClient _httpClient = new HttpClient();
        private static readonly Random _randomGen = new Random();

        // Launch info
        public string LaunchSignature { get; private set; }
        public string ClientLaunchId { get; private set; }

        // System related options
        public string OperatingSystem { get; set; } = "Windows";
        public string BrowserName { get; set; } = "Firefox";
        public string DeviceName { get; set; } = string.Empty; // Discord leaves this empty for some reason?
        public string SystemLocale { get; set; } = CultureInfo.CurrentCulture.Name;
        public string OSVersion { get; set; } = "10";

        // Discord related options
        public bool HasClientMods { get; set; } = false; // Discord uses this in the XSP, don't know why they need this.
        public string DCReferrer { get; set; } = string.Empty;
        public string DCReferringDomain { get; set; } = string.Empty;
        public string DCReferringCurrent { get; set; } = "https://discord.com/";
        public string DCReferringCurrentDomain { get; set; } = "discord.com";
        public string DCReleaseChannel { get; set; } = "canary";
        public int DCClientBuild { get; set; } = 0; // Filled in while generating the XSP
        public string DCClientEvtSrc { get; set; } = null;
        public string DCClientState { get; set; } = "unfocused";

        // Browser related options
        public string BrowserUA { get; set; } = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";
        public string BrowserVer { get; set; } = "115.0";

        public async Task<string> GetXSPJson()
        {
            string xspJson = await GenerateXSP();
            byte[] xspBytes = Encoding.UTF8.GetBytes(xspJson);

            return Convert.ToBase64String(xspBytes);
        }

        private async Task<string> GenerateXSP()
        {
            // Build the JSON required for XSP
            GenerateLaunchSignature();
            // Get the current Discord build number
            await GetDiscordBuildNum();

            var xspDict = new Dictionary<string, object>
            {
                { "os", OperatingSystem },
                { "browser", BrowserName },
                { "device", DeviceName },
                { "system_locale", SystemLocale },
                { "has_client_mods", HasClientMods },
                { "browser_user_agent", BrowserUA },
                { "browser_version", BrowserVer },
                { "os_version", OSVersion },
                { "referrer", DCReferrer },
                { "referring_domain", DCReferringDomain },
                { "referrer_current", DCReferringCurrent },
                { "referring_domain_current", DCReferringCurrentDomain },
                { "release_channel", DCReleaseChannel },
                { "client_build_number", DCClientBuild },
                { "client_event_source", DCClientEvtSrc },
                { "client_launch_id", ClientLaunchId },
                { "launch_signature", LaunchSignature },
                { "client_app_state", DCClientState }
            };

            // Returns the finished XSP!
            return JsonSerializer.Serialize(xspDict);
        }

        private async Task GetDiscordBuildNum()
        {
            _httpClient.DefaultRequestHeaders.UserAgent.ParseAdd(BrowserUA);

            string loginHtml = await _httpClient.GetStringAsync("https://discord.com/login");
            MatchCollection scriptTags = Regex.Matches(loginHtml, "<script\\s+[^>]*src=\"([^\"]+\\.js)\"[^>]*>");

            foreach (Match scriptTag in scriptTags)
            {
                string scriptUrl = scriptTag.Groups[1].Value;
                if (!scriptUrl.StartsWith("http"))
                    scriptUrl = "https://discord.com" + scriptUrl;

                string scriptContent = await _httpClient.GetStringAsync(scriptUrl);
                Match buildMatch = Regex.Match(scriptContent, "build_number:\"(\\d+)\"|buildNumber:(\\d+)");

                if (buildMatch.Success)
                {
                    DCClientBuild = int.Parse(buildMatch.Groups[1].Success ? buildMatch.Groups[1].Value : buildMatch.Groups[2].Value);
                    return;
                }
            }
        }

        // These functions below were rewritten from the source code of Discord Messenger, the exact file can be found here:
        // https://github.com/DiscordMessenger/dm/blob/master/src/core/config/DiscordClientConfig.cpp
        // Credit goes to them for this code, technically since it's based off of theirs.
        public static string FormatUUID(ulong partLeft, ulong partRight)
        {
            string uuidBuffer = partLeft.ToString("x16") + partRight.ToString("x16");
            return uuidBuffer.Substring(0, 8) + "-" +
                   uuidBuffer.Substring(8, 4) + "-" +
                   uuidBuffer.Substring(12, 4) + "-" +
                   uuidBuffer.Substring(16, 4) + "-" +
                   uuidBuffer.Substring(20, 12);
        }

        private static ulong RandU64()
        {
            byte[] rngBytes = new byte[8];
            _randomGen.NextBytes(rngBytes);

            return BitConverter.ToUInt64(rngBytes, 0);
        }

        public void GenerateLaunchSignature()
        {
            ulong launchUuidPart1 = RandU64();
            ulong launchUuidPart2 = RandU64();

            launchUuidPart1 &= ~(
               (1UL << 11) |
               (1UL << 24) |
               (1UL << 38) |
               (1UL << 48) |
               (1UL << 55) |
               (1UL << 61)
           );

            launchUuidPart2 &= ~(
                (1UL << 11) |
                (1UL << 20) |
                (1UL << 27) |
                (1UL << 36) |
                (1UL << 44) |
                (1UL << 55)
            );

            LaunchSignature = FormatUUID(launchUuidPart1, launchUuidPart2);
            ClientLaunchId = FormatUUID(RandU64(), RandU64());
        }
    }
}