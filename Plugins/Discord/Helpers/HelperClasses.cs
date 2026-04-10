/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;


namespace Discord.Helpers
{
    public enum MessageEventType
    {
        Create,
        Delete,
        BulkDelete,
        Update
    }

    internal class HelperClasses
    {
        public class DiscordMessageReceivedEventArgs : EventArgs
        {
            public MessageEventType EventType { get; set; }

            public string ChannelId { get; set; }
            public string Identifier { get; set; }
            public IEnumerable<string> BulkIdentifiers { get; set; }

            public User Sender { get; set; } 
            public DateTime Timestamp { get; set; }
            public string Text { get; set; } 
            public Attachment[] Attachments { get; set; } 
            public Message ParentMessage { get; set; } = null;
        }
    }
}
