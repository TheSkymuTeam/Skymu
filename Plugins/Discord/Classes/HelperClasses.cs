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

using System;

namespace Discord.Classes
{
    internal class HelperClasses
    {
        public class MessageReceivedEventArgs : EventArgs
        {
            public string ChannelId { get; set; }
            public string MessageId { get; set; }
            public string AuthorId { get; set; }
            public string AuthorName { get; set; }
            public string Content { get; set; }
            public byte[] Media { get; set; }
            public DateTime Timestamp { get; set; }
            public string ReplyToId { get; set; }
            public string ReplyToName { get; set; }
            public string ReplyMsgContent { get; set; }
        }
    }
}
