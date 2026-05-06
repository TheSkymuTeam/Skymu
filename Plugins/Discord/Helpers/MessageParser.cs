/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Discord.Users;
using System;
using System.IO;
using System.Text.Json.Nodes;
using System.Threading.Tasks;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Discord.Helpers
{
    internal class MessageParser
    {
        public static async Task<Message> ParseMessage(JsonNode message, bool isForwarded = false)
        {
            if (message == null)
                return null;

            if (message["message_snapshots"] != null)
                return await ParseMessage(message["message_snapshots"][0]["message"], true);

            string messageId = message["id"]?.GetValue<string>() ?? "0";
            string authorId = message["author"]?["id"]?.GetValue<string>() ?? "0";
            string content = HelperMethods.ReplaceIDWithName(
                message["mentions"] as JsonArray,
                message["content"]?.GetValue<string>() ?? string.Empty
            );
            DateTime timestamp = ParseTimestamp(message["timestamp"]?.GetValue<string>());
            var (url, data) = await ParseMessageMedia(message);
            Attachment[] media = new Attachment[1]
            {
                new Attachment(
                    data,
                    "discord-image",
                    url,
                    AttachmentType.ThumbnailImage
                ),
            };
            Message parent = ParseReply(message["referenced_message"]);
            User sender = UserStore.Get(authorId);
            var (displayName, username) = GetAuthorInfo(message);
            if (sender == null)
            {
                sender = UserStore.GetOrCreate(authorId, displayName, username);
            }
            else if (
                string.IsNullOrEmpty(sender.DisplayName) || string.IsNullOrEmpty(sender.Username)
            )
            {
                sender = UserStore.GetOrCreate(authorId, displayName, username);
            }

            return new Message(messageId, sender, timestamp, content, media, parent, isForwarded);
        }

        public static Message ParseReply(JsonNode refMsg)
        {
            if (refMsg == null)
                return null;
            string replyContent = HelperMethods.ReplaceIDWithName(
                refMsg["mentions"] as JsonArray,
                refMsg["content"]?.GetValue<string>() ?? "[unavailable]"
            );
            var (displayName, username) = GetAuthorInfo(refMsg);
            string authorId = refMsg["author"]?["id"]?.GetValue<string>() ?? "0";
            return new Message(
                refMsg["id"]?.GetValue<string>() ?? "0",
                UserStore.GetOrCreate(authorId, displayName, username),
                ParseTimestamp(refMsg["timestamp"]?.GetValue<string>()),
                replyContent
            );
        }

        public static (string displayName, string username) GetAuthorInfo(JsonNode node)
        {
            var member = node?["member"];
            var author = node?["author"];

            string displayName =
                member?["nick"]?.GetValue<string>()
                ?? author?["global_name"]?.GetValue<string>()
                ?? author?["username"]?.GetValue<string>()
                ?? "Anonymous";
            string username = author?["username"]?.GetValue<string>() ?? "Anonymous";

            return (displayName, username);
        }

        public static async Task<(string Url, byte[] Data)> ParseMessageMedia(JsonNode message)
        {
            if (!(message["attachments"] is JsonArray attachments) || attachments.Count == 0)
                return (null, null);

            if (!(attachments[0] is JsonObject obj)) // TODO make support multiple attachments
                return (null, null);

            string contentType = obj["content_type"]?.GetValue<string>(); // TODO make support media other than image
            if (string.IsNullOrEmpty(contentType) || !contentType.StartsWith("image/"))
                return (null, null);

            string originalUrl = obj["url"]?.GetValue<string>();

            if (string.IsNullOrEmpty(originalUrl))
                return (null, null);

            int maxSize = 400;
            int? width = obj["width"]?.GetValue<int>();
            int? height = obj["height"]?.GetValue<int>();
            if (width.HasValue && height.HasValue)
            {
                if (width > height)
                {
                    height = (int)((float)height / width * maxSize);
                    width = maxSize;
                }
                else
                {
                    width = (int)((float)width / height * maxSize);
                    height = maxSize;
                }
            }

            string sizeParams = (width.HasValue && height.HasValue) ? $"&width={width}&height={height}" : string.Empty;
            string url = originalUrl.Replace("cdn.discordapp.com", "media.discordapp.net") + $"&=&format=png{sizeParams}";

            try // skip double buffering and thusly extra RAM usage
            {
                using (var stream = await Core.Client.InternalHttpClient.GetStreamAsync(url))
                {
                    using (var ms = new MemoryStream())
                    {
                        await stream.CopyToAsync(ms);
                        return (originalUrl, ms.ToArray());
                    }
                }
            }
            catch
            {
                return (originalUrl, null);
            }
        }

        public static DateTime ParseTimestamp(string ts) =>
            DateTime.TryParse(ts, out var dt) ? dt : DateTime.UtcNow;
    }
}
