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
using System.Globalization;
using System.Windows.Data;
using Yggdrasil.Enumerations;



namespace Skymu.Converters
{
    // convert presence status to equivalent descriptive text
    public class StatusToTextConverter : IValueConverter
    {
        public static readonly Dictionary<PresenceStatus, string> StatusMap = new Dictionary<
            PresenceStatus,
            string
        >()
        {
            { PresenceStatus.Online, Universal.Lang["sSTATUS_ONLINE"] },
            { PresenceStatus.OnlineMobile, Universal.Lang["sSTATUS_ONLINE_MOBILE"] },
            { PresenceStatus.Away, Universal.Lang["sSTATUS_AWAY"] },
            { PresenceStatus.AwayMobile, Universal.Lang["sSTATUS_AWAY_MOBILE"] },
            { PresenceStatus.DoNotDisturb, Universal.Lang["sSTATUS_DND"] },
            { PresenceStatus.DoNotDisturbMobile, Universal.Lang["sSTATUS_DND_MOBILE"] },
            { PresenceStatus.Blocked, Universal.Lang["sSTATUS_BLOCKED"] },
            { PresenceStatus.Offline, Universal.Lang["sSTATUS_OFFLINE"] },
            {
                PresenceStatus.Unknown,
                Universal.Lang["sSTATUS_UNKNOWN"] /* fallback */
            },
        };

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            PresenceStatus statInt;

            if (!(value is PresenceStatus))
                return Universal.Lang["sTRAYHINT_USER_OFFLINE"];

            statInt = (PresenceStatus)value;

            return StatusMap.TryGetValue(statInt, out var statusText)
                ? statusText
                : Universal.Lang["sSTATUS_UNKNOWN"];
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