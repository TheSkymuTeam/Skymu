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

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;

namespace Discord.Dave
{
    class DaveSession : IDisposable
    {
        private IntPtr _session = IntPtr.Zero;
        private IntPtr _encryptor = IntPtr.Zero;

        private readonly ConcurrentDictionary<string, IntPtr> _decryptors = new ConcurrentDictionary<string, IntPtr>();
        private readonly ConcurrentDictionary<uint, string> _ssrcToUserId = new ConcurrentDictionary<uint, string>();
        private readonly DaveInterop.DAVEMLSFailureCallback _failureCb;
        private byte[] _lastExternalSender;
        private string _selfUserId;
        private bool _disposed;

        public DaveSession()
        {
            _failureCb = OnMlsFailure;
            _session = DaveInterop.daveSessionCreate(
                IntPtr.Zero,
                null,
                _failureCb,
                IntPtr.Zero);

            if (_session == IntPtr.Zero)
                throw new InvalidOperationException("[DAVE] daveSessionCreate returned null.");
        }

        public void Init(ushort protocolVersion, string channelId, string selfUserId)
        {
            _selfUserId = selfUserId;
            ulong groupId = ulong.TryParse(channelId, out ulong g) ? g : 0;
            DaveInterop.daveSessionInit(_session, protocolVersion, groupId, selfUserId);
        }

        public void SetExternalSender(byte[] payload)
        {
            _lastExternalSender = payload;
            DaveInterop.daveSessionSetExternalSender(_session, payload, (UIntPtr)payload.Length);
        }

        public byte[] ProcessProposals(byte[] payload)
        {
            string[] ids = _ssrcToUserId.Values.Concat(new[] { _selfUserId }).Distinct().ToArray();
            IntPtr idsArr = MarshalStringArray(ids, out IntPtr[] ptrs);
            try
            {
                DaveInterop.daveSessionProcessProposals(
                    _session,
                    payload, (UIntPtr)payload.Length,
                    idsArr, (UIntPtr)ids.Length,
                    out IntPtr outPtr, out UIntPtr outLen);
                byte[] result = ReadAndFreeNativeBytes(outPtr, outLen);
                return result;
            }
            finally { FreeStringArray(idsArr, ptrs); }
        }

        public bool ProcessWelcome(byte[] welcomePayload)
        {
            string[] ids = _ssrcToUserId.Values.Concat(new[] { _selfUserId }).Distinct().ToArray();
            IntPtr idsArr = MarshalStringArray(ids, out IntPtr[] ptrs);
            IntPtr result;
            try
            {
                result = DaveInterop.daveSessionProcessWelcome(
                    _session, welcomePayload, (UIntPtr)welcomePayload.Length,
                    idsArr, (UIntPtr)ids.Length);
            }
            finally { FreeStringArray(idsArr, ptrs); }

            if (result == IntPtr.Zero)
            {
                Debug.WriteLine("[DAVE] ProcessWelcome returned null, failed to join group.");
                return false;
            }

            UpdateDecryptorsFromWelcomeResult(result);
            DaveInterop.daveWelcomeResultDestroy(result);

            if (_decryptors.IsEmpty)
            {
                foreach (var userId in _ssrcToUserId.Values.Distinct())
                    TryCreateDecryptorForUser(userId);
            }

            InitSelfEncryptor();
            return true;
        }

        public bool ProcessCommit(byte[] commitPayload)
        {
            IntPtr result = DaveInterop.daveSessionProcessCommit(
                _session, commitPayload, (UIntPtr)commitPayload.Length);

            if (result == IntPtr.Zero)
            {
                Debug.WriteLine("[DAVE] ProcessCommit returned null.");
                return false;
            }

            bool failed = DaveInterop.daveCommitResultIsFailed(result);
            bool ignored = DaveInterop.daveCommitResultIsIgnored(result);

            if (!failed && !ignored)
            {
                UpdateDecryptorsFromCommitResult(result);
                InitSelfEncryptor();
            }
            else { Debug.WriteLine($"[DAVE] Commit skipped: failed={failed}, ignored={ignored}"); }

            DaveInterop.daveCommitResultDestroy(result);
            return !failed && !ignored;
        }

        private void InitSelfEncryptor()
        {
            IntPtr ratchet = DaveInterop.daveSessionGetKeyRatchet(_session, _selfUserId);
            if (ratchet == IntPtr.Zero)
            {
                Debug.WriteLine("[DAVE] No key ratchet for self, cannot encrypt outbound audio.");
                return;
            }
            if (_encryptor == IntPtr.Zero)
                _encryptor = DaveInterop.daveEncryptorCreate();
            DaveInterop.daveEncryptorSetKeyRatchet(_encryptor, ratchet);
            Debug.WriteLine("[DAVE] Self encryptor ready.");
        }

        private void TryCreateDecryptorForUser(string userId)
        {
            IntPtr ratchet = DaveInterop.daveSessionGetKeyRatchet(_session, userId);
            if (ratchet == IntPtr.Zero)
            {
                Debug.WriteLine($"[DAVE] No key ratchet for userId {userId} (fallback).");
                return;
            }
            // Gives the decryptor for this userId if we already have one, otherwise create a new one and store it.
            IntPtr decryptor = _decryptors.GetOrAdd(userId, _ => { return DaveInterop.daveDecryptorCreate(); });

            DaveInterop.daveDecryptorTransitionToKeyRatchet(decryptor, ratchet);
        }

        public byte[] ResetAndGetKeyPackage(ushort protocolVersion)
        {
            DaveInterop.daveSessionReset(_session);
            DaveInterop.daveSessionSetProtocolVersion(_session, protocolVersion);

            if (_lastExternalSender != null)
            {
                DaveInterop.daveSessionSetExternalSender(
                    _session, _lastExternalSender, (UIntPtr)_lastExternalSender.Length);
            }

            DaveInterop.daveSessionGetMarshalledKeyPackage(_session, out IntPtr ptr, out UIntPtr len);
            byte[] kp = ReadAndFreeNativeBytes(ptr, len);
            return kp;
        }

        public byte[] GetKeyPackage()
        {
            DaveInterop.daveSessionGetMarshalledKeyPackage(_session, out IntPtr ptr, out UIntPtr len);
            byte[] kp = ReadAndFreeNativeBytes(ptr, len);
            return kp;
        }

        public void RegisterSsrc(uint ssrc, string userId) { _ssrcToUserId[ssrc] = userId; }

        public byte[] DecryptAudioFrame(uint ssrc, byte[] encryptedFrame)
        {
            if (!_ssrcToUserId.TryGetValue(ssrc, out string userId)) { return null; }
            if (!_decryptors.TryGetValue(userId, out IntPtr decryptor) || decryptor == IntPtr.Zero) { return null; }

            UIntPtr maxOut = DaveInterop.daveDecryptorGetMaxPlaintextByteSize(
                decryptor, DAVEMediaType.Audio, (UIntPtr)encryptedFrame.Length);

            byte[] outBuf = new byte[(int)(ulong)maxOut];

            DAVEDecryptorResultCode code = DaveInterop.daveDecryptorDecrypt(
                decryptor,
                DAVEMediaType.Audio,
                encryptedFrame, (UIntPtr)encryptedFrame.Length,
                outBuf, maxOut,
                out UIntPtr written);

            if (code != DAVEDecryptorResultCode.Success)
            {
                if (code != DAVEDecryptorResultCode.MissingKeyRatchet)
                    Debug.WriteLine($"[DAVE] Decrypt failed for ssrc={ssrc} userId={userId}: {code}");
                return null;
            }

            byte[] plaintext = new byte[(int)(ulong)written];
            Buffer.BlockCopy(outBuf, 0, plaintext, 0, plaintext.Length);
            return plaintext;
        }

