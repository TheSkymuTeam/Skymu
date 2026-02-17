using MiddleMan;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Skymu
{
    using System.ComponentModel;

    public class ConversationItemViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private string messageText;
        public string MessageText
        {
            get => messageText;
            set { messageText = value; OnPropertyChanged(nameof(MessageText)); OnPropertyChanged(nameof(HasText)); }
        }

        private string callStartedText;
        public string CallStartedText
        {
            get => callStartedText;
            set { callStartedText = value; OnPropertyChanged(nameof(CallStartedText)); OnPropertyChanged(nameof(HasCallStarted)); }
        }

        private string callEndedText;
        public string CallEndedText
        {
            get => callEndedText;
            set { callEndedText = value; OnPropertyChanged(nameof(CallEndedText)); OnPropertyChanged(nameof(HasCallEnded)); }
        }

        private byte[] attachment;
        public byte[] Attachment
        {
            get => attachment;
            set { attachment = value; OnPropertyChanged(nameof(Attachment)); OnPropertyChanged(nameof(HasAttachment)); }
        }

        private bool hasReply;
        public bool HasReply
        {
            get => hasReply;
            set { hasReply = value; OnPropertyChanged(nameof(HasReply)); }
        }

        // Helper boolean properties for bindings
        public bool HasText => !string.IsNullOrEmpty(MessageText);
        public bool HasCallStarted => !string.IsNullOrEmpty(CallStartedText);
        public bool HasCallEnded => !string.IsNullOrEmpty(CallEndedText);
        public bool HasAttachment => Attachment != null && Attachment.Length > 0;

        protected void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

}
