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
