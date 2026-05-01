using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Skymu.Preferences;
using System.Threading.Tasks;

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
