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

using Org.BouncyCastle.Bcpg.Sig;
using Skymu.Helpers;
using System;
using System.Globalization;
using System.Windows.Data;

namespace Skymu.Converters
{
    public class ByteArrayToImageSourceConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            var bytes = values[0] as byte[];
            var type = values[1] as string;

            if (bytes != null && bytes.Length > 0)
            {
                return ImageHelper.GenerateFromArray(bytes);
            }

            if (type == "group")
                return Universal.GroupAvatar;
            else if (type == "unknown")
                return Universal.UnknownAvatar;
            else
                return Universal.AnonymousAvatar;
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            return new object[] { Binding.DoNothing, Binding.DoNothing };
        }
    }
}
