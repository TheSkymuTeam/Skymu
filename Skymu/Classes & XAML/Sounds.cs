/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System.Collections.Generic;
using System.Media;

# pragma warning disable CA1416

namespace Skymu
{
    static class Sounds
    {
        static readonly Dictionary<string, SoundPlayer> players =
            new Dictionary<string, SoundPlayer>();

        public static void Init()
        {
            Load("message-sent", "sounds/IM_SENT.WAV");
            Load("message-recieved", "sounds/IM.WAV");
            Load("call-error", "sounds/CALL_ERROR1.WAV");
            Load("login", "sounds/LOGIN.WAV");
            Load("logout", "sounds/LOGOUT.WAV");
        }

        static void Load(string key, string path)
        {

            var sp = new SoundPlayer(path);
            sp.Load();   // preload from disk
            players[key] = sp;
        }

        public static void Play(string key)
        {
            if (players.TryGetValue(key, out var sp))
                sp.Play();       // async, non-blocking
        }

        public static void PlaySynchronous(string key)
        {
            if (players.TryGetValue(key, out var sp))
                sp.PlaySync();       
        }
    }

}
