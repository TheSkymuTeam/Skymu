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

namespace Skymu.Enumerations
{
    public enum WindowFrame
    {
        SkypeAero,
        SkypeBasic,
        Native,
        SkypeAeroCustom,
    };

    public enum Soundpack
    {
        Enhanced,
        Skype2,
        Skype7,
        Skype8,
    };

    public enum NotificationTriggerType
    {
        ALL = 1,
        PING = 2,
        DM = 4,
        PDM = PING | DM,
    }
}
