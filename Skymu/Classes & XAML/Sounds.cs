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
            Load("message-sent", "Sounds/IM_SENT.WAV");
            Load("message-recieved", "Sounds/IM.WAV");
            Load("call-error", "Sounds/CALL_ERROR1.WAV");
            Load("login", "Sounds/LOGIN.WAV");
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
    }

}
