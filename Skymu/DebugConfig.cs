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

namespace Skymu
{
    internal class DebugConfig
    {
        internal static bool TestMode = false; // disables plugin login, signs you directly into stub
        internal static bool DisableAutoLogin = true; // disables plugin auto login for testing
        internal static bool LocalizeDesigner = false; // localize the XAML designer
    }
}
