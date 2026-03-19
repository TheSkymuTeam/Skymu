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

using MiddleMan;
using System;
using System.Text.Json.Nodes;
using System.Threading.Channels;
using System.IO;
using System.Threading.Tasks;
using System.Diagnostics;

namespace Discord.Classes
{
    internal class DiscordMsgParser
    {
        public static async Task<Message> ParseMessage(JsonNode message, bool isForwarded = false)
        {
            if (message == null) return null;

            if (message["message_snapshots"] != null)
                return await ParseMessage(message["message_snapshots"][0]["message"], true);

            string messageId = message["id"]?.GetValue<string>() ?? "0";
            string authorId = message["author"]?["id"]?.GetValue<string>() ?? "0";
            string content = HelperMethods.ReplaceIDWithName(
                message["mentions"] as JsonArray,
                message["content"]?.GetValue<string>() ?? string.Empty);
            DateTime timestamp = ParseTimestamp(message["timestamp"]?.GetValue<string>());
            Attachment[] media = new Attachment[1] { new Attachment(await ParseMessageMedia(message), "discord-image", AttachmentType.Image) };
            Message parent = ParseReply(message["referenced_message"]);
            User sender = UserStore.Get(authorId);
            var (displayName, username) = GetAuthorInfo(message);
            if (sender == null)
            {
                sender = UserStore.GetOrCreate(authorId, displayName, username);
            }
            else if (string.IsNullOrEmpty(sender.DisplayName) || string.IsNullOrEmpty(sender.Username))
            {
                sender = UserStore.GetOrCreate(authorId, displayName, username);
            }

            return new Message(
                messageId,
                sender,
                timestamp,
                content,
                media,
                parent,
                isForwarded
            );
        }

        public static Message ParseReply(JsonNode refMsg)
        {
            if (refMsg == null) return null;
            string replyContent = HelperMethods.ReplaceIDWithName(refMsg["mentions"] as JsonArray, refMsg["content"]?.GetValue<string>() ?? "[unavailable]");
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

            string displayName = member?["nick"]?.GetValue<string>()
                ?? author?["global_name"]?.GetValue<string>()
                ?? author?["username"]?.GetValue<string>()
                ?? "Anonymous";
            string username = author?["username"]?.GetValue<string>() ?? "Anonymous";

            return (displayName, username);
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
                using var stream = await Core.api.client.GetStreamAsync(url); // skip double buffering and thusly extra RAM usage
                using var ms = new MemoryStream();
                await stream.CopyToAsync(ms);
                return ms.ToArray();
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