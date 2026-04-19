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
            if (Settings.SoundPack == "Sounds") Settings.SoundPack = "Skymu"; // Apr 19, 2026
        }
    }
}
