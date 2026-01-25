using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Discord.Classes
{
    internal class ConfigMgr
    {
        private static readonly Random _rng = new Random();
        public string LaunchSignature { get; private set; }
        public string ClientLaunchId { get; private set; }

        public string GetXSPJson()
        {
            string xspJson = GenerateXSP();
            byte[] xspBytes = Encoding.UTF8.GetBytes(xspJson);
            return Convert.ToBase64String(xspBytes);
        }

        private string GenerateXSP()
        {
            // System related options
            string operatingSystem = "Windows";
            string browserName = "Firefox";
            string deviceName = string.Empty; // Discord leaves this empty for some reason?
            string systemLocale = "en-US"; // Leave it as en-US for now, later we will make it dynamic.
            string osVersion = "10";

            // Discord related options
            bool hasClientMods = false; // Discord uses this in the XSP, don't know why they need this.
            string dcReferrer = string.Empty;
            string dcReferringDomain = string.Empty;
            string dcReferringCurrent = "https://discord.com/";
            string dcReferringCurrentDomain = "discord.com";
            string dcReleaseChannel = "canary";
            int dcClientBuild = 488579; // Latest build as of 25/1/26
            string dcClientEvtSrc = null;
            string dcClientState = "unfocused";

            // Browser related options
            string browserUA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";
            string browserVer = "115.0";

            // Build the JSON required for XSP
            GenerateLaunchSignature();

            var dict = new Dictionary<string, object>
            {
                { "os", operatingSystem },
                { "browser", browserName },
                { "device", deviceName },
                { "system_locale", systemLocale },
                { "has_client_mods", hasClientMods },
                { "browser_user_agent", browserUA },
                { "browser_version", browserVer },
                { "os_version", osVersion },
                { "referrer", dcReferrer },
                { "referring_domain", dcReferringDomain },
                { "referrer_current", dcReferringCurrent },
                { "referring_domain_current", dcReferringCurrentDomain },
                { "release_channel", dcReleaseChannel },
                { "client_build_number", dcClientBuild },
                { "client_event_source", dcClientEvtSrc },
                { "client_launch_id", ClientLaunchId },
                { "launch_signature", LaunchSignature },
                { "client_app_state", dcClientState }
            };

            // Returns the finished XSP!
            return JsonConvert.SerializeObject(dict, Formatting.None);
        }

        // These functions below were rewritten from the source code of Discord Messenger, the exact file can be found here:
        // https://github.com/DiscordMessenger/dm/blob/master/src/core/config/DiscordClientConfig.cpp
        // Credit goes to them for this code, technically since it's based off of theirs.
        public static string FormatUUID(ulong partLeft, ulong partRight)
        {
            string buffer = partLeft.ToString("x16") + partRight.ToString("x16");
            return buffer.Substring(0, 8) + "-" +
                   buffer.Substring(8, 4) + "-" +
                   buffer.Substring(12, 4) + "-" +
                   buffer.Substring(16, 4) + "-" +
                   buffer.Substring(20, 12);
        }

        private static ulong RandU64()
        {
            byte[] bytes = new byte[8];
            _rng.NextBytes(bytes);
            return BitConverter.ToUInt64(bytes, 0);
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

            LaunchSignature = ConfigMgr.FormatUUID(launchUuidPart1, launchUuidPart2);
            ClientLaunchId = ConfigMgr.FormatUUID(RandU64(), RandU64());
        }
    }
}