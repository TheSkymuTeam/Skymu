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

using Avalonia.Controls;
using Avalonia.Platform;
using Avalonia.Threading;
using System;
using System.Runtime.InteropServices;

namespace Skymu.Crossplatform
{
    public class Taskbar
    {
        public static void Flash(Window window)
        {
            if (window == null)
                return;

            var handle = window.TryGetPlatformHandle();

            if (handle == null)
                return;

            try
            {
                if (Universal.Platform.OS == OS.Windows)
                    FlashWindows(handle.Handle);
                else if (Universal.Platform.OS == OS.MacOS)
                    Dispatcher.UIThread.Post(BounceDock);
                else if (
                    (Universal.Platform.OS == OS.Linux || Universal.Platform.OS == OS.FreeBSD)
                )
                    FlashX11(handle);
            }
            catch
            {
                // never let it take the app down
            }
        }

        /*==================== Windows ====================*/

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        [return: MarshalAs(UnmanagedType.Bool)]
        private static extern bool FlashWindowEx(ref FLASHWINFO pwfi);

        [StructLayout(LayoutKind.Sequential)]
        private struct FLASHWINFO
        {
            public uint cbSize;
            public IntPtr hwnd;
            public uint dwFlags;
            public uint uCount;
            public uint dwTimeout;
        }

        private const uint FLASHW_STOP = 0;
        private const uint FLASHW_CAPTION = 1;
        private const uint FLASHW_TRAY = 2;
        private const uint FLASHW_ALL = 3;
        private const uint FLASHW_TIMER = 4;
        private const uint FLASHW_TIMERNOFG = 12;

        private static void FlashWindows(IntPtr hwnd)
        {
            FLASHWINFO fw = new FLASHWINFO
            {
                cbSize = (uint)Marshal.SizeOf(typeof(FLASHWINFO)),
                hwnd = hwnd,
                dwFlags = FLASHW_ALL | FLASHW_TIMERNOFG,
                uCount = uint.MaxValue,
                dwTimeout = 0,
            };

            FlashWindowEx(ref fw);
        }

        /*==================== macOS ====================*/

        private const string ObjC = "/usr/lib/libobjc.A.dylib";

        [DllImport(ObjC)]
        private static extern IntPtr objc_getClass(string name);

        [DllImport(ObjC)]
        private static extern IntPtr sel_registerName(string name);

        [DllImport(ObjC, EntryPoint = "objc_msgSend")]
        private static extern IntPtr objc_msgSend(IntPtr receiver, IntPtr selector);

        [DllImport(ObjC, EntryPoint = "objc_msgSend")]
        private static extern IntPtr objc_msgSend(IntPtr receiver, IntPtr selector, IntPtr arg);

        private const int NSCriticalRequest = 0; // bounce until the app becomes active
        private const int NSInformationalRequest = 10; // bounce once

        private static void BounceDock()
        {
            try
            {
                IntPtr app = objc_msgSend(
                    objc_getClass("NSApplication"),
                    sel_registerName("sharedApplication")
                );

                if (app != IntPtr.Zero)
                    objc_msgSend(
                        app,
                        sel_registerName("requestUserAttention:"),
                        (IntPtr)NSCriticalRequest
                    );
            }
            catch { }
        }

        /*==================== Linux / X11 ====================*/

        private const string LibX11 = "libX11.so.6";

        [DllImport(LibX11)]
        private static extern IntPtr XOpenDisplay(IntPtr displayName);

        [DllImport(LibX11)]
        private static extern int XCloseDisplay(IntPtr display);

        [DllImport(LibX11)]
        private static extern IntPtr XDefaultRootWindow(IntPtr display);

        [DllImport(LibX11)]
        private static extern IntPtr XInternAtom(IntPtr display, string name, bool onlyIfExists);

        [DllImport(LibX11)]
        private static extern int XSendEvent(
            IntPtr display,
            IntPtr window,
            bool propagate,
            IntPtr eventMask,
            IntPtr xevent
        );

        [DllImport(LibX11)]
        private static extern int XFlush(IntPtr display);

        [StructLayout(LayoutKind.Sequential)]
        private struct XClientMessageEvent
        {
            public int type;
            public IntPtr serial;
            public int send_event;
            public IntPtr display;
            public IntPtr window;
            public IntPtr message_type;
            public int format;
            public IntPtr data0;
            public IntPtr data1;
            public IntPtr data2;
            public IntPtr data3;
            public IntPtr data4;
        }

        private const int ClientMessage = 33;
        private const long SubstructureNotifyMask = 1L << 19;
        private const long SubstructureRedirectMask = 1L << 20;
        private const int NET_WM_STATE_ADD = 1;

        private static void FlashX11(IPlatformHandle handle)
        {
            if (handle.HandleDescriptor != "XID")
                return;

            IntPtr display = XOpenDisplay(IntPtr.Zero);
            if (display == IntPtr.Zero)
                return;

            try
            {
                IntPtr root = XDefaultRootWindow(display);

                var message = new XClientMessageEvent
                {
                    type = ClientMessage,
                    send_event = 1,
                    display = display,
                    window = handle.Handle,
                    message_type = XInternAtom(display, "_NET_WM_STATE", false),
                    format = 32,
                    data0 = (IntPtr)NET_WM_STATE_ADD,
                    data1 = XInternAtom(display, "_NET_WM_STATE_DEMANDS_ATTENTION", false),
                    data2 = IntPtr.Zero,
                    data3 = (IntPtr)1, 
                };

                IntPtr buffer = Marshal.AllocHGlobal(24 * IntPtr.Size);
                try
                {
                    for (int i = 0; i < 24; i++)
                        Marshal.WriteIntPtr(buffer, i * IntPtr.Size, IntPtr.Zero);

                    Marshal.StructureToPtr(message, buffer, false);

                    XSendEvent(
                        display,
                        root,
                        false,
                        (IntPtr)(SubstructureRedirectMask | SubstructureNotifyMask),
                        buffer
                    );
                    XFlush(display);
                }
                finally
                {
                    Marshal.FreeHGlobal(buffer);
                }
            }
            finally
            {
                XCloseDisplay(display);
            }
        }
    }
}