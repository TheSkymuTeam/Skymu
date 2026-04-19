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

using NAudio.Wave;
using System;
using System.Diagnostics;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;
using static ToxCore;

// Taken from Discord.Network.CallUDP. Thanks to the devs! (patricktbp and omega, I think)
// message from omega: TODO move mic and speaker logic to app instead of plugin

namespace Tox
{
    class ToxCall
    {
        // Cancellation token used to stop the UDP receive loop cleanly on disconnect
        private CancellationTokenSource _cts;
        // A ring buffer that sits between the decoder and the audio device
        // Decoded PCM frames are written here and NAudio drains it at the hardware sample rate
        private BufferedWaveProvider _waveBuffer;
        // The audio output device, plays back whatever is in the wave buffer
        private WaveOutEvent _waveOut;
        // omega
        private bool _muted = false;

        // Tox stuff
        IntPtr av;
        UInt32 fid;

        // Properties for outgoing voice packets
        // (When we are talking, essentially)
        private WaveInEvent _waveIn;

        // Update the send queue to store the required arguments for toxav_audio_send_frame
        private readonly Channel<(Int16[] pcm, UIntPtr sample_count, byte channels, UInt32 sampling_rate)> _sendQueue =
            Channel.CreateBounded<(Int16[] pcm, UIntPtr sample_count, byte channels, UInt32 sampling_rate)>(new BoundedChannelOptions(20)
            {
                FullMode = BoundedChannelFullMode.DropOldest,
                SingleReader = true,
                SingleWriter = true
            });

        public ToxCall(IntPtr av, UInt32 fid)
        {
            this.av = av;
            this.fid = fid;
            InitAudio();
            InitMicrophone();
        }

        private void InitAudio()
        {
            var format = new WaveFormat(48000, 16, 2);
            _waveBuffer = new BufferedWaveProvider(format)
            {
                BufferDuration = TimeSpan.FromSeconds(2),
                DiscardOnBufferOverflow = true
            };
            _waveOut = new WaveOutEvent();
            _waveOut.Init(_waveBuffer);
            _waveOut.Play();
        }

        public void SetMuted(bool muted) { _muted = muted; }

        private void InitMicrophone()
        {
            if (WaveInEvent.DeviceCount == 0)
            {
                Debug.WriteLine("[MIC] No microphone devices found, skipping mic init.");
                return;
            }

            _waveIn = new WaveInEvent
            {
                WaveFormat = new WaveFormat(48000, 16, 1),
                BufferMilliseconds = 20,
                NumberOfBuffers = 4
            };
            _waveIn.DataAvailable += OnMicData;
            try
            {
                _waveIn.StartRecording();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[MIC] Failed to start recording: {ex.Message}");
                _waveIn.Dispose();
                _waveIn = null;
            }
        }

        public void Start()
        {
            _cts = new CancellationTokenSource();
            _ = Task.Run(() => SendLoop(_cts.Token));
        }

        public void Stop()
        {
            _cts?.Cancel();
            _cts?.Dispose();
            _cts = null;
            // Dispose of the microphone
            _waveIn?.StopRecording();
            _waveIn?.Dispose();
            // Dispose of the incoming audio
            _waveOut?.Stop();
            _waveOut?.Dispose();
        }

        private async Task SendLoop(CancellationToken cancellationToken)
        {
            var reader = _sendQueue.Reader;
            try
            {
                while (await reader.WaitToReadAsync(cancellationToken))
                {
                    while (reader.TryRead(out var packet))
                    {
                        if (_muted || !Core.avACall.SAudio) continue;
                        try
                        {
                            if (!toxav_audio_send_frame(av, fid, packet.pcm, packet.sample_count, packet.channels, packet.sampling_rate, out var err))
                            {
                                Debug.WriteLine($"Tox: Error when sending audio, {err}");
                            }
                        }
                        catch (Exception ex)
                        {
                            Debug.WriteLine($"Tox: Error when sending audio, {ex.Message}");
                        }
                    }
                }
            }
            catch (OperationCanceledException) { }
        }

        public void HandleVoicePacket(Int16[] pcm, UIntPtr sample_count, byte channels, UInt32 sampling_rate)
        {
            int byteCount = (int)sample_count * channels * sizeof(short);
            byte[] pcmBytes = new byte[byteCount];
            Buffer.BlockCopy(pcm, 0, pcmBytes, 0, byteCount);

            _waveBuffer.AddSamples(pcmBytes, 0, pcmBytes.Length);
        }

        private void OnMicData(object sender, WaveInEventArgs e)
        {
            if (e.BytesRecorded < 1920) return;

            Int16[] pcm = new Int16[960];
            Buffer.BlockCopy(e.Buffer, 0, pcm, 0, 960 * sizeof(short));

            _sendQueue.Writer.TryWrite((pcm, (UIntPtr)960, 1, 48000));
        }
    }
}