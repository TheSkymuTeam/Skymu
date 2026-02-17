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

using MiddleMan;
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
                case Message _:
                    return MessageTemplate;
                case CallStartedNotice _:
                    return CallStartedTemplate;
                case CallEndedNotice _:
                    return CallEndedTemplate;
                default:
                    return base.SelectTemplate(item, container);
            }
        }
    }
}
