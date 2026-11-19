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

using Avalonia.Platform;
using NAudio.Wave;
using Silk.NET.OpenAL;
using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

namespace Skymu.Sounds
{
   static class SoundManager
    {
        const int MAX_POOLED_SOURCES = 32;

        static readonly object sync = new object();

        static AL al;
        static ALContext alc;
        static unsafe Device* device;
        static unsafe Context* context;
        static bool ready;

        static readonly Dictionary<string, uint> buffers = new Dictionary<string, uint>();

        // Reusable sources for firing and forgetting one shot audio playbacks.
        static readonly List<uint> pool = new List<uint>();
        static readonly Dictionary<string, uint> loops = new Dictionary<string, uint>();

        public static unsafe void Init()
        {
            lock (sync)
            {
                if (ready)
                    return;

                try
                {
                    alc = ALContext.GetApi();
                    al = AL.GetApi();

                    device = alc.OpenDevice("");
                    if (device == null)
                    {
                        Debug.WriteLine("SoundManager: no OpenAL device available.");
                        return;
                    }

                    context = alc.CreateContext(device, null);
                    if (context == null || !alc.MakeContextCurrent(context))
                    {
                        Debug.WriteLine("SoundManager: could not create an OpenAL context.");
                        Shutdown();
                        return;
                    }

                    ready = true;
                }
                catch (Exception ex)
                {
                    // Missing the native library, no audio hardware was detected, etc, just for these don't take the app down.
                    Debug.WriteLine("SoundManager: OpenAL init failed: " + ex);
                    Shutdown();
                    return;
                }
            }

            Settings.Default.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == "SoundPack")
                {
                    LoadSounds();
                }
            };
            LoadSounds();
        }

        public static unsafe void Shutdown()
        {
            lock (sync)
            {
                ready = false;

                if (al != null)
                {
                    foreach (var src in loops.Values)
                    {
                        al.SourceStop(src);
                        al.DeleteSource(src);
                    }
                    loops.Clear();

                    foreach (var src in pool)
                    {
                        al.SourceStop(src);
                        al.DeleteSource(src);
                    }
                    pool.Clear();

                    foreach (var buf in buffers.Values)
                        al.DeleteBuffer(buf);
                    buffers.Clear();
                }

                if (alc != null)
                {
                    if (context != null)
                    {
                        alc.MakeContextCurrent(null);
                        alc.DestroyContext(context);
                        context = null;
                    }

                    if (device != null)
                    {
                        alc.CloseDevice(device);
                        device = null;
                    }
                }
            }
        }

        static void LoadSounds()
        {
            lock (sync)
            {
                if (!ready)
                    return;

                // Remember which loops were running so they can be restarted with the new pack.
                var activeLoops = new List<string>(loops.Keys);
                foreach (var key in activeLoops)
                    StopPlayback(key);

                // Detach buffers from pooled sources so the old ones can be deleted.
                foreach (var src in pool)
                {
                    al.SourceStop(src);
                    al.SetSourceProperty(src, SourceInteger.Buffer, 0);
                }

                foreach (var buf in buffers.Values)
                    al.DeleteBuffer(buf);
                buffers.Clear();
                al.GetError(); // clear anything left over from a buffer that was still in use

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

                foreach (var key in activeLoops)
                    PlayLoop(key);
            }
        }

        static void Load(string filename, string path = "", string fallback = Universal.NAME)
        {
            if (path == "")
                path = Settings.SoundPack.ToString();

            var uri = new Uri(
                $"avares://Skymu/Sounds/{path}/{filename}",
                UriKind.Absolute
            );

            try
            {
                byte[] data;
                using (var stream = AssetLoader.Open(uri))
                using (var ms = new MemoryStream())
                {
                    stream.CopyTo(ms);
                    data = ms.ToArray();
                }

                uint buffer = CreateBuffer(data);
                if (buffer != 0)
                {
                    buffers[Path.GetFileNameWithoutExtension(filename)] = buffer;
                    return;
                }
            }
            catch
            {
            }

            if (fallback != string.Empty && path != fallback)
                Load(filename, fallback, Universal.NAME);
        }

        // decode WAV file to PCM buffer
        static unsafe uint CreateBuffer(byte[] wav)
        {
            short[] pcm;
            BufferFormat format;
            int sampleRate;

            using (var reader = new WaveFileReader(new MemoryStream(wav, false)))
            {
                int channels = reader.WaveFormat.Channels;
                if (channels == 1)
                    format = BufferFormat.Mono16;
                else if (channels == 2)
                    format = BufferFormat.Stereo16;
                else
                    return 0;

                sampleRate = reader.WaveFormat.SampleRate;

                // normalize 16bit
                var samples = reader.ToSampleProvider();
                var converted = new List<short>();
                var chunk = new float[4096 * channels];
                int read;

                while ((read = samples.Read(chunk, 0, chunk.Length)) > 0)
                {
                    for (int i = 0; i < read; i++)
                    {
                        float v = Math.Max(-1f, Math.Min(1f, chunk[i]));
                        converted.Add((short)(v * short.MaxValue));
                    }
                }

                pcm = converted.ToArray();
            }

            if (pcm.Length == 0)
                return 0;

            uint buffer = al.GenBuffer();
            fixed (short* p = pcm)
            {
                al.BufferData(buffer, format, p, pcm.Length * sizeof(short), sampleRate);
            }

            if (al.GetError() != AudioError.NoError)
            {
                al.DeleteBuffer(buffer);
                return 0;
            }

            return buffer;
        }

        static bool IsActive(uint source)
        {
            al.GetSourceProperty(source, GetSourceInteger.SourceState, out int state);
            return state == (int)SourceState.Playing || state == (int)SourceState.Paused;
        }

        // Caller must hold lock
        static uint AcquirePooledSource()
        {
            foreach (var src in pool)
            {
                if (!IsActive(src))
                    return src;
            }

            if (pool.Count >= MAX_POOLED_SOURCES)
                return 0;

            uint created = al.GenSource();
            if (al.GetError() != AudioError.NoError)
                return 0;

            pool.Add(created);
            return created;
        }

        // Caller must hold lock
        static uint CreateDedicatedSource(uint buffer, bool loop)
        {
            uint src = al.GenSource();
            if (al.GetError() != AudioError.NoError)
                return 0;

            al.SetSourceProperty(src, SourceInteger.Buffer, (int)buffer);
            al.SetSourceProperty(src, SourceBoolean.Looping, loop);
            return src;
        }

        public static void Play(string key)
        {
            lock (sync)
            {
                if (!ready || !buffers.TryGetValue(key, out var buffer))
                    return;

                uint src = AcquirePooledSource();
                if (src == 0)
                    return;

                al.SetSourceProperty(src, SourceInteger.Buffer, (int)buffer);
                al.SetSourceProperty(src, SourceBoolean.Looping, false);
                al.SourcePlay(src);
            }
        }

        public static async Task PlayAsync(string key, CancellationToken token = default)
        {
            if (token.IsCancellationRequested)
                return;

            uint src;
            lock (sync)
            {
                if (!ready || !buffers.TryGetValue(key, out var buffer))
                    return;

                src = CreateDedicatedSource(buffer, false);
                if (src == 0)
                    return;

                al.SourcePlay(src);
            }

            try
            {
                while (!token.IsCancellationRequested && SourceIsActive(src))
                    await Task.Delay(10).ConfigureAwait(false);
            }
            finally
            {
                ReleaseDedicatedSource(src);
            }
        }

        public static void PlayLoop(string key)
        {
            lock (sync)
            {
                StopPlayback(key);

                if (!ready || !buffers.TryGetValue(key, out var buffer))
                    return;

                uint src = CreateDedicatedSource(buffer, true);
                if (src == 0)
                    return;

                al.SourcePlay(src);
                loops[key] = src;
            }
        }

        public static void StopPlayback(string key)
        {
            lock (sync)
            {
                if (loops.Remove(key, out var src))
                    ReleaseDedicatedSource(src);
            }
        }

        public static void PlaySynchronous(string key)
        {
            uint src;
            lock (sync)
            {
                if (!ready || !buffers.TryGetValue(key, out var buffer))
                    return;

                src = CreateDedicatedSource(buffer, false);
                if (src == 0)
                    return;

                al.SourcePlay(src);
            }

            try
            {
                while (SourceIsActive(src))
                    Thread.Sleep(10);
            }
            finally
            {
                ReleaseDedicatedSource(src);
            }
        }

        static bool SourceIsActive(uint src)
        {
            lock (sync)
            {
                return ready && IsActive(src);
            }
        }

        static void ReleaseDedicatedSource(uint src)
        {
            lock (sync)
            {
                if (al == null)
                    return;

                al.SourceStop(src);
                al.DeleteSource(src);
            }
        }
    }
}