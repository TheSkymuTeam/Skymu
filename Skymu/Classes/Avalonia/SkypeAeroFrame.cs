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
using Avalonia.Threading;
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace Skymu.AvaloniaTools
{
    internal class SkypeAeroFrame // oh my aeros, turn a normal frame into sigma frutiger smexy mode
    {
        private readonly Window _window;

        public SkypeAeroFrame(Window window)
        {
            _window = window;
        }

        #region P/Invoke

        [DllImport("uxtheme.dll")] private static extern int SetWindowThemeAttribute(IntPtr hwnd, int attr, ref WTA_OPTIONS opts, int size);
        [DllImport("uxtheme.dll", CharSet = CharSet.Unicode)] private static extern IntPtr OpenThemeData(IntPtr hwnd, string classList);
        [DllImport("uxtheme.dll")] private static extern int CloseThemeData(IntPtr hTheme);
        [DllImport("uxtheme.dll")] private static extern int GetThemeSysFont(IntPtr hTheme, int fontId, out LOGFONT lf);
        [DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
        private static extern int DrawThemeTextEx(IntPtr hTheme, IntPtr hdc, int part, int state, string text, int cch, uint flags, ref RECT rc, ref DTTOPTS opts);
        [DllImport("dwmapi.dll")] private static extern int DwmGetWindowAttribute(IntPtr hwnd, int attr, out RECT rc, int size);
        [DllImport("dwmapi.dll")] private static extern int DwmGetColorizationColor(out uint color, [MarshalAs(UnmanagedType.Bool)] out bool opaque);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern IntPtr CreateWindowExW(uint exStyle, string cls, string name, uint style, int x, int y, int w, int h, IntPtr parent, IntPtr menu, IntPtr inst, IntPtr param);
        [DllImport("user32.dll")] private static extern bool ShowWindow(IntPtr hwnd, int cmd);
        [DllImport("user32.dll")] private static extern bool IsIconic(IntPtr hwnd);
        [DllImport("user32.dll")] private static extern bool IsWindowVisible(IntPtr hwnd);
        [DllImport("user32.dll")] private static extern bool IsZoomed(IntPtr hwnd);
        [DllImport("user32.dll")] private static extern bool GetWindowRect(IntPtr hwnd, out RECT rc);
        [DllImport("user32.dll")] private static extern bool SetWindowPos(IntPtr hwnd, IntPtr after, int x, int y, int cx, int cy, uint flags);
        [DllImport("user32.dll")] private static extern int GetSystemMetrics(int index);
        [DllImport("user32.dll")] private static extern int GetSystemMetricsForDpi(int index, uint dpi);
        [DllImport("user32.dll")] private static extern uint GetDpiForWindow(IntPtr hwnd);
        [DllImport("user32.dll")] private static extern uint GetSysColor(int index);
        [DllImport("user32.dll")] private static extern IntPtr GetDC(IntPtr hwnd);
        [DllImport("user32.dll")] private static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);
        [DllImport("user32.dll")]
        private static extern bool UpdateLayeredWindow(IntPtr hwnd, IntPtr hdcDst, ref NativePoint pptDst, ref NativeSize psize,
            IntPtr hdcSrc, ref NativePoint pptSrc, uint crKey, ref BLENDFUNCTION blend, uint flags);

        [DllImport("gdi32.dll")] private static extern IntPtr CreateCompatibleDC(IntPtr hdc);
        [DllImport("gdi32.dll")] private static extern IntPtr CreateDIBSection(IntPtr hdc, ref BITMAPINFOHEADER bi, uint usage, out IntPtr bits, IntPtr section, uint offset);
        [DllImport("gdi32.dll")] private static extern IntPtr SelectObject(IntPtr hdc, IntPtr obj);
        [DllImport("gdi32.dll")] private static extern bool DeleteObject(IntPtr obj);
        [DllImport("gdi32.dll")] private static extern bool DeleteDC(IntPtr hdc);
        [DllImport("gdi32.dll")] private static extern bool GdiFlush();
        [DllImport("gdi32.dll", CharSet = CharSet.Unicode)] private static extern IntPtr CreateFontIndirectW(ref LOGFONT lf);

        [DllImport("user32.dll")] private static extern IntPtr SendMessage(IntPtr hwnd, uint msg, IntPtr wParam, IntPtr lParam);
        [DllImport("user32.dll")] private static extern bool PostMessage(IntPtr hwnd, uint msg, IntPtr wParam, IntPtr lParam);
        [DllImport("user32.dll")] private static extern bool DestroyIcon(IntPtr hIcon);
        [DllImport("user32.dll")] private static extern int GetWindowLong(IntPtr hwnd, int index);
        [DllImport("user32.dll")] private static extern int SetWindowLong(IntPtr hwnd, int index, int value);
        [DllImport("user32.dll")] private static extern bool TrackMouseEvent(ref TRACKMOUSEEVENT tme);
        [DllImport("user32.dll", SetLastError = true)]
        private static extern IntPtr SetWindowsHookEx(int idHook, LowLevelMouseProc lpfn, IntPtr hMod, uint dwThreadId);
        [DllImport("user32.dll")] private static extern bool UnhookWindowsHookEx(IntPtr hhk);
        [DllImport("user32.dll")] private static extern IntPtr CallNextHookEx(IntPtr hhk, int nCode, IntPtr wParam, IntPtr lParam);
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)] private static extern IntPtr GetModuleHandle(string lpModuleName);

        private const uint WM_SETICON = 0x80, WM_SYSCOMMAND = 0x112;
        private const uint WM_NCMOUSEMOVE = 0x2A, WM_NCLBUTTONDOWN = 0xA1, WM_NCLBUTTONUP = 0xA2, WM_NCMOUSELEAVE = 0x2E2;
        private const uint WM_MOUSEMOVE = 0x200, WM_LBUTTONDOWN = 0x201, WM_LBUTTONUP = 0x202;
        private const int WH_MOUSE_LL = 14;
        private const uint TME_LEAVE = 2, TME_NONCLIENT = 0x10;
        private const int GWL_STYLE = -16, WS_SYSMENU = 0x00080000;
        private const int HTNOWHERE = 0, HTMINBUTTON = 8, HTMAXBUTTON = 9, HTCLOSE = 20;
        private const int HTCAPTIONBUTTON_BASE = 130;
        private const int SC_MINIMIZE = 0xF020, SC_MAXIMIZE = 0xF030, SC_CLOSE = 0xF060, SC_RESTORE = 0xF120;
        private IntPtr _blankIcon;

        [StructLayout(LayoutKind.Sequential)] private struct WTA_OPTIONS { public uint Flags, Mask; }
        [StructLayout(LayoutKind.Sequential)] private struct RECT { public int Left, Top, Right, Bottom; }
        [StructLayout(LayoutKind.Sequential)] private struct TRACKMOUSEEVENT { public int cbSize; public uint dwFlags; public IntPtr hwndTrack; public uint dwHoverTime; }
        [StructLayout(LayoutKind.Sequential)] private struct MSLLHOOKSTRUCT { public NativePoint pt; public uint mouseData, flags, time; public IntPtr dwExtraInfo; }
        private delegate IntPtr LowLevelMouseProc(int nCode, IntPtr wParam, IntPtr lParam);
        [StructLayout(LayoutKind.Sequential)] private struct NativePoint { public int X, Y; }
        [StructLayout(LayoutKind.Sequential)] private struct NativeSize { public int W, H; }
        [StructLayout(LayoutKind.Sequential)] private struct BLENDFUNCTION { public byte BlendOp, BlendFlags, SourceConstantAlpha, AlphaFormat; }
        [StructLayout(LayoutKind.Sequential)] private struct WINDOWPOS { public IntPtr hwnd, hwndInsertAfter; public int x, y, cx, cy; public uint flags; }
        [StructLayout(LayoutKind.Sequential)]
        private struct BITMAPINFOHEADER
        {
            public int biSize, biWidth, biHeight; public short biPlanes, biBitCount;
            public int biCompression, biSizeImage, biXPels, biYPels, biClrUsed, biClrImportant;
        }
        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        private struct LOGFONT
        {
            public int lfHeight, lfWidth, lfEscapement, lfOrientation, lfWeight;
            public byte lfItalic, lfUnderline, lfStrikeOut, lfCharSet, lfOutPrecision, lfClipPrecision, lfQuality, lfPitchAndFamily;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] public string lfFaceName;
        }
        [StructLayout(LayoutKind.Sequential)]
        private struct DTTOPTS
        {
            public uint dwSize, dwFlags, crText, crBorder, crShadow;
            public int iTextShadowType, ptShadowX, ptShadowY, iBorderSize, iFontPropId, iColorPropId, iStateId, fApplyOverlay, iGlowSize;
            public IntPtr pfnDrawTextCallback, lParam;
        }

        private const int WTA_NONCLIENT = 1;
        private const uint WTNCA_NODRAWCAPTION = 1, WTNCA_NODRAWICON = 2, WTNCA_NOSYSMENU = 4;
        private const int SM_CYCAPTION = 4, SM_CXFRAME = 32, SM_CYSIZEFRAME = 33, SM_CXPADDEDBORDER = 92;
        private const int DWMWA_EXTENDED_FRAME_BOUNDS = 9, DWMWA_CAPTION_BUTTON_BOUNDS = 5, TMT_CAPTIONFONT = 801;
        private const uint WM_SIZE = 0x05, WM_SHOWWINDOW = 0x18, WM_SETTEXT = 0x0C, WM_WINDOWPOSCHANGED = 0x47,
            WM_NCHITTEST = 0x84, WM_NCACTIVATE = 0x86, WM_THEMECHANGED = 0x31A, WM_DWMCOMPOSITIONCHANGED = 0x31E, WM_DPICHANGED = 0x2E0;
        private const uint SWP_NOSIZE = 1, SWP_NOMOVE = 2, SWP_NOZORDER = 4, SWP_NOACTIVATE = 0x10, SWP_FRAMECHANGED = 0x20;
        private const uint DTT_TEXTCOLOR = 1, DTT_GLOWSIZE = 0x800, DTT_COMPOSITED = 0x2000;
        private const uint DT_FLAGS = 0x0 | 0x4 | 0x20 | 0x40000;
        private const int HTSYSMENU = 3;

        private System.Drawing.Bitmap _frameLogo;
        private System.Drawing.Bitmap _btnSplit, _btnMinimize, _btnMaximize, _btnRestore, _btnClose;
        private IntPtr _aeroHwnd, _aeroOverlay;
        private bool _aeroActive = true, _aeroRefreshPending, _trackingCaptionButtons;
        private int _captionButtonHover = -1, _captionButtonDown = -1;
        private LowLevelMouseProc _mouseHookProc;
        private IntPtr _mouseHook;

        #endregion

        #region Setup
        public void Apply()  
        {
            if (!OperatingSystem.IsWindows() || !Universal.Platform.DwmIsCompositionEnabled)
            {
                Debug.WriteLine("[Skymu] SkypeAero: DWM composition unavailable, leaving native frame/icon untouched.");
                return;
            }
            try
            {
                var uri = new Uri($"avares://Skymu/Themes/{Universal.Theme}/Assets/Universal/Branding/logo-window-frame.png");
                using (var s = Avalonia.Platform.AssetLoader.Open(uri)) _frameLogo = new System.Drawing.Bitmap(s);

                _btnSplit    = LoadAeroButtonSheet("split");
                _btnMinimize = LoadAeroButtonSheet("minimize");
                _btnMaximize = LoadAeroButtonSheet("maximize");
                _btnRestore  = LoadAeroButtonSheet("restore");
                _btnClose    = LoadAeroButtonSheet("close");

                Win32Properties.AddWindowStylesCallback(_window, WindowStylesCallback);
                Win32Properties.AddWndProcHookCallback(_window, FrameHook);

                _mouseHookProc = MouseHookProc;
                _mouseHook = SetWindowsHookEx(WH_MOUSE_LL, _mouseHookProc, GetModuleHandle(null), 0);
                _window.Opened += OnAeroOpened;
                _window.Closed += OnAeroClosed;
            }
            catch (Exception ex) { Debug.WriteLine($"[Skymu] SkypeAero: setup failed ({ex.Message})."); }
        }

        private static (uint style, uint exStyle) WindowStylesCallback(uint style, uint exStyle) =>
            (style & ~(uint)WS_SYSMENU, exStyle);

        private void HideNativeIcon()
        {
            if (_blankIcon == IntPtr.Zero)
            {
                using (var bmp = new System.Drawing.Bitmap(32, 32, System.Drawing.Imaging.PixelFormat.Format32bppArgb))
                    _blankIcon = bmp.GetHicon();  
            }
            SendMessage(_aeroHwnd, WM_SETICON, (IntPtr)0, _blankIcon);
            SendMessage(_aeroHwnd, WM_SETICON, (IntPtr)1, _blankIcon);
        }

        private static System.Drawing.Bitmap LoadAeroButtonSheet(string name)
        {
            var uri = new Uri($"avares://Skymu/Themes/{Universal.Theme}/Assets/Universal/Window Frame/Aero/{name}/combined.png");
            using (var s = Avalonia.Platform.AssetLoader.Open(uri))
                return new System.Drawing.Bitmap(s);
        }

        private static void HideNativeCaptionButtons(IntPtr hwnd)
        {
            if (hwnd == IntPtr.Zero) return;

            int style = GetWindowLong(hwnd, GWL_STYLE);
            if ((style & WS_SYSMENU) != 0)
            {
                SetWindowLong(hwnd, GWL_STYLE, style & ~WS_SYSMENU);
                SetWindowPos(hwnd, IntPtr.Zero, 0, 0, 0, 0,
                    SWP_NOMOVE | SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE | SWP_FRAMECHANGED);
            }

            var opts = new WTA_OPTIONS
            {
                Flags = WTNCA_NODRAWCAPTION | WTNCA_NODRAWICON | WTNCA_NOSYSMENU,
                Mask = WTNCA_NODRAWCAPTION | WTNCA_NODRAWICON | WTNCA_NOSYSMENU
            };
            SetWindowThemeAttribute(hwnd, WTA_NONCLIENT, ref opts, Marshal.SizeOf<WTA_OPTIONS>());
        }

        private void OnAeroClosed(object sender, EventArgs e)
        {
            if (_mouseHook != IntPtr.Zero)
            {
                UnhookWindowsHookEx(_mouseHook);
                _mouseHook = IntPtr.Zero;
            }
            _mouseHookProc = null;

            Win32Properties.RemoveWindowStylesCallback(_window, WindowStylesCallback);
            Win32Properties.RemoveWndProcHookCallback(_window, FrameHook);
            _window.Opened -= OnAeroOpened;
            _window.Closed -= OnAeroClosed;

            _frameLogo?.Dispose();
            _btnSplit?.Dispose();
            _btnMinimize?.Dispose();
            _btnMaximize?.Dispose();
            _btnRestore?.Dispose();
            _btnClose?.Dispose();
            if (_blankIcon != IntPtr.Zero) DestroyIcon(_blankIcon);

            _frameLogo = null;
            _btnSplit = _btnMinimize = _btnMaximize = _btnRestore = _btnClose = null;
            _blankIcon = IntPtr.Zero;
            _aeroHwnd = _aeroOverlay = IntPtr.Zero;
        }


        private void OnAeroOpened(object sender, EventArgs e)
        {
            _aeroHwnd = _window.TryGetPlatformHandle()?.Handle ?? IntPtr.Zero;
            Debug.WriteLine($"[Skymu] SkypeAero: hwnd=0x{_aeroHwnd.ToInt64():X}");
            if (_aeroHwnd == IntPtr.Zero) return;

            HideNativeCaptionButtons(_aeroHwnd);
            HideNativeIcon();

            _aeroOverlay = CreateWindowExW(0x80000 | 0x20 | 0x80 | 0x08000000, "Static", null, 0x80000000,
                0, 0, 1, 1, _aeroHwnd, IntPtr.Zero, IntPtr.Zero, IntPtr.Zero);
            Debug.WriteLine($"[Skymu] SkypeAero: overlay=0x{_aeroOverlay.ToInt64():X}");
            if (_aeroOverlay != IntPtr.Zero)
            {
                HideNativeCaptionButtons(_aeroOverlay);
                RefreshAeroOverlay();
            }
        }

        #endregion

        #region Window msgs
        private IntPtr FrameHook(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            switch (msg)
            {
                case WM_NCHITTEST:
                    {
                        long l = lParam.ToInt64();
                        int x = (short)(l & 0xFFFF), y = (short)((l >> 16) & 0xFFFF);
                        GetWindowRect(hWnd, out var wr);
                        int dpi = Dpi(hWnd);
                        int capH = CaptionHeight(dpi);
                        int w = wr.Right - wr.Left;
                        var buttons = CaptionButtonRects(hWnd, wr, dpi, capH, w);
                        for (int i = 0; i < buttons.Length; i++)
                        {
                            if (!Contains(buttons[i], wr, x, y)) continue;
                            handled = true;
                            return (IntPtr)NativeHitForButton(i);
                        }

                        var r = LogoRect(hWnd, dpi);
                        if (x >= wr.Left + r.X && x < wr.Left + r.Right && y >= wr.Top + r.Y && y < wr.Top + r.Bottom)
                        {
                            handled = true;
                            return (IntPtr)HTSYSMENU;
                        }
                        break;
                    }
                case WM_NCMOUSEMOVE:
                    {
                        int button = HitCodeToButton(wParam);
                        if (button >= 0)
                        {
                            StartCaptionButtonTracking(hWnd);
                            if (_captionButtonHover != button)
                            {
                                _captionButtonHover = button;
                                QueueAeroRefresh();
                            }
                        }
                        else if (_captionButtonHover != -1)
                        {
                            _captionButtonHover = -1;
                            QueueAeroRefresh();
                        }
                        break;
                    }
                case WM_NCMOUSELEAVE:
                    _trackingCaptionButtons = false;
                    if (_captionButtonHover != -1 || _captionButtonDown != -1)
                    {
                        _captionButtonHover = -1;
                        _captionButtonDown = -1;
                        QueueAeroRefresh();
                    }
                    break;
                case WM_NCLBUTTONDOWN:
                    {
                        int button = HitCodeToButton(wParam);
                        if (button >= 0)
                        {
                            _captionButtonDown = button;
                            QueueAeroRefresh();
                            handled = true;
                            return IntPtr.Zero;
                        }
                        break;
                    }
                case WM_NCLBUTTONUP:
                    {
                        int button = HitCodeToButton(wParam);
                        if (button >= 0)
                        {
                            _captionButtonDown = -1;
                            QueueAeroRefresh();
                            handled = true;
                            return IntPtr.Zero;
                        }
                        break;
                    }
                case WM_NCACTIVATE:
                    _aeroActive = wParam != IntPtr.Zero;
                    if (!_aeroActive)
                    {
                        _captionButtonHover = -1;
                        _captionButtonDown = -1;
                        _trackingCaptionButtons = false;
                    }
                    QueueAeroRefresh();
                    break;
                case WM_SETTEXT:
                case WM_THEMECHANGED:
                case WM_DWMCOMPOSITIONCHANGED:
                case WM_DPICHANGED:
                    QueueAeroRefresh();
                    break;
                case WM_SIZE:
                    if (wParam == (IntPtr)1 && _aeroOverlay != IntPtr.Zero) ShowWindow(_aeroOverlay, 0);
                    else QueueAeroRefresh();
                    break;
                case WM_SHOWWINDOW:
                    if (wParam == IntPtr.Zero && _aeroOverlay != IntPtr.Zero) ShowWindow(_aeroOverlay, 0);
                    else QueueAeroRefresh();
                    break;
                case WM_WINDOWPOSCHANGED:
                    {
                        var wp = Marshal.PtrToStructure<WINDOWPOS>(lParam);
                        if ((wp.flags & SWP_NOSIZE) == 0) QueueAeroRefresh();
                        else if (_aeroOverlay != IntPtr.Zero)
                            SetWindowPos(_aeroOverlay, IntPtr.Zero, wp.x, wp.y, 0, 0, SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);
                        break;
                    }
            }
            return IntPtr.Zero;
        }

        private IntPtr MouseHookProc(int nCode, IntPtr wParam, IntPtr lParam)
        {
            if (nCode >= 0 && _aeroHwnd != IntPtr.Zero)
            {
                uint msg = (uint)wParam.ToInt64();
                var info = Marshal.PtrToStructure<MSLLHOOKSTRUCT>(lParam);
                int button = HitCaptionButtonAt(info.pt.X, info.pt.Y);

                switch (msg)
                {
                    case WM_MOUSEMOVE:
                    case WM_NCMOUSEMOVE:
                        SetCaptionButtonHover(button);
                        break;
                    case WM_LBUTTONDOWN:
                    case WM_NCLBUTTONDOWN:
                        if (_captionButtonDown != button)
                        {
                            _captionButtonDown = button;
                            QueueAeroRefresh();
                        }
                        break;
                    case WM_LBUTTONUP:
                    case WM_NCLBUTTONUP:
                        {
                            bool clicked = button >= 0 && _captionButtonDown == button;
                            if (_captionButtonDown != -1)
                            {
                                _captionButtonDown = -1;
                                QueueAeroRefresh();
                            }
                            if (clicked)
                            {
                                IntPtr point = (IntPtr)((info.pt.Y << 16) | (info.pt.X & 0xFFFF));
                                ActivateCaptionButton(_aeroHwnd, button, point);
                            }
                            break;
                        }
                }
            }
            return CallNextHookEx(_mouseHook, nCode, wParam, lParam);
        }

        private void SetCaptionButtonHover(int button)
        {
            if (_captionButtonHover == button) return;
            _captionButtonHover = button;
            if (button >= 0) StartCaptionButtonTracking(_aeroHwnd);
            QueueAeroRefresh();
        }

        private int HitCaptionButtonAt(int x, int y)
        {
            if (_aeroHwnd == IntPtr.Zero || IsIconic(_aeroHwnd) || !IsWindowVisible(_aeroHwnd)) return -1;

            GetWindowRect(_aeroHwnd, out var wr);
            int dpi = Dpi(_aeroHwnd);
            var buttons = CaptionButtonRects(_aeroHwnd, wr, dpi, CaptionHeight(dpi), wr.Right - wr.Left);
            for (int i = 0; i < buttons.Length; i++)
                if (Contains(buttons[i], wr, x, y)) return i;
            return -1;
        }

        private void QueueAeroRefresh()
        {
            if (_aeroRefreshPending || _aeroOverlay == IntPtr.Zero) return;
            _aeroRefreshPending = true;
            Dispatcher.UIThread.Post(RefreshAeroOverlay, DispatcherPriority.Render);
        }

        #endregion

        #region Geometry
        private static int Dpi(IntPtr h)
        {
            try { uint d = GetDpiForWindow(h); return d == 0 ? 96 : (int)d; }
            catch (EntryPointNotFoundException) { return 96; }
        }
        private static int Metric(int index, int dpi)
        {
            try { return GetSystemMetricsForDpi(index, (uint)dpi); }
            catch (EntryPointNotFoundException) { return GetSystemMetrics(index); }
        }

        private System.Drawing.Rectangle LogoRect(IntPtr hwnd, int dpi)
        {
            int pad = Metric(SM_CXPADDEDBORDER, dpi);
            bool max = IsZoomed(hwnd);
            int x;
            if (max) x = Metric(SM_CXFRAME, dpi) + pad;
            else
            {
                GetWindowRect(hwnd, out var win);
                int invisible = DwmGetWindowAttribute(hwnd, DWMWA_EXTENDED_FRAME_BOUNDS, out var ext, Marshal.SizeOf<RECT>()) == 0
                    ? ext.Left - win.Left : 0;
                x = 8 * dpi / 96 + invisible;
            }
            int top = max ? Metric(SM_CYSIZEFRAME, dpi) + pad : 0;
            int bottom = Metric(SM_CYCAPTION, dpi) + Metric(SM_CYSIZEFRAME, dpi) + pad;
            int h = 16 * dpi / 96;
            int w = (int)Math.Round(_frameLogo.Width * (h / (double)_frameLogo.Height));
            return new System.Drawing.Rectangle(x, top + (bottom - top - h) / 2, w, h);
        }

        private static int CaptionHeight(int dpi) =>
            Metric(SM_CYCAPTION, dpi) + Metric(SM_CYSIZEFRAME, dpi) + Metric(SM_CXPADDEDBORDER, dpi);

        private static int ScalePx(int px96, int dpi) => (int)Math.Round(px96 * dpi / 96.0);

        private System.Drawing.Rectangle[] CaptionButtonRects(IntPtr hwnd, RECT win, int dpi, int capH, int w)
        {
            int[] baseWidths = { 26, 24, 24, 42 };
            int[] widths = new int[baseWidths.Length];
            int total = 0;
            for (int i = 0; i < widths.Length; i++)
            {
                widths[i] = ScalePx(baseWidths[i], dpi);
                total += widths[i];
            }

            int h = ScalePx(18, dpi);
            int border = Metric(SM_CXFRAME, dpi) + Metric(SM_CXPADDEDBORDER, dpi);
            int right = w - border;
            int top = 0;

            if (DwmGetWindowAttribute(hwnd, DWMWA_EXTENDED_FRAME_BOUNDS, out var ext, Marshal.SizeOf<RECT>()) == 0 &&
                ext.Right > ext.Left && ext.Bottom > ext.Top)
            {
                right = ext.Right - win.Left - border;
                top = ext.Top - win.Top;
            }

            right = Math.Min(Math.Max(right, total), Math.Max(total, w - border));
            top = Math.Min(Math.Max(top, 0), Math.Max(0, capH - h));

            int overlap = ScalePx(1, dpi);
            int span = total - overlap * (widths.Length - 1);
            right = Math.Min(Math.Max(right, span), Math.Max(span, w - border));

            var rects = new System.Drawing.Rectangle[widths.Length];
            int x = right - span;
            for (int i = 0; i < widths.Length; i++)
            {
                rects[i] = new System.Drawing.Rectangle(x, top, widths[i], h);
                x += widths[i] - (i < widths.Length - 1 ? overlap : 0);
            }
            return rects;
        }

        private static bool Contains(System.Drawing.Rectangle r, RECT win, int x, int y) =>
            x >= win.Left + r.Left && x < win.Left + r.Right &&
            y >= win.Top + r.Top && y < win.Top + r.Bottom;

        private static int NativeHitForButton(int button)
        {
            switch (button)
            {
                case 0: return HTCAPTIONBUTTON_BASE;
                case 1: return HTMINBUTTON;
                case 2: return HTMAXBUTTON;
                case 3: return HTCLOSE;
                default: return HTNOWHERE;
            }
        }

        private static int HitCodeToButton(IntPtr wParam)
        {
            long hit = wParam.ToInt64();
            if (hit >= HTCAPTIONBUTTON_BASE && hit < HTCAPTIONBUTTON_BASE + 4)
                return (int)(hit - HTCAPTIONBUTTON_BASE);
            if (hit == HTMINBUTTON) return 1;
            if (hit == HTMAXBUTTON) return 2;
            if (hit == HTCLOSE) return 3;
            return -1;
        }

        private void StartCaptionButtonTracking(IntPtr hwnd)
        {
            if (_trackingCaptionButtons) return;
            var tme = new TRACKMOUSEEVENT
            {
                cbSize = Marshal.SizeOf<TRACKMOUSEEVENT>(),
                dwFlags = TME_LEAVE | TME_NONCLIENT,
                hwndTrack = hwnd
            };
            _trackingCaptionButtons = TrackMouseEvent(ref tme);
        }

        private void ActivateCaptionButton(IntPtr hwnd, int button, IntPtr lParam)
        {
            switch (button)
            {
                case 0:
                    Universal.NotImplemented("Split Window");
                    break;
                case 1:
                    PostMessage(hwnd, WM_SYSCOMMAND, (IntPtr)SC_MINIMIZE, lParam);
                    break;
                case 2:
                    PostMessage(hwnd, WM_SYSCOMMAND,
                        (IntPtr)(IsZoomed(hwnd) ? SC_RESTORE : SC_MAXIMIZE), lParam);
                    break;
                case 3:
                    PostMessage(hwnd, WM_SYSCOMMAND, (IntPtr)SC_CLOSE, lParam);
                    break;
            }
        }

        #endregion

        #region Sexy frutiger mode
        private void RefreshAeroOverlay()
        {
            _aeroRefreshPending = false;
            IntPtr main = _aeroHwnd;
            if (_aeroOverlay == IntPtr.Zero || _frameLogo == null || main == IntPtr.Zero) return;
            if (IsIconic(main) || !IsWindowVisible(main)) { ShowWindow(_aeroOverlay, 0); return; }

            GetWindowRect(main, out var wr);
            int dpi = Dpi(main);
            bool max = IsZoomed(main);
            int capH = CaptionHeight(dpi);
            int w = wr.Right - wr.Left;
            if (w <= 0 || capH <= 0) return;
            var buttons = CaptionButtonRects(main, wr, dpi, capH, w);

            IntPtr screenDc = GetDC(IntPtr.Zero);
            IntPtr memDc = CreateCompatibleDC(screenDc);
            var bi = new BITMAPINFOHEADER { biSize = 40, biWidth = w, biHeight = -capH, biPlanes = 1, biBitCount = 32 };
            IntPtr hbm = CreateDIBSection(screenDc, ref bi, 0, out IntPtr bits, IntPtr.Zero, 0);  
            try
            {
                if (hbm == IntPtr.Zero) return;
                IntPtr oldBmp = SelectObject(memDc, hbm);

                var logo = LogoRect(main, dpi);
                using (var bmp = new System.Drawing.Bitmap(w, capH, w * 4, System.Drawing.Imaging.PixelFormat.Format32bppPArgb, bits))
                using (var g = System.Drawing.Graphics.FromImage(bmp))
                {
                    g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                    g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;
                    g.DrawImage(_frameLogo, logo);
                    DrawCaptionButtons(g, buttons);
                }
                DrawAeroTitle(memDc, main, dpi, w, capH, max, logo, buttons[0].Left - ScalePx(6, dpi));
                GdiFlush();

                var dst = new NativePoint { X = wr.Left, Y = wr.Top };
                var size = new NativeSize { W = w, H = capH };
                var src = new NativePoint();
                var blend = new BLENDFUNCTION { BlendOp = 0, BlendFlags = 0, SourceConstantAlpha = 255, AlphaFormat = 1 };
                UpdateLayeredWindow(_aeroOverlay, screenDc, ref dst, ref size, memDc, ref src, 0, ref blend, 2 );
                ShowWindow(_aeroOverlay, 4);
                SelectObject(memDc, oldBmp);
            }
            finally
            {
                if (hbm != IntPtr.Zero) DeleteObject(hbm);
                DeleteDC(memDc);
                ReleaseDC(IntPtr.Zero, screenDc);
            }
        }

        private void DrawCaptionButtons(System.Drawing.Graphics g, System.Drawing.Rectangle[] buttons)
        {
            var sheets = new[]
            {
                _btnSplit, _btnMinimize, IsZoomed(_aeroHwnd) ? _btnRestore : _btnMaximize, _btnClose
            };

            for (int i = 0; i < buttons.Length; i++)
            {
                var sheet = sheets[i];
                if (sheet == null) continue;

                int frameH = sheet.Height / 4;
                if (frameH <= 0) continue;

                int state = !_aeroActive ? 3
                    : _captionButtonDown == i ? 2
                    : _captionButtonHover == i ? 1
                    : 0;

                var src = new System.Drawing.Rectangle(0, state * frameH, sheet.Width, frameH);
                g.DrawImage(sheet, buttons[i], src, System.Drawing.GraphicsUnit.Pixel);
            }
        }

        private void DrawAeroTitle(IntPtr dc, IntPtr main, int dpi, int w, int capH, bool max, System.Drawing.Rectangle logo, int buttonsLeft)
        {
            string title = _window.Title;
            if (string.IsNullOrEmpty(title)) return;

            IntPtr theme = OpenThemeData(IntPtr.Zero, "CompositedWindow::Window");   
            if (theme == IntPtr.Zero) theme = OpenThemeData(IntPtr.Zero, "Window");
            if (theme == IntPtr.Zero) return;

            IntPtr font = IntPtr.Zero, oldFont = IntPtr.Zero;
            try
            {
                if (GetThemeSysFont(theme, TMT_CAPTIONFONT, out var lf) == 0)
                {
                    font = CreateFontIndirectW(ref lf);
                    oldFont = SelectObject(dc, font);
                }

                var dto = new DTTOPTS { dwFlags = DTT_COMPOSITED | DTT_GLOWSIZE, iGlowSize = 12 };
                dto.dwSize = (uint)Marshal.SizeOf<DTTOPTS>();
                int part = max ? 5 : 1, state = _aeroActive ? 1 : 2;

                if (IsTransparentGlass())         
                {
                    part = 0; state = 0; dto.iGlowSize = 15;
                }
                else if (AppsUseDarkTheme())
                {
                    dto.dwFlags |= DTT_TEXTCOLOR;
                    dto.crText = _aeroActive ? 0x00FFFFFFu : 0x00808080u;
                }
                else if (!_aeroActive)
                {
                    dto.dwFlags |= DTT_TEXTCOLOR;
                    dto.crText = GetSysColor(17);
                }

                var rc = new RECT
                {
                    Left = logo.Right + 5 * dpi / 96,
                    Top = max ? Metric(SM_CYSIZEFRAME, dpi) + Metric(SM_CXPADDEDBORDER, dpi) : 0,
                    Bottom = capH,
                    Right = buttonsLeft,
                };
                if (rc.Right <= rc.Left) return;

                DrawThemeTextEx(theme, dc, part, state, title, -1, DT_FLAGS, ref rc, ref dto);
            }
            finally
            {
                if (oldFont != IntPtr.Zero) SelectObject(dc, oldFont);
                if (font != IntPtr.Zero) DeleteObject(font);
                CloseThemeData(theme);
            }
        }

        private static bool IsTransparentGlass()
        {
            DwmGetColorizationColor(out uint color, out bool opaque);
            int regOpaque = (Microsoft.Win32.Registry.GetValue(@"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM", "ColorizationOpaqueBlend", 1) as int?) ?? 1;
            int regTransp = (Microsoft.Win32.Registry.GetValue(@"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize", "EnableTransparency", 0) as int?) ?? 0;
            bool glassMod = Microsoft.Win32.Registry.GetValue(@"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM", "GlassType", null) != null; // OpenGlass 
            bool win8Plus = Environment.OSVersion.Version >= new Version(6, 2);
            return !opaque || regOpaque == 0 || (!win8Plus && (color >> 24) < 0xFF && regTransp == 1) || glassMod;
        }

        private static bool AppsUseDarkTheme() =>
            ((Microsoft.Win32.Registry.GetValue(@"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize", "AppsUseLightTheme", 1) as int?) ?? 1) == 0;

        #endregion
    }
}
