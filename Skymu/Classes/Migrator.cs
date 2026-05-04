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

using Skymu.Preferences;

namespace Skymu.Migration
{
    class Migrator
    {
        public static void Run()
        {
            if (!Settings.SoundPack.StartsWith("Sky")) Settings.SoundPack = "Skymu";
            if (Settings.ThemeRoot != "Light") Settings.ThemeRoot = "Light"; // XXX dark theme doesn't work anyway, why have the option lol
        }
    }
}
