/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Fluxer.Networking;
using FluxerProtos.FluxerUsers.V1;
using Google.Protobuf;
using System;
using System.Diagnostics;
using System.Net.Http;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace Fluxer.Protobuf
{
    class ProtoSettings
    {
        private string Token;
        // The API instance used by Skymu
        internal static readonly FluxerClient api = new FluxerClient();
        // The generated class from Google's Protobuf
        public PreloadedUserSettings _proto;
        // Endpoints necessary fetching and setting Proto settings
        private const string USERS_ME = "users/@me";
        private const string PROTO_ENDPOINT = USERS_ME + "/settings-proto/1";

        public ProtoSettings(string token)
        {
            Token = token;
        }

        internal async Task<PreloadedUserSettings> FetchProtoSettings()
        {
            string currentProto = await api.Send(PROTO_ENDPOINT, HttpMethod.Get, Token, null, null, null).ConfigureAwait(false);
            if (string.IsNullOrWhiteSpace(currentProto))
                return new PreloadedUserSettings();

            // Parse the Proto sent to us from Fluxer and decode it later
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
            // Encodes the new Proto settings into the Fluxer format
            byte[] updatedBytes = settings.ToByteArray();
            string updatedBase = Convert.ToBase64String(updatedBytes);

            var body = new { settings = updatedBase };

            // We have to create our own PATCH method since .NET doesn't officially support it
            HttpMethod Patch = new HttpMethod("PATCH");
            string protoResponse = await api.Send(PROTO_ENDPOINT, Patch, Token, body, null, null, null).ConfigureAwait(false);

            Debug.WriteLine(protoResponse);
            return !protoResponse.Contains("message");
        }
    }
}
