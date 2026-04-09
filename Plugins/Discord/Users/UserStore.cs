using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Collections.Concurrent;
using MiddleMan;
using Discord.Helpers;

namespace Discord.Users
{
    internal static class UserStore
    {
        private static readonly ConcurrentDictionary<string, User> _users = new();

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
