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
using System.Runtime.InteropServices;

namespace Discord.Dave
{
    internal static class DaveInterop
    {
        private const string Lib = "libdave.dll";

        [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
        public delegate void DAVEMLSFailureCallback(
            [MarshalAs(UnmanagedType.LPStr)] string source,
            [MarshalAs(UnmanagedType.LPStr)] string reason,
            IntPtr userData);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveFree(IntPtr ptr);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr daveSessionCreate(
            IntPtr context,
            [MarshalAs(UnmanagedType.LPStr)] string authSessionId,
            DAVEMLSFailureCallback callback,
            IntPtr userData);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionDestroy(IntPtr session);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionInit(
            IntPtr session,
            ushort version,
            ulong groupId,
            [MarshalAs(UnmanagedType.LPStr)] string selfUserId);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionReset(IntPtr session);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionSetProtocolVersion(IntPtr session, ushort version);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionSetExternalSender(
            IntPtr session,
            [In] byte[] externalSender,
            UIntPtr length);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionProcessProposals(
            IntPtr session,
            [In] byte[] proposals,
            UIntPtr length,
            IntPtr recognizedUserIds,
            UIntPtr recognizedUserIdsLength,
            out IntPtr commitWelcomeBytes,
            out UIntPtr commitWelcomeBytesLength);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr daveSessionProcessCommit(
            IntPtr session,
            [In] byte[] commit,
            UIntPtr length);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr daveSessionProcessWelcome(
            IntPtr session,
            [In] byte[] welcome,
            UIntPtr length,
            IntPtr recognizedUserIds,
            UIntPtr recognizedUserIdsLength);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveSessionGetMarshalledKeyPackage(
            IntPtr session,
            out IntPtr keyPackage,
            out UIntPtr length);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr daveSessionGetKeyRatchet(
            IntPtr session,
            [MarshalAs(UnmanagedType.LPStr)] string userId);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool daveCommitResultIsFailed(IntPtr commitResult);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool daveCommitResultIsIgnored(IntPtr commitResult);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveCommitResultGetRosterMemberIds(
            IntPtr commitResult,
            out IntPtr rosterIds,
            out UIntPtr rosterIdsLength);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveCommitResultDestroy(IntPtr commitResult);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveWelcomeResultGetRosterMemberIds(
            IntPtr welcomeResult,
            out IntPtr rosterIds,
            out UIntPtr rosterIdsLength);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveWelcomeResultDestroy(IntPtr welcomeResult);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr daveDecryptorCreate();

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveDecryptorDestroy(IntPtr decryptor);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveDecryptorTransitionToKeyRatchet(IntPtr decryptor, IntPtr keyRatchet);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern DAVEDecryptorResultCode daveDecryptorDecrypt(
            IntPtr decryptor,
            DAVEMediaType mediaType,
            [In] byte[] encryptedFrame,
            UIntPtr encryptedFrameLength,
            [Out] byte[] frame,
            UIntPtr frameCapacity,
            out UIntPtr bytesWritten);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern UIntPtr daveDecryptorGetMaxPlaintextByteSize(
            IntPtr decryptor,
            DAVEMediaType mediaType,
            UIntPtr encryptedFrameSize);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr daveEncryptorCreate();

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveEncryptorDestroy(IntPtr encryptor);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern void daveEncryptorSetKeyRatchet(IntPtr encryptor, IntPtr keyRatchet);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern UIntPtr daveEncryptorGetMaxCiphertextByteSize(
            IntPtr encryptor,
            DAVEMediaType mediaType,
            UIntPtr frameSize);

        [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
        public static extern DAVEEncryptorResultCode daveEncryptorEncrypt(
            IntPtr encryptor,
            DAVEMediaType mediaType,
            uint ssrc,
            [In] byte[] frame,
            UIntPtr frameLength,
            [Out] byte[] encryptedFrame,
            UIntPtr encryptedFrameCapacity,
            out UIntPtr bytesWritten);
    }

    internal enum DAVEMediaType : int
    {
        Audio = 0,
        Video = 1
    }

    internal enum DAVEEncryptorResultCode : int
    {
        Success = 0,
        EncryptionFailure = 1,
        MissingKeyRatchet = 2,
        MissingCryptor = 3,
        TooManyAttempts = 4
    }

    internal enum DAVEDecryptorResultCode : int
    {
        Success = 0,
        DecryptionFailure = 1,
        MissingKeyRatchet = 2,
        InvalidNonce = 3,
        MissingCryptor = 4
    }
}