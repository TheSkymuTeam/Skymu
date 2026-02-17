/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Reflection.Metadata;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace Discord.Classes
{
    internal class MessageParser
    {
        public static async Task<MessageItem> ParseMessage(JsonNode message)
        {
            if (message is null) return null;

            string messageId = message["id"]?.GetValue<string>() ?? "0";

            string authorId = message["author"]?["id"]?.GetValue<string>() ?? "0";
            string[] authorNames = GetAuthorNames(message);

            var content = HelperMethods.ReplaceIDWithName(
                message["mentions"] as JsonArray,
                message["content"]?.GetValue<string>() ?? string.Empty);

            DateTime timestamp = ParseTimestamp(message["timestamp"]?.GetValue<string>());

            byte[] media = await ParseMessageMedia(message);

            MessageItem parent = ParseReply(message["referenced_message"]);

            return new MessageItem(
                messageId,
                new UserData(authorNames[0], authorNames[1], authorId),
                timestamp,
                content,
                new AttachmentItem[1] { new AttachmentItem(media, "discord-image", AttachmentType.Image) },
                parent
            );
        }

        public static MessageItem ParseReply(JsonNode refMsg)
        {
            if (refMsg is null) return null;

            string replyContent = HelperMethods.ReplaceIDWithName(refMsg["mentions"] as JsonArray, refMsg["content"]?.GetValue<string>() ?? "[unavailable]");
            string[] usernames = GetAuthorNames(refMsg);
            return new MessageItem(
                refMsg["id"]?.GetValue<string>() ?? "0",
                new UserData(usernames[0], usernames[1], refMsg["author"]?["id"]?.GetValue<string>()),
                ParseTimestamp(refMsg["timestamp"]?.GetValue<string>()),
                replyContent
            );
        }

        public static string[] GetAuthorNames(JsonNode node)
        {
            var member = node?["member"];
            var author = node?["author"];

            string displayname = member?["nick"]?.GetValue<string>()
                ?? author?["global_name"]?.GetValue<string>()
                ?? author?["username"]?.GetValue<string>()
                ?? "[unknown user]";
            string username = author?["username"]?.GetValue<string>()
                ?? "[unknown user]";
            return new string[] { displayname, username };
        }

        public static async Task<byte[]> ParseMessageMedia(JsonNode message)
        {
            if (message["attachments"] is not JsonArray attachments || attachments.Count == 0)
                return null;

            if (attachments[0] is not JsonObject obj)
                return null;

            string url = obj["url"]?.GetValue<string>();
            if (string.IsNullOrEmpty(url))
                return null;

            try
            {
                return await Discord.Classes.HelperMethods._httpClient.GetByteArrayAsync(url);
            }
            catch
            {
                return null;
            }
        }

        public static DateTime ParseTimestamp(string ts)
            => DateTime.TryParse(ts, out var dt) ? dt : DateTime.UtcNow;
    }
}