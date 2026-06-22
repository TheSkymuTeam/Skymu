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

using Skymu.ViewModels;
using System;
using System.Globalization;
using System.Windows.Data;
using Yggdrasil.Models;

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
