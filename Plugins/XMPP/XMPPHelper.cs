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
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace XMPP.Classes
{
    public class HelperMethods
    {
        // Cache for default avatars
        private readonly System.Collections.Generic.Dictionary<string, byte[]> _avatarCache = 
            new System.Collections.Generic.Dictionary<string, byte[]>();

        public string ExtractUsernameFromJid(string jid)
        {
            if (string.IsNullOrWhiteSpace(jid))
                return "Unknown";

            // Remove resource if present (user@server.com/resource)
            int resourceIndex = jid.IndexOf('/');
            string bareJid = resourceIndex >= 0 ? jid.Substring(0, resourceIndex) : jid;

            // Extract username part (user@server.com -> user)
            int atIndex = bareJid.IndexOf('@');
            if (atIndex >= 0)
            {
                return bareJid.Substring(0, atIndex);
            }

            return bareJid;
        }

        public string ExtractServerFromJid(string jid)
        {
            if (string.IsNullOrWhiteSpace(jid))
                return string.Empty;

            // Remove resource if present
            int resourceIndex = jid.IndexOf('/');
            string bareJid = resourceIndex >= 0 ? jid.Substring(0, resourceIndex) : jid;

            // Extract server part (user@server.com -> server.com)
            int atIndex = bareJid.IndexOf('@');
            if (atIndex >= 0 && atIndex < bareJid.Length - 1)
            {
                return bareJid.Substring(atIndex + 1);
            }

            return bareJid;
        }

        public UserConnectionStatus MapStatus(string xmppShow)
        {
            if (string.IsNullOrEmpty(xmppShow))
                return UserConnectionStatus.Online;

            return xmppShow.ToLowerInvariant() switch
            {
                "away" => UserConnectionStatus.Away,
                "dnd" => UserConnectionStatus.DoNotDisturb,
                "xa" => UserConnectionStatus.Invisible,
                "chat" => UserConnectionStatus.Online,
                "unavailable" => UserConnectionStatus.Offline,
                _ => UserConnectionStatus.Offline
            };
        }

        public string MapStatusToXmpp(UserConnectionStatus status)
        {
            return status switch
            {
                UserConnectionStatus.Away => "away",
                UserConnectionStatus.DoNotDisturb => "dnd",
                UserConnectionStatus.Invisible => "xa",
                UserConnectionStatus.Online => "",
                UserConnectionStatus.Offline => "unavailable",
                _ => ""
            };
        }

        public async Task<byte[]> GetDefaultAvatarAsync(string jid)
        {
            // Check cache first
            if (_avatarCache.ContainsKey(jid))
            {
                return _avatarCache[jid];
            }

            // Generate a simple colored avatar based on JID hash
            byte[] avatar = GenerateColoredAvatar(jid);
            _avatarCache[jid] = avatar;

            return await Task.FromResult(avatar);
        }

        private byte[] GenerateColoredAvatar(string jid)
        {
            // Generate a simple 64x64 PNG with a solid color based on JID hash
            // This is a placeholder - in a real implementation, you might use a library
            // to generate actual avatar images with initials, etc.

            using (var md5 = MD5.Create())
            {
                byte[] hash = md5.ComputeHash(Encoding.UTF8.GetBytes(jid));
                
                // Use hash to generate RGB color
                byte r = hash[0];
                byte g = hash[1];
                byte b = hash[2];

                // Return empty array as placeholder
                // In a real implementation, you would generate an actual PNG image here
                return new byte[0];
            }
        }

        public string SanitizeXml(string text)
        {
            if (string.IsNullOrEmpty(text))
                return text;

            return text
                .Replace("&", "&amp;")
                .Replace("<", "&lt;")
                .Replace(">", "&gt;")
                .Replace("\"", "&quot;")
                .Replace("'", "&apos;");
        }

        public string UnescapeXml(string text)
        {
            if (string.IsNullOrEmpty(text))
                return text;

            return text
                .Replace("&lt;", "<")
                .Replace("&gt;", ">")
                .Replace("&quot;", "\"")
                .Replace("&apos;", "'")
                .Replace("&amp;", "&");
        }

        public bool IsValidJid(string jid)
        {
            if (string.IsNullOrWhiteSpace(jid))
                return false;

            // Basic JID validation: must contain @ and have content before and after
            int atIndex = jid.IndexOf('@');
            if (atIndex <= 0 || atIndex >= jid.Length - 1)
                return false;

            // Check for resource separator
            int resourceIndex = jid.IndexOf('/');
            if (resourceIndex >= 0)
            {
                // Resource must come after @
                if (resourceIndex <= atIndex)
                    return false;
            }

            return true;
        }

        public string GetBareJid(string fullJid)
        {
            if (string.IsNullOrWhiteSpace(fullJid))
                return fullJid;

            int resourceIndex = fullJid.IndexOf('/');
            return resourceIndex >= 0 ? fullJid.Substring(0, resourceIndex) : fullJid;
        }

        public string GetResourceFromJid(string fullJid)
        {
            if (string.IsNullOrWhiteSpace(fullJid))
                return string.Empty;

            int resourceIndex = fullJid.IndexOf('/');
            if (resourceIndex >= 0 && resourceIndex < fullJid.Length - 1)
            {
                return fullJid.Substring(resourceIndex + 1);
            }

            return string.Empty;
        }

        public DateTime ParseXmppTimestamp(string timestamp)
        {
            // XMPP typically uses ISO 8601 format
            if (DateTime.TryParse(timestamp, out DateTime result))
            {
                return result;
            }

            return DateTime.Now;
        }

        public string FormatXmppTimestamp(DateTime dateTime)
        {
            // Format as ISO 8601
            return dateTime.ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ");
        }
    }
}