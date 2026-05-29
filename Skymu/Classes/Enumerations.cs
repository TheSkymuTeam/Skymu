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
