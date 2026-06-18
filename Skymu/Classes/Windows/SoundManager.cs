/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using NAudio.Wave;
using Skymu.Preferences;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace Skymu.Sounds
{
    static class SoundManager
    {
        class CachedSound
        {
            public byte[] Data;

            public CachedSound(byte[] data)
            {
                Data = data;
            }

            public WaveFileReader CreateReader()
            {
                return new WaveFileReader(new MemoryStream(Data, false));
            }
        }

        static Dictionary<string, CachedSound> cached_sounds =
            new Dictionary<string, CachedSound>();

        static readonly ConcurrentDictionary<string, WaveOutEvent> loops =
            new ConcurrentDictionary<string, WaveOutEvent>();

        public static void Init()
        {
            Settings.Default.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == "SoundPack")
                {
                    LoadSounds();
                }
            };
            LoadSounds();
        }

        static void LoadSounds()
        {
            cached_sounds = new Dictionary<string, CachedSound>();
            Load("IM_SENT.WAV");
            Load("IM.WAV");
            Load("CALL_ERROR1.WAV");
            Load("CALL_INIT.WAV");
            Load("CALL_OUT.WAV");
            Load("CALL_RECONNECT_FRONT.WAV");
            Load("CALL_IN.WAV");
            Load("HANGUP.WAV");
            Load("LOGIN.WAV");
            Load("LOGOUT.WAV");
            Load("BUSY.WAV");
        }

        static void Load(string filename, string path = "", string fallback = Universal.Name)
        {
            if (path == "")
                path = Settings.SoundPack.ToString();

            var uri = new Uri(
                $"pack://application:,,,/Sounds/{path}/{filename}",
                UriKind.Absolute
            );

            try
            {
                var sri = Application.GetResourceStream(uri);

                if (sri?.Stream != null)
                {
                    using (var ms = new MemoryStream())
                    {
                        sri.Stream.CopyTo(ms);
                        cached_sounds[Path.GetFileNameWithoutExtension(filename)] = new CachedSound(ms.ToArray());
                    }

                    return;
                }
            }
            catch
            {
            }

            if (fallback != string.Empty && path != fallback)
                Load(filename, fallback, Universal.Name);
        }

        public static void Play(string key)
        {
            if (!cached_sounds.TryGetValue(key, out var snd))
                return;

            Task.Run(() =>
            {
                var output = new WaveOutEvent();
                var reader = snd.CreateReader();

                output.Init(reader);

                output.PlaybackStopped += (s, e) =>
                {
                    reader.Dispose();
                    output.Dispose();
                };

                output.Play();

                while (output.PlaybackState == PlaybackState.Playing)
                    Thread.Sleep(10);
            });
        }

        public static async Task PlayAsync(string key, CancellationToken token = default)
        {
            if (!cached_sounds.TryGetValue(key, out var snd))
                return;

            await Task.Run(() =>
            {
                if (token.IsCancellationRequested)
                    return;

                using (var output = new WaveOutEvent())
                using (var reader = snd.CreateReader())
                {
                    output.Init(reader);
                    output.Play();

                    while (
                        output.PlaybackState == PlaybackState.Playing &&
                        !token.IsCancellationRequested
                    )
                    {
                        Thread.Sleep(10);
                    }

                    if (token.IsCancellationRequested)
                        output.Stop();
                }
            }, token);
        }

        public static void PlayLoop(string key)
        {
            StopPlayback(key);

            if (!cached_sounds.TryGetValue(key, out var snd))
                return;

            var output = new WaveOutEvent();
            var reader = snd.CreateReader();
            var loop = new LoopStream(reader);

            output.Init(loop);
            output.Play();

            loops[key] = output;
        }

        public static void StopPlayback(string key)
        {
            if (loops.TryRemove(key, out var output))
            {
                output.Stop();
                output.Dispose();
            }
        }

        public static void PlaySynchronous(string key)
        {
            if (!cached_sounds.TryGetValue(key, out var snd))
                return;

            using (var output = new WaveOutEvent())
            using (var reader = snd.CreateReader())
            {
                output.Init(reader);
                output.Play();

                while (output.PlaybackState == PlaybackState.Playing)
                    Thread.Sleep(10);
            }
        }
    }

    class LoopStream : WaveStream
    {
        readonly WaveStream source;

        public LoopStream(WaveStream source)
        {
            this.source = source;
        }

        public override WaveFormat WaveFormat => source.WaveFormat;

        public override long Length => long.MaxValue;

        public override long Position
        {
            get => source.Position;
            set => source.Position = value;
        }

        public override int Read(byte[] buffer, int offset, int count)
        {
            int total = 0;

            while (total < count)
            {
                int read = source.Read(buffer, offset + total, count - total);

                if (read == 0)
                {
                    source.Position = 0;
                    continue;
                }

                total += read;
            }

            return total;
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                source.Dispose();

            base.Dispose(disposing);
        }
    }
}
