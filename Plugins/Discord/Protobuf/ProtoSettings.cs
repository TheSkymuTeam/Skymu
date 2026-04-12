using System;
using System.Collections.Generic;
using System.Text;
using Discord.Helpers;
using DiscordProtos.DiscordUsers.V1;
using Google.Protobuf;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using Discord.Networking;
using System.Threading;
using System.Threading.Tasks;

namespace Discord.Protobuf
{
    class ProtoSettings
    {
        private string DscToken;
        // The API instance used by Skymu
        internal static readonly DiscordHttpClient api = new DiscordHttpClient();
        // The generated class from Google's Protobuf
        public PreloadedUserSettings _proto;
        // Endpoints necessary fetching and setting Proto settings
        private const string USERS_ME = "users/@me";
        private const string PROTO_ENDPOINT = USERS_ME + "/settings-proto/1";

        public ProtoSettings(string token)
        {
            DscToken = token;
        }

        internal async Task<PreloadedUserSettings> FetchProtoSettings()
        {
            string currentProto = await api.Send(PROTO_ENDPOINT, HttpMethod.Get, DscToken, null, null, null).ConfigureAwait(false);
            if (string.IsNullOrWhiteSpace(currentProto))
                return new PreloadedUserSettings();

            // Parse the Proto sent to us from Discord and decode it later
            var encJson = JsonNode.Parse(currentProto)?.AsObject();
            string protoBase = encJson?["settings"]?.GetValue<string>();

            if (string.IsNullOrWhiteSpace(protoBase))
                return new PreloadedUserSettings();

            // Decode the Proto settings for the client to read
            byte[] bytes = Convert.FromBase64String(protoBase);
            return PreloadedUserSettings.Parser.ParseFrom(bytes);
        }

        internal async Task<bool> UpdateProtoSettings(PreloadedUserSettings settings)
        {
            // Encodes the new Proto settings into the Discord format
            byte[] updatedBytes = settings.ToByteArray();
            string updatedBase = Convert.ToBase64String(updatedBytes);

            var body = new { settings = updatedBase };

            // We have to create our own PATCH method since .NET doesn't officially support it
            HttpMethod Patch = new HttpMethod("PATCH");
            string protoResponse = await api.Send(PROTO_ENDPOINT, Patch, DscToken, body, null, null, null).ConfigureAwait(false);

            Debug.WriteLine(protoResponse);
            return !protoResponse.Contains("message");
        }
    }
}
