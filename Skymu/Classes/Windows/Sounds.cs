/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Threading;
using System.IO;
using System.Media;
using System.Threading.Tasks;
using Skymu.Preferences;
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
            Load("call-out", "CALL_OUT.WAV");
            Load("call-reconnect", "CALL_RECONNECT_FRONT.WAV");
            Load("call-in", "CALL_IN.WAV");
            Load("call-end", "HANGUP.WAV");
            Load("login", "LOGIN.WAV");
            Load("logout", "LOGOUT.WAV");
        }
        
        static void Load(string key, string filename, string path = "", string fallback = "Sounds")
        {
            if (path == "")
                path = Settings.SoundPack;
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

        public static async Task PlayAsync(string key, CancellationToken token = default)
        {
            if (!players.TryGetValue(key, out var sp))
                return;
            await Task.Run(() =>
            {
                if (token.IsCancellationRequested) return;
                sp.PlaySync();
            }, token);
        }

        public static void StopPlayback(string key)
        {
            if (!players.TryGetValue(key, out var sp))
                return;
            Task.Run(() => sp.Stop());
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