        public byte[] EncryptAudioFrame(uint ssrc, byte[] opusFrame)
        {
            if (_encryptor == IntPtr.Zero) return null;

            UIntPtr maxOut = DaveInterop.daveEncryptorGetMaxCiphertextByteSize(
                _encryptor, DAVEMediaType.Audio, (UIntPtr)opusFrame.Length);

            byte[] outBuf = new byte[(int)(ulong)maxOut];

            DAVEEncryptorResultCode code = DaveInterop.daveEncryptorEncrypt(
                _encryptor,
                DAVEMediaType.Audio,
                ssrc,
                opusFrame, (UIntPtr)opusFrame.Length,
                outBuf, maxOut,
                out UIntPtr written);

            if (code != DAVEEncryptorResultCode.Success)
            {
                Debug.WriteLine($"[DAVE] Encrypt failed: {code}");
                return null;
            }

            byte[] result = new byte[(int)(ulong)written];
            Buffer.BlockCopy(outBuf, 0, result, 0, result.Length);
            return result;
        }

        private void UpdateDecryptorsFromCommitResult(IntPtr commitResult)
        {
            DaveInterop.daveCommitResultGetRosterMemberIds(commitResult, out IntPtr ptr, out UIntPtr len);
            UpdateDecryptorsFromRosterPtr(ptr, len);
        }

        private void UpdateDecryptorsFromWelcomeResult(IntPtr welcomeResult)
        {
            DaveInterop.daveWelcomeResultGetRosterMemberIds(welcomeResult, out IntPtr ptr, out UIntPtr len);
            UpdateDecryptorsFromRosterPtr(ptr, len);
        }

        private void UpdateDecryptorsFromRosterPtr(IntPtr rosterPtr, UIntPtr rosterLen)
        {
            if (rosterPtr == IntPtr.Zero || (ulong)rosterLen == 0) return;

            int count = (int)(ulong)rosterLen;
            var userIds = new List<string>();

            for (int i = 0; i < count; i++)
            {
                long raw = Marshal.ReadInt64(rosterPtr, i * 8);
                ulong userId = (ulong)raw;
                userIds.Add(userId.ToString());
            }
            foreach (string userId in userIds)
            {
                if (userId == _selfUserId) continue;

                IntPtr ratchet = DaveInterop.daveSessionGetKeyRatchet(_session, userId);
                if (ratchet == IntPtr.Zero)
                {
                    Debug.WriteLine($"[DAVE] No key ratchet for userId {userId}.");
                    continue;
                }
                IntPtr decryptor = _decryptors.GetOrAdd(userId, _ => { return DaveInterop.daveDecryptorCreate(); });

                DaveInterop.daveDecryptorTransitionToKeyRatchet(decryptor, ratchet);
            }
        }

        private static byte[] ReadAndFreeNativeBytes(IntPtr ptr, UIntPtr length)
        {
            if (ptr == IntPtr.Zero || (ulong)length == 0) return null;
            byte[] result = new byte[(int)(ulong)length];
            Marshal.Copy(ptr, result, 0, result.Length);
            DaveInterop.daveFree(ptr);
            return result;
        }

        private static void OnMlsFailure(string source, string reason, IntPtr _)
            => Debug.WriteLine($"[DAVE] MLS failure — source={source}, reason={reason}");

        private static IntPtr MarshalStringArray(string[] strings, out IntPtr[] ptrs)
        {
            ptrs = new IntPtr[strings.Length];
            for (int i = 0; i < strings.Length; i++)
                ptrs[i] = Marshal.StringToHGlobalAnsi(strings[i]);
            IntPtr array = Marshal.AllocHGlobal(IntPtr.Size * strings.Length);
            Marshal.Copy(ptrs, 0, array, strings.Length);
            return array;
        }

        private static void FreeStringArray(IntPtr array, IntPtr[] ptrs)
        {
            foreach (var p in ptrs) Marshal.FreeHGlobal(p);
            Marshal.FreeHGlobal(array);
        }

        public void Dispose()
        {
            if (_disposed) return;
            _disposed = true;

            foreach (var kv in _decryptors)
                if (kv.Value != IntPtr.Zero)
                    DaveInterop.daveDecryptorDestroy(kv.Value);
            _decryptors.Clear();

            if (_session != IntPtr.Zero)
            {
                DaveInterop.daveSessionDestroy(_session);
                _session = IntPtr.Zero;
            }
            if (_encryptor != IntPtr.Zero)
            {
                DaveInterop.daveEncryptorDestroy(_encryptor);
                _encryptor = IntPtr.Zero;
            }

            Debug.WriteLine("[DAVE] Session disposed.");
        }
    }
}