/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.ViewModels;
using System;
using System.Globalization;
using System.Windows.Data;
using Yggdrasil.Classes;

namespace Skymu.Converters
{
    public class CompactConversationTypeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is DirectMessage dm)
            {
                return MainViewModel.GetIntFromStatus(dm.Partner.ConnectionStatus);
            }
            else if (value is Group)
            {
                return 21; // group icon index
            }
            return 0; // unknown status icon index
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            return Binding.DoNothing;
        }
    }
}
