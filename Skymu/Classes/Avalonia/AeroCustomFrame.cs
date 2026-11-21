/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Avalonia;
using Avalonia.Controls;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Platform;
using Avalonia.Threading;
using Microsoft.Win32;
using Skymu.Helpers;
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace Skymu.AvaloniaTools
{
    public enum AeroGlassMode
    {
        Auto,
        ForceTranslucent,
        ForceOpaque,
    }

    public sealed class AeroCustomFrame : IDisposable
    {
        #region Tunables (call Apply() after changing any of these)

        // Glass colors
        public Color TintActive { get; set; } = Color.FromArgb(0xFF, 0x8E, 0xB7, 0xDD);
        public Color TintInactive { get; set; } = Color.FromArgb(0xFF, 0xD3, 0xDE, 0xEA);

        public bool UseSystemGlassColor { get; set; } = false;

        public AeroGlassMode GlassMode { get; set; } = AeroGlassMode.Auto;
        public double GlassOpacity { get; set; } = 0.55;

        public byte FogTop { get; set; } = 0x70;
        public byte FogBottom { get; set; } = 0x28;

        public double ReflectionIntensity { get; set; } = 3.0;

        public double ReflectionInactiveFactor { get; set; } = 0.5;

        public bool StretchReflectionToScreen { get; set; } = true;

        public Point ReflectionOffset { get; set; } = new Point(0, 0);

        public double CornerRadius { get; set; } = 7;

        private bool _useBackdropBlur = true;

        public bool UseBackdropBlur
        {
            get => _useBackdropBlur;
            set
            {
                _useBackdropBlur = value;
                UpdateTransparencyHint();
                EnableDwmBlurBehind();
                Apply();
            }
        }

        #endregion

        //Human readable description of what the frame is doing for debugging.
        public string Status { get; private set; } = "not started";

        private readonly Window _window;
        private readonly Bitmap _reflection;
        private bool _active = true;
        private bool _disposed;
        private bool _dwmBlurActive;
        private Color _sysTintActive, _sysTintInactive;
        private bool _sysTintValid;

        private AeroCustomFrame(Window window, Bitmap reflection)
        {
            _window = window;
            _reflection = reflection;
        }

        public static AeroCustomFrame Attach(Window window, string reflectionImagePath)
        {
            if (window == null) throw new ArgumentNullException(nameof(window));

            Bitmap reflection = ImageHelper.Load(reflectionImagePath);
            var frame = new AeroCustomFrame(window, reflection);

            window.Background = Brushes.Transparent;
            frame.UpdateTransparencyHint();   
            frame.EnableDwmBlurBehind();     

            window.PropertyChanged += frame.OnWindowPropertyChanged;
            window.PositionChanged += frame.OnPositionChanged;
            window.Opened += frame.OnOpened;
            window.Activated += frame.OnActivated;
            window.Deactivated += frame.OnDeactivated;

            frame._active = window.IsActive;
            frame.RefreshSystemColors();
            frame.Apply();
            return frame;
        }

        public void Dispose()
        {
            if (_disposed) return;
            _disposed = true;
            _window.PropertyChanged -= OnWindowPropertyChanged;
            _window.PositionChanged -= OnPositionChanged;
            _window.Opened -= OnOpened;
            _window.Activated -= OnActivated;
            _window.Deactivated -= OnDeactivated;
        }

        #region Events

        private void OnWindowPropertyChanged(object sender, AvaloniaPropertyChangedEventArgs e)
        {
            if (e.Property == Visual.BoundsProperty
                || e.Property == Window.WindowStateProperty)
            {
                Apply();
            }
            else if (e.Property == TopLevel.ActualTransparencyLevelProperty)
            {
                EnableDwmBlurBehind();
                Apply();
            }
        }

        private void OnPositionChanged(object sender, PixelPointEventArgs e) => Apply();

        private void OnOpened(object sender, EventArgs e)
        {
            EnableDwmBlurBehind();
            RefreshSystemColors();
            Apply();
            Dispatcher.UIThread.Post(() =>
            {
                if (_disposed) return;
                EnableDwmBlurBehind();
                Apply();
            }, DispatcherPriority.Background);
        }

        private void OnActivated(object sender, EventArgs e)
        {
            _active = true;
            EnableDwmBlurBehind();
            RefreshSystemColors();
            Apply();
        }

        private void OnDeactivated(object sender, EventArgs e)
        {
            _active = false;
            Apply();
        }

        #endregion

        #region Backdrop blur

        private void UpdateTransparencyHint()
        {
            _window.TransparencyLevelHint = _useBackdropBlur
                ? new[]
                {
                    WindowTransparencyLevel.AcrylicBlur,
                    WindowTransparencyLevel.Blur,
                    WindowTransparencyLevel.Transparent
                }
                : new[] { WindowTransparencyLevel.Transparent };
        }

        private static bool IsVistaOrSeven()
        {
            if (!OperatingSystem.IsWindows()) return false;
            Version v = Environment.OSVersion.Version;
            return v.Major == 6 && v.Minor <= 1;
        }

        private void EnableDwmBlurBehind()
        {
            _dwmBlurActive = false;
            if (_disposed || !_useBackdropBlur || !IsVistaOrSeven()) return;

            try
            {
                if (Native.DwmIsCompositionEnabled(out bool composition) != 0 || !composition)
                    return;

                IntPtr hwnd = _window.TryGetPlatformHandle()?.Handle ?? IntPtr.Zero;
                if (hwnd == IntPtr.Zero) return;

                var bb = new Native.DWM_BLURBEHIND
                {
                    dwFlags = Native.DWM_BB_ENABLE,
                    fEnable = true,
                    hRgnBlur = IntPtr.Zero, 
                    fTransitionOnMaximized = false
                };
                _dwmBlurActive = Native.DwmEnableBlurBehindWindow(hwnd, ref bb) == 0;
            }
            catch (Exception ex)
            {
                Debug.WriteLine("[AeroCustomFrame] DwmEnableBlurBehindWindow failed: " + ex.Message);
            }
        }

        private bool AvaloniaBlurGranted()
        {
            if (!_useBackdropBlur) return false;
            WindowTransparencyLevel lvl = _window.ActualTransparencyLevel;
            return lvl == WindowTransparencyLevel.AcrylicBlur
                || lvl == WindowTransparencyLevel.Blur
                || lvl == WindowTransparencyLevel.Mica;
        }

        private bool IsGlassTranslucent()
        {
            switch (GlassMode)
            {
                case AeroGlassMode.ForceTranslucent: return true;
                case AeroGlassMode.ForceOpaque: return false;
                default: return _dwmBlurActive || AvaloniaBlurGranted();
            }
        }

        #endregion

        #region System glass color

        public void RefreshSystemColors()
        {
            _sysTintValid = false;
            if (!UseSystemGlassColor || !OperatingSystem.IsWindows()) return;

            try
            {
                using (RegistryKey key = Registry.CurrentUser.OpenSubKey(@"Software\Microsoft\Windows\DWM"))
                {
                    if (key?.GetValue("ColorizationColor") is int raw)
                    {
                        uint argb = unchecked((uint)raw);
                        var c = Color.FromArgb(0xFF, (byte)(argb >> 16), (byte)(argb >> 8), (byte)argb);
                        _sysTintActive = c;
                        _sysTintInactive = Lerp(c, Color.FromArgb(0xFF, 0xD3, 0xDE, 0xEA), 0.7);
                        _sysTintValid = true;
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("[AeroCustomFrame] Could not read ColorizationColor: " + ex.Message);
            }
        }

        private static Color Lerp(Color a, Color b, double t)
        {
            return Color.FromArgb(
                0xFF,
                (byte)(a.R + (b.R - a.R) * t),
                (byte)(a.G + (b.G - a.G) * t),
                (byte)(a.B + (b.B - a.B) * t));
        }

        #endregion

        #region Painting

        private static Color WithOpacity(Color c, double opacity)
        {
            return Color.FromArgb((byte)Math.Clamp(255 * opacity, 0, 255), c.R, c.G, c.B);
        }

        private Rect GetReflectionRect()
        {
            double scale = _window.RenderScaling;
            if (scale <= 0) scale = 1;
            PixelPoint pos = _window.Position;

            double ox = ReflectionOffset.X / scale;
            double oy = ReflectionOffset.Y / scale;

            if (StretchReflectionToScreen)
            {
                try
                {
                    Screen screen = _window.Screens?.ScreenFromVisual(_window) ?? _window.Screens?.Primary;
                    if (screen != null)
                    {
                        PixelRect b = screen.Bounds;
                        return new Rect(
                            (b.X - pos.X) / scale + ox,
                            (b.Y - pos.Y) / scale + oy,
                            b.Width / scale,
                            b.Height / scale);
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine("[AeroCustomFrame] Screen lookup failed: " + ex.Message);
                }
            }

            return new Rect(
                -pos.X / scale + ox,
                -pos.Y / scale + oy,
                _reflection.Size.Width,
                _reflection.Size.Height);
        }

        public void Apply()
        {
            if (_disposed) return;

            Size size = _window.Bounds.Size;
            if (size.Width < 16 || size.Height < 16)
                return;

            bool active = _active;
            bool maximized = _window.WindowState == WindowState.Maximized;
            double radius = maximized ? 0 : CornerRadius;
            bool translucent = IsGlassTranslucent();
            double glass = translucent ? GlassOpacity : 1.0;

            Color tintActive = _sysTintValid ? _sysTintActive : TintActive;
            Color tintInactive = _sysTintValid ? _sysTintInactive : TintInactive;

            var full = new Rect(size);
            Geometry frameGeo = RoundedRect(full, radius);

            var group = new DrawingGroup { ClipGeometry = frameGeo };

            group.Children.Add(new GeometryDrawing
            {
                Brush = new SolidColorBrush(WithOpacity(active ? tintActive : tintInactive, glass)),
                Geometry = frameGeo
            });

            group.Children.Add(new GeometryDrawing
            {
                Geometry = frameGeo,
                Brush = new LinearGradientBrush
                {
                    StartPoint = new RelativePoint(0, 0, RelativeUnit.Relative),
                    EndPoint = new RelativePoint(0, 1, RelativeUnit.Relative),
                    GradientStops =
                    {
                        new GradientStop(Color.FromArgb(active ? FogTop : (byte)(FogTop / 2), 255, 255, 255), 0),
                        new GradientStop(Color.FromArgb(active ? FogBottom : (byte)(FogBottom / 2), 255, 255, 255), 1),
                    }
                }
            });

            AddReflection(group, active);

            if (!maximized)
            {
                group.Children.Add(new GeometryDrawing
                {
                    Pen = new Pen(new SolidColorBrush(Color.FromArgb(active ? (byte)0xB0 : (byte)0x70, 0, 0, 0)), 1),
                    Geometry = RoundedRect(full.Deflate(0.5), radius)
                });
                group.Children.Add(new GeometryDrawing
                {
                    Pen = new Pen(new SolidColorBrush(Color.FromArgb(0xB0, 0xFF, 0xFF, 0xFF)), 1),
                    Geometry = RoundedRect(full.Deflate(1.5), Math.Max(0, radius - 1))
                });
            }

            _window.Background = new DrawingBrush(group)
            {
                Stretch = Stretch.Fill,
                SourceRect = new RelativeRect(full, RelativeUnit.Absolute),
                DestinationRect = new RelativeRect(full, RelativeUnit.Absolute)
            };

            UpdateStatus(translucent);
        }

        private void AddReflection(DrawingGroup group, bool active)
        {
            double intensity = ReflectionIntensity * (active ? 1.0 : ReflectionInactiveFactor);
            if (intensity <= 0.01) return;

            Rect rect = GetReflectionRect();
            var geo = new RectangleGeometry(rect);

            int whole = Math.Min((int)Math.Floor(intensity), 12);
            double rest = intensity - Math.Floor(intensity);

            for (int i = 0; i < whole; i++)
            {
                group.Children.Add(new GeometryDrawing
                {
                    Geometry = geo,
                    Brush = new ImageBrush(_reflection) { Stretch = Stretch.Fill }
                });
            }

            if (rest > 0.01 && whole < 12)
            {
                group.Children.Add(new GeometryDrawing
                {
                    Geometry = geo,
                    Brush = new ImageBrush(_reflection) { Stretch = Stretch.Fill, Opacity = rest }
                });
            }
        }

        private void UpdateStatus(bool translucent)
        {
            string how = _dwmBlurActive
                ? "DWM blur-behind (Vista/7)"
                : AvaloniaBlurGranted()
                    ? "Avalonia " + _window.ActualTransparencyLevel
                    : "no blur (Avalonia level: " + _window.ActualTransparencyLevel + ")";

            string status = $"glass={(translucent ? "translucent" : "opaque")}, backdrop={how}, mode={GlassMode}";
            if (status != Status)
            {
                Status = status;
                Debug.WriteLine("[AeroCustomFrame] " + status);
            }
        }

        #endregion

        #region Helpers

        private static Geometry RoundedRect(Rect r, double rad)
        {
            if (rad <= 0) return new RectangleGeometry(r);
            var sz = new Size(rad, rad);
            var g = new StreamGeometry();
            using (var c = g.Open())
            {
                c.BeginFigure(new Point(r.Left + rad, r.Top), true);
                c.LineTo(new Point(r.Right - rad, r.Top));
                c.ArcTo(new Point(r.Right, r.Top + rad), sz, 0, false, SweepDirection.Clockwise);
                c.LineTo(new Point(r.Right, r.Bottom - rad));
                c.ArcTo(new Point(r.Right - rad, r.Bottom), sz, 0, false, SweepDirection.Clockwise);
                c.LineTo(new Point(r.Left + rad, r.Bottom));
                c.ArcTo(new Point(r.Left, r.Bottom - rad), sz, 0, false, SweepDirection.Clockwise);
                c.LineTo(new Point(r.Left, r.Top + rad));
                c.ArcTo(new Point(r.Left + rad, r.Top), sz, 0, false, SweepDirection.Clockwise);
                c.EndFigure(true);
            }
            return g;
        }

        private static class Native
        {
            public const uint DWM_BB_ENABLE = 0x00000001;

            [StructLayout(LayoutKind.Sequential)]
            public struct DWM_BLURBEHIND
            {
                public uint dwFlags;
                [MarshalAs(UnmanagedType.Bool)] public bool fEnable;
                public IntPtr hRgnBlur;
                [MarshalAs(UnmanagedType.Bool)] public bool fTransitionOnMaximized;
            }

            [DllImport("dwmapi.dll")]
            public static extern int DwmEnableBlurBehindWindow(IntPtr hWnd, ref DWM_BLURBEHIND pBlurBehind);

            [DllImport("dwmapi.dll")]
            public static extern int DwmIsCompositionEnabled([MarshalAs(UnmanagedType.Bool)] out bool enabled);
        }

        #endregion
    }
}