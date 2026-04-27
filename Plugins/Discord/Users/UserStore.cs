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

using Discord.Helpers;
using MiddleMan.Classes;
using System.Collections.Concurrent;
using System.Threading.Tasks;

namespace Discord.Users
{
    internal static class UserStore
    {
        private static readonly ConcurrentDictionary<string, User> _users = new ConcurrentDictionary<string, User>();

        public static async Task<User> GetOrCreateWithAvatar(string userId, string displayName, string username, string avatarHash = null)
        {
            var user = GetOrCreate(userId, displayName, username);

            if (user.ProfilePicture == null && avatarHash != null)
            {
                var avatar = await HelperMethods.GetCachedAvatarAsync(userId, avatarHash, HelperMethods.DiscordChannelType.DirectMessage);
                if (avatar != null) user.ProfilePicture = avatar;
            }

            return user;
        }

        public static User GetOrCreate(string userId, string displayName, string username)
        {
            var user = _users.GetOrAdd(userId, _ => new User(displayName, username, userId));

            if (string.IsNullOrEmpty(user.DisplayName) && !string.IsNullOrEmpty(displayName))
                user.DisplayName = displayName;
            if (string.IsNullOrEmpty(user.Username) && !string.IsNullOrEmpty(username))
                user.Username = username;

            return user;
        }

        public static User Get(string userId)
            => _users.TryGetValue(userId, out var u) ? u : null;

        public static void Clear() => _users.Clear();

        public static void UpdatePresence(string userId, string status, string customStatus = null)
        {
            var user = _users.GetOrAdd(userId, _ => new User(null, null, userId));
            user.ConnectionStatus = HelperMethods.MapStatus(status);
            user.Status = customStatus;
        }
    }
}
