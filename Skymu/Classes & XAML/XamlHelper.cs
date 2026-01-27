using MiddleMan;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace Skymu
{
    public class ConversationItemTemplateSelector : DataTemplateSelector
    {
        public DataTemplate MessageTemplate { get; set; }
        public DataTemplate CallStartedTemplate { get; set; }
        public DataTemplate CallEndedTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            switch (item)
            {
                case MessageItem _:
                    return MessageTemplate;
                case CallStartedItem _:
                    return CallStartedTemplate;
                case CallEndedItem _:
                    return CallEndedTemplate;
                default:
                    return base.SelectTemplate(item, container);
            }
        }
    }
}
