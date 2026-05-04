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


/* Unmerged change from project 'Skymu (net5.0-windows)'
Before:
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using Skymu.Formatting;
After:
using Skymu.Formatting;
*/
using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
/* Unmerged change from project 'Skymu (net5.0-windows)'
Before:
using System.Windows.Media.Imaging;
After:
using System.Windows.Media.Imaging;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
*/


namespace Skymu.Converters
{
    public class NullDependentMarginConverter : IValueConverter
    {
        public Thickness NotNullMargin { get; set; } = new Thickness(0, 5, 0, 0);

        public Thickness NullMargin { get; set; } = new Thickness(0);

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s))
                return NullMargin;
            else if (value == null)
                return NullMargin;
            else
                return NotNullMargin;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotImplementedException();
        }
    }
}