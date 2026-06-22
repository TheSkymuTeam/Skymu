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

using System;
using System.Collections.Generic;
using Yggdrasil.Models;

namespace Fluxer.Helpers
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
        public class FluxerMessageReceivedEventArgs : EventArgs
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
