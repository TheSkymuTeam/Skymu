/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using Concentus;
using Concentus.Enums;
using Concentus.Structs;
using Discord.Dave;
using NAudio.Wave;
using NAudio.Wave.SampleProviders;
using Org.BouncyCastle.Crypto;
using Org.BouncyCastle.Crypto.Engines;
using Org.BouncyCastle.Crypto.Modes;
using Org.BouncyCastle.Crypto.Parameters;
using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Discord.Networking
{
    class CallUDP
    {
        // The UDP client for listening into voice audio
        private UdpClient _udpClient;
        // The Super Secret Key received in op_code: 4
        private byte[] _secretKey;
        // SSRC, basically used as an identifier
        private int _ssrc;
        // Discord's DAVE encryption session
        private DaveSession _daveSession;
        // Cancellation token used to stop the UDP receive loop cleanly on disconnect
        private CancellationTokenSource _cts;
        // One Opus decoder per SSRC, each speaker is an independent stream with its own decoder state
        private readonly ConcurrentDictionary<uint, IOpusDecoder> _opusDecoders = new();
        // A ring buffer that sits between the decoder and the audio device
        // Decoded PCM frames are written here and NAudio drains it at the hardware sample rate
        private BufferedWaveProvider _waveBuffer;
        // The audio output device, plays back whatever is in the wave buffer
        private WaveOutEvent _waveOut;
        // omega
        private bool _muted = false;


        // Properties for outgoing voice packets
        // (When we are talking, essentially)
        private WaveInEvent _waveIn;
        private IOpusEncoder _opusEncoder;
        private ushort _sendSequence = 0;
        private uint _sendTimestamp = 0;
        private uint _sendNonce = 0;

        // Pre-allocated buffers so we're not hitting the GC every 20ms on the audio callback thread
        private readonly short[] _pcmBuffer = new short[960];
        private readonly byte[] _opusBuf = new byte[1275]; // max Opus frame size

        // Bounded channel between the audio callback (producer) and the UDP sender thread (consumer)
        // Decouples the audio thread from network I/O so a slow send never delays the next mic frame
        private readonly Channel<byte[]> _sendQueue =
            Channel.CreateBounded<byte[]>(new BoundedChannelOptions(20)
            {
                FullMode = BoundedChannelFullMode.DropOldest,
                SingleReader = true,
                SingleWriter = true
            });

        // Use a fake microphone (audio file) instead of the real mic
        // Only use this for debugging purposes, like testing packet sending
        private bool useFakeMic = false;
        // Put the path to your audio file, use an MP3!
        private string fakeMicFile = @"";

        // Fake mic sound properties
        private IOpusEncoder _fakeMicEncoder;
        private IWaveProvider _fakeMicReader;
        private WaveFileReader _fakeMicSource;

        public CallUDP(UdpClient udpClient, byte[] secretKey, int ssrc)
        {
            _udpClient = udpClient;
            _secretKey = secretKey;
            _ssrc = ssrc;

            InitAudio();
            InitMicrophone();

            // If using fake mic, open the audio file
            if (useFakeMic && fakeMicFile != null)
            {
                // Convert MP3 to 48kHz mono PCM for Discord
                _fakeMicSource = new WaveFileReader(fakeMicFile);
                var stereoToMono = new StereoToMonoSampleProvider(_fakeMicSource.ToSampleProvider());
                var resampled = new WdlResamplingSampleProvider(stereoToMono, 48000);
                _fakeMicReader = new SampleToWaveProvider16(resampled);
            }
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
            // Capture mono 48kHz, Discord voice is mono from clients
            _opusEncoder = OpusCodecFactory.CreateEncoder(48000, 1, OpusApplication.OPUS_APPLICATION_VOIP);
            _opusEncoder.Bitrate = 64000;
            // Capture mono 48kHz from the fake microphone too
            _fakeMicEncoder = OpusCodecFactory.CreateEncoder(48000, 1, OpusApplication.OPUS_APPLICATION_AUDIO);
            // This bitrate is much more viable for a full song
            _fakeMicEncoder.Bitrate = 128000;
            // PacketLossPercent is on the concrete OpusEncoder,
            // not the IOpusEncoder interface, so we cast to access them
            if (_opusEncoder is OpusEncoder concreteEncoder)
            {
                // Tell the encoder to expect ~5% packet loss so it encodes more robustly
                concreteEncoder.PacketLossPercent = 5;
            }

            if (!useFakeMic)
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
            else
            {
                // Do nothing
            }
        }

        private async Task FakeMicLoop()
        {
            byte[] buffer = new byte[1920];
            var stopwatch = new Stopwatch();

            while (!(_cts?.IsCancellationRequested ?? true))
            {
                stopwatch.Restart();

                int bytesRead = 0;
                while (bytesRead < buffer.Length)
                {
                    int read = _fakeMicReader.Read(buffer, bytesRead, buffer.Length - bytesRead);
                    if (read == 0) { _fakeMicSource.Position = 0; continue; }
                    bytesRead += read;
                }

                for (int i = 0; i < 960; i++)
                    _pcmBuffer[i] = (short)((buffer[i * 2 + 1] << 8) | buffer[i * 2]);

                int opusLen = _fakeMicEncoder.Encode(_pcmBuffer.AsSpan(0, 960), 960, _opusBuf.AsSpan(), _opusBuf.Length);
                if (opusLen <= 0) continue;

                byte[] opusFrame = new byte[opusLen];
                Buffer.BlockCopy(_opusBuf, 0, opusFrame, 0, opusLen);

                byte[] daveFrame = _daveSession?.EncryptAudioFrame((uint)_ssrc, opusFrame);
                if (daveFrame != null)
                {
                    byte[] packet = BuildAndEncryptRtp(daveFrame);
                    _sendQueue.Writer.TryWrite(packet);
                }

                int elapsed = (int)stopwatch.ElapsedMilliseconds;
                int delay = 20 - elapsed;
                if (delay > 0)
                    await Task.Delay(delay);
            }
        }

        public void UpdateSecretKey(byte[] secretKey) { _secretKey = secretKey; }
        public void UpdateDaveSession(DaveSession daveSession) { _daveSession = daveSession; }

        public void Start()
        {
            _cts = new CancellationTokenSource();
            _ = Task.Run(() => ReceiveLoop(_cts.Token));
            _ = Task.Run(() => SendLoop(_cts.Token));
            if (!useFakeMic)
            {
                // Do nothing
            }
            else
            {
                _ = Task.Run(FakeMicLoop);
            }
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
            // Dispose of the fake microphone
            _fakeMicSource?.Dispose();
        }

        private async Task SendLoop(CancellationToken cancellationToken)
        {
            var reader = _sendQueue.Reader;
            try
            {
                while (await reader.WaitToReadAsync(cancellationToken))
                {

                    while (reader.TryRead(out byte[] packet))
                    {
                        if (_muted) continue;
                        try
                        {
                            await _udpClient.SendAsync(packet, packet.Length);
                        }
                        catch (Exception ex)
                        {
                            Debug.WriteLine($"[UDP] Send error: {ex.Message}");
                        }
                    }
                }
            }
            catch (OperationCanceledException) { }
        }

        private async Task ReceiveLoop(CancellationToken cancellationToken)
        {
            try
            {
                while (!cancellationToken.IsCancellationRequested)
                {
                    var result = await _udpClient.ReceiveAsync();
                    HandleVoicePacket(result.Buffer);
                }
            }
            catch (OperationCanceledException) { }
            catch (Exception ex) { Debug.WriteLine($"[UDP] Receive error: {ex.Message}"); }
        }

        private void HandleVoicePacket(byte[] data)
        {
            // All RTP packets must be at least 12 bytes (the fixed header size)
            if (data.Length < 12) return;

            // IP discovery response packets start with 0x00 0x02
            // They are responses to our IP discovery request, not voice data
            if (data[0] == 0x00 && data[1] == 0x02) return;
            byte flags = data[0];

            byte payloadType = data[1];
            // RTCP packet, return before it actually tries to decrypt
            if (payloadType >= 200 && payloadType <= 204)
                return;

            bool markerBit = (data[1] & 0x80) != 0;
            // Increments by 1 for each packet sent, used to detect packet loss and reorder
            ushort sequence = (ushort)((data[2] << 8) | data[3]);
            // For Opus at 48kHz with 20ms frames this increments by 960 per packet
            uint timestamp = (uint)((data[4] << 24) | (data[5] << 16) | (data[6] << 8) | data[7]);
            // Each user in the call has their own SSRC, given to us in op_code: 2 for our own stream
            uint ssrc = (uint)((data[8] << 24) | (data[9] << 16) | (data[10] << 8) | data[11]);

            // We can't decrypt without the secret key from op_code: 4
            if (_secretKey == null || _secretKey.Length == 0)
            {
                Debug.WriteLine("[UDP] No secret key yet, cannot decrypt.");
                return;
            }

            // Layer 1: strip transport encryption (aead_aes256_gcm_rtpsize)
            byte[] decrypted = Decrypt(data, _secretKey);
            if (decrypted == null)
            {
                return;
            }

            if (decrypted.Length == 3 &&
                decrypted[0] == 0xF8 &&
                decrypted[1] == 0xFF &&
                decrypted[2] == 0xFE)
            {
                return;
            }

            // Layer 2: strip DAVE E2EE using libdave if a session is active
            // Without a session the transport plaintext is already raw Opus
            if (_daveSession == null)
            {
                Debug.WriteLine($"[UDP] No DAVE session yet, treating as raw Opus.");
                return;
            }

            // The SFU synthesises 3-byte silence packets (0xF8 0xFF 0xFE) that bypass E2EE
            // per the DAVE protocol spec, so we just pass them through untouched
            if (payloadType == 200 || payloadType == 201) return;
            if (decrypted.Length == 3 && decrypted[0] == 0xF8 && decrypted[1] == 0xFF && decrypted[2] == 0xFE) return;

            byte[] davePayload = decrypted;
            bool hasExtension = (data[0] & 0x10) != 0;
            int cc = data[0] & 0x0F;
            int baseHeaderSize = 12 + (cc * 4);
            if (hasExtension && data.Length > baseHeaderSize + 4)
            {
                int extLen = (data[baseHeaderSize + 2] << 8) | data[baseHeaderSize + 3];
                int extBodyBytes = extLen * 4;
                if (decrypted.Length > extBodyBytes)
                {
                    davePayload = new byte[decrypted.Length - extBodyBytes];
                    Buffer.BlockCopy(decrypted, extBodyBytes, davePayload, 0, davePayload.Length);
                }
            }

            IOpusDecoder decoder = _opusDecoders.GetOrAdd(ssrc, _ => OpusCodecFactory.CreateDecoder(48000, 2));
            short[] pcm = new short[1920];
            int samplesDecoded;

            byte[] opus = _daveSession.DecryptAudioFrame(ssrc, davePayload);
            if (opus == null)
            {
                Debug.WriteLine($"[UDP] DAVE decryption failed for ssrc={ssrc}. Timestamp: {DateTimeOffset.UtcNow.ToUnixTimeSeconds()}");
                samplesDecoded = decoder.Decode(ReadOnlySpan<byte>.Empty, pcm.AsSpan(), 960);
            }
            else
            {
                samplesDecoded = decoder.Decode(opus.AsSpan(), pcm.AsSpan(), 960);
                //Debug.WriteLine($"[UDP] Decoded {samplesDecoded} samples from ssrc={ssrc}");
            }

            if (samplesDecoded > 0)
            {
                byte[] pcmBytes = new byte[samplesDecoded * 4];
                Buffer.BlockCopy(pcm, 0, pcmBytes, 0, pcmBytes.Length);
                _waveBuffer.AddSamples(pcmBytes, 0, pcmBytes.Length);
            }
        }

        public static byte[] Decrypt(byte[] packet, byte[] key)
        {
            try
            {
                int cc = packet[0] & 0x0F;
                bool hasExtension = (packet[0] & 0x10) != 0;
                int headerSize = 12 + (cc * 4);

                if (hasExtension && packet.Length > headerSize + 4) { headerSize += 4; }
                uint nonceVal = (uint)((packet[packet.Length - 4] << 24) |
                                       (packet[packet.Length - 3] << 16) |
                                       (packet[packet.Length - 2] << 8) |
                                        packet[packet.Length - 1]);

                byte[] nonce = new byte[12];
                nonce[0] = (byte)(nonceVal >> 24);
                nonce[1] = (byte)(nonceVal >> 16);
                nonce[2] = (byte)(nonceVal >> 8);
                nonce[3] = (byte)(nonceVal);

                int cipherLen = packet.Length - headerSize - 4;
                byte[] ciphertext = new byte[cipherLen];
                Array.Copy(packet, headerSize, ciphertext, 0, cipherLen);

                byte[] aad = new byte[headerSize];
                Array.Copy(packet, 0, aad, 0, headerSize);

                GcmBlockCipher cipher = new GcmBlockCipher(new AesEngine());
                AeadParameters parameters = new AeadParameters(new KeyParameter(key), 128, nonce, aad);
                cipher.Init(false, parameters);

                byte[] output = new byte[cipher.GetOutputSize(ciphertext.Length)];
                int len = cipher.ProcessBytes(ciphertext, 0, ciphertext.Length, output, 0);
                cipher.DoFinal(output, len);

                return output;
            }
            catch (InvalidCipherTextException)
            {
                return null;
            }
        }

        private byte[] BuildAndEncryptRtp(byte[] payload)
        {
            byte[] header = new byte[12];
            header[0] = 0x80;
            header[1] = 0x78;
            header[2] = (byte)(_sendSequence >> 8);
            header[3] = (byte)(_sendSequence);
            header[4] = (byte)(_sendTimestamp >> 24);
            header[5] = (byte)(_sendTimestamp >> 16);
            header[6] = (byte)(_sendTimestamp >> 8);
            header[7] = (byte)(_sendTimestamp);
            header[8] = (byte)((uint)_ssrc >> 24);
            header[9] = (byte)((uint)_ssrc >> 16);
            header[10] = (byte)((uint)_ssrc >> 8);
            header[11] = (byte)((uint)_ssrc);

            _sendSequence++;
            _sendTimestamp += 960; // 20ms at 48kHz

            _sendNonce++;
            byte[] nonce = new byte[12];
            nonce[0] = (byte)(_sendNonce >> 24);
            nonce[1] = (byte)(_sendNonce >> 16);
            nonce[2] = (byte)(_sendNonce >> 8);
            nonce[3] = (byte)(_sendNonce);

            GcmBlockCipher cipher = new GcmBlockCipher(new AesEngine());
            cipher.Init(true, new AeadParameters(new KeyParameter(_secretKey), 128, nonce, header));

            byte[] ciphertext = new byte[cipher.GetOutputSize(payload.Length)];
            int len = cipher.ProcessBytes(payload, 0, payload.Length, ciphertext, 0);
            cipher.DoFinal(ciphertext, len);

            byte[] packet = new byte[header.Length + ciphertext.Length + 4];
            Buffer.BlockCopy(header, 0, packet, 0, header.Length);
            Buffer.BlockCopy(ciphertext, 0, packet, header.Length, ciphertext.Length);
            packet[packet.Length - 4] = (byte)(_sendNonce >> 24);
            packet[packet.Length - 3] = (byte)(_sendNonce >> 16);
            packet[packet.Length - 2] = (byte)(_sendNonce >> 8);
            packet[packet.Length - 1] = (byte)(_sendNonce);

            return packet;
        }

        private void OnMicData(object sender, WaveInEventArgs e)
        {
            if (_secretKey == null || _secretKey.Length == 0) return;
            if (_daveSession == null) return;
            // To prevent artifacting in calls, it mostly works, but there's more to the issue
            // However, the artifacting could also be because of my DroidCam setup, need to investigate
            // UPDATE: It is not just my DroidCam setup, tested with a friend and it's still choppy / artifacting.
            if (e.BytesRecorded < 1920) return;

            Buffer.BlockCopy(e.Buffer, 0, _pcmBuffer, 0, 960 * sizeof(short));
            int opusLen = _opusEncoder.Encode(_pcmBuffer.AsSpan(0, 960), 960, _opusBuf.AsSpan(), _opusBuf.Length);
            if (opusLen <= 0) return;

            byte[] opusFrame = new byte[opusLen];
            Buffer.BlockCopy(_opusBuf, 0, opusFrame, 0, opusLen);

            byte[] daveFrame = _daveSession.EncryptAudioFrame((uint)_ssrc, opusFrame);
            if (daveFrame == null) return;

            byte[] packet = BuildAndEncryptRtp(daveFrame);
            if (packet == null) return;

            _sendQueue.Writer.TryWrite(packet);
        }
    }
}