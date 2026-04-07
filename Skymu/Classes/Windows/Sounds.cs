/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using Skymu.Properties;
using System;
using System.Collections.Generic;
using System.IO;
using System.Media;
using System.Threading.Tasks;
using System.Windows;

# pragma warning disable CA1416

namespace Skymu
{
    static class Sounds
    {
        static readonly Dictionary<string, SoundPlayer> players =
            new Dictionary<string, SoundPlayer>();

        public static void Init()
        {
            Load("message-sent", "IM_SENT.WAV");
            Load("message-recieved", "IM.WAV");
            Load("call-error", "CALL_ERROR1.WAV");
            Load("call-init", "CALL_INIT.WAV");
            Load("call-ring", "CALL_IN.WAV");
            Load("call-end", "HANGUP.WAV");
            Load("login", "LOGIN.WAV");
            Load("logout", "LOGOUT.WAV");
        }
        
        static void Load(string key, string filename, string path = "", string fallback = "Sounds")
        {
            if (path == "")
                path = Settings.Default.SoundPack;
            var uri = new Uri($"pack://application:,,,/{path}/{filename}", UriKind.Absolute);
            bool suc = false;
            System.Windows.Resources.StreamResourceInfo streamInfo = null;
            try
            {
                streamInfo = Application.GetResourceStream(uri);
                suc = true;
            }
            catch (IOException) { }
            if (suc && streamInfo?.Stream != null)
            {
                var ms = new MemoryStream();
                streamInfo.Stream.CopyTo(ms);
                ms.Position = 0;

                var sp = new SoundPlayer(ms);
                sp.Load();
                players[key] = sp;
            }
            else if (fallback != String.Empty && path != fallback)
            {
                Load(key, filename, fallback, "Sounds");
            }
        }

        public static bool forcelock = false;
        public static void Play(string key, bool force = false)
        {
            if (!players.TryGetValue(key, out var sp))
                return;

            if (force)
            {
                forcelock = true;
                Task.Run(() =>
                {
                    sp.PlaySync(); 
                    forcelock = false;
                });
            }
            else
            {
                if (!forcelock)
                {
                    sp.Play();          
                }
            }
        }

        public static void StopPlayback(string key)
        {
            if (!players.TryGetValue(key, out var sp))
                return;
            sp.Stop();
        }

        public static void PlayLoop(string key)
        {
            if (!players.TryGetValue(key, out var sp))
                return;
            sp.PlayLooping();
        }

        public static void PlaySynchronous(string key)
        {
            if (players.TryGetValue(key, out var sp)) sp.PlaySync();
        }
    }
}
