/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System;

namespace Discord.Classes
{
    // base class for all WebSocket events
    public abstract class WebSocketEventArgs : EventArgs { }

    // MESSAGE_CREATE 
    public class MessageReceivedEventArgs : WebSocketEventArgs
    {
        public string ChannelId { get; set; }
        public string AuthorId { get; set; }
        public string AuthorName { get; set; }
        public string Content { get; set; }
        public DateTime Timestamp { get; set; }
    }

    // PRESENCE_UPDATE
    public class PresenceUpdateEventArgs : WebSocketEventArgs
    {
        public string UserId { get; set; }
        public string Status { get; set; }
        public string CustomStatus { get; set; }
    }

    // CHANNEL_UPDATE
    public class ChannelUpdateEventArgs : WebSocketEventArgs
    {
        public string ChannelId { get; set; }
        public string Name { get; set; }
        public string Icon { get; set; }
    }

    // USER_UPDATE
    public class UserUpdateEventArgs : WebSocketEventArgs
    {
        public string UserId { get; set; }
        public string GlobalName { get; set; }
        public string Username { get; set; }
        public string Avatar { get; set; }
    }

    // RELATIONSHIP_ADD/REMOVE
    public class RelationshipUpdateEventArgs : WebSocketEventArgs
    {
        public string UserId { get; set; }
        public string Type { get; set; } // "friend_add" or "friend_remove"
    }
}