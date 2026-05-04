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
using System.Collections.Generic;
using System.Globalization;
using System.Windows.Data;
using Yggdrasil.Enumerations;
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