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

using Fluxer.Helpers;
using System.Collections.Concurrent;
using System.Threading.Tasks;
using Yggdrasil.Models;

namespace Fluxer.Users
{
    internal static class UserStore
    {
        private static readonly ConcurrentDictionary<string, User> _users = new ConcurrentDictionary<string, User>();

        public static async Task<User> GetOrCreateWithAvatar(string userId, string displayName, string username, string avatarHash = null)
        {
            var user = GetOrCreate(userId, displayName, username);

            if (user.Avatar == null && avatarHash != null)
            {
                var avatar = await HelperMethods.GetCachedAvatarAsync(userId, avatarHash, HelperMethods.FluxerChannelType.DirectMessage);
                if (avatar != null) user.Avatar = avatar;
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
