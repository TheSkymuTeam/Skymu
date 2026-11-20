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

using Avalonia.Media.TextFormatting;
using HarmonyLib;
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace Skymu.AvaloniaTools
{
    static class DWriteGdiClassicHook // Hook into Direct Write la, tell it to render using GDI metrics la, and also adjust the kerning .
    {
        const int RM_GDI_CLASSIC = 2, RM_NATURAL = 4, RM_NATURAL_SYMMETRIC = 5;
        const int MM_NATURAL = 0, MM_GDI_CLASSIC = 1;
        const int GRID_FIT_ENABLED = 2; // DWRITE_GRID_FIT_MODE_ENABLED

        // vtable slots: IDWriteFactory::CreateGlyphRunAnalysis = 23,
        // IDWriteFactory2::CreateGlyphRunAnalysis = 30,
        // IDWriteGlyphRunAnalysis::CreateAlphaTexture = 4
        const int SLOT_F1 = 23, SLOT_F2 = 30, SLOT_CAT = 4;
        const double WEIGHT_GAMMA = 0.75;

        [DllImport("dwrite.dll")]
        static extern int DWriteCreateFactory(int type, ref Guid iid, out IntPtr factory);
        [DllImport("kernel32.dll")]
        static extern bool VirtualProtect(IntPtr addr, UIntPtr size, uint prot, out uint old);

        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        delegate int CreateGRA1(IntPtr self, IntPtr run, float ppd, IntPtr xform,
                                int rm, int mm, float bx, float by, IntPtr outp);

        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        delegate int CreateGRA2(IntPtr self, IntPtr run, IntPtr xform,
                                int rm, int mm, int gridFit, int aa,
                                float bx, float by, IntPtr outp);

        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        delegate int CreateAlphaTex(IntPtr self, int type, IntPtr rect, IntPtr buf, uint size);

        static CreateGRA1? _orig1, _hook1;
        static CreateGRA2? _orig2, _hook2;
        static CreateAlphaTex? _origCat, _hookCat;
        static bool _installed, _catPatched;
        static readonly object _catLock = new();
        static readonly byte[] _lut = BuildLut(WEIGHT_GAMMA);

        public static void Install()
        {
            if (_installed || !OperatingSystem.IsWindows()) return;
            _installed = true;

            var iidF1 = new Guid("b859ee5a-d838-4b5b-a2e8-1adc7d93db48");
            var iidF2 = new Guid("0439fc60-ca44-4994-8dee-3a9af7b732ec");

            if (DWriteCreateFactory(0 /*SHARED*/, ref iidF1, out var f1) != 0) return;

            _hook1 = (self, run, ppd, xform, rm, mm, bx, by, outp) =>
            {
                Fix(run, ref rm, ref mm);
                ZeroSubpixel(xform);
                int hr = _orig1!(self, run, ppd, xform, rm, mm, bx, by, outp);
                if (hr == 0) PatchAlphaTexture(Marshal.ReadIntPtr(outp));
                return hr;
            };
            _orig1 = Patch<CreateGRA1>(f1, SLOT_F1, _hook1);

            if (Marshal.QueryInterface(f1, ref iidF2, out var f2) == 0)
            {
                _hook2 = (self, run, xform, rm, mm, gf, aa, bx, by, outp) =>
                {
                    gf = GRID_FIT_ENABLED; // force strong hinting even if Skia asked for none
                    Fix(run, ref rm, ref mm);
                    ZeroSubpixel(xform);
                    int hr = _orig2!(self, run, xform, rm, mm, gf, aa, bx, by, outp);
                    if (hr == 0) PatchAlphaTexture(Marshal.ReadIntPtr(outp));
                    return hr;
                };
                _orig2 = Patch<CreateGRA2>(f2, SLOT_F2, _hook2);
            }
        }

        static void Fix(IntPtr run, ref int rm, ref int mm)
        {
            if (rm != RM_NATURAL && rm != RM_NATURAL_SYMMETRIC) return; // leave ALIASED etc. alone!!!
            rm = RM_GDI_CLASSIC;
            if (mm == MM_NATURAL) mm = MM_GDI_CLASSIC;

            int off = IntPtr.Size;
            float size = BitConverter.Int32BitsToSingle(Marshal.ReadInt32(run, off));
            Marshal.WriteInt32(run, off, BitConverter.SingleToInt32Bits((float)GdiAdvancePatch.GdiEm(size)));
        }

        static void ZeroSubpixel(IntPtr xform)
        {
            if (xform == IntPtr.Zero) return;
            Marshal.WriteInt32(xform, 16, 0); // DWRITE_MATRIX.dx
            Marshal.WriteInt32(xform, 20, 0); // DWRITE_MATRIX.dy
        }

        static byte[] BuildLut(double g)
        {
            var t = new byte[256];
            for (int i = 0; i < 256; i++)
                t[i] = (byte)Math.Round(255 * Math.Pow(i / 255.0, g));
            return t;
        }
        static void PatchAlphaTexture(IntPtr analysisPtr)
        {
            if (_catPatched || analysisPtr == IntPtr.Zero) return;
            lock (_catLock)
            {
                if (_catPatched) return;
                _hookCat = (self, type, rect, buf, size) =>
                {
                    int hr = _origCat!(self, type, rect, buf, size);
                    if (hr == 0 && buf != IntPtr.Zero && size > 0)
                    {
                        var tmp = new byte[size];
                        Marshal.Copy(buf, tmp, 0, (int)size);
                        for (int i = 0; i < tmp.Length; i++) tmp[i] = _lut[tmp[i]];
                        Marshal.Copy(tmp, 0, buf, (int)size);
                    }
                    return hr;
                };
                _origCat = Patch<CreateAlphaTex>(analysisPtr, SLOT_CAT, _hookCat);
                _catPatched = true;
            }
        }

        static T Patch<T>(IntPtr comObj, int slot, T hook) where T : Delegate
        {
            IntPtr vtbl = Marshal.ReadIntPtr(comObj);
            IntPtr slotAddr = vtbl + slot * IntPtr.Size;
            IntPtr origPtr = Marshal.ReadIntPtr(slotAddr);
            var orig = Marshal.GetDelegateForFunctionPointer<T>(origPtr);

            VirtualProtect(slotAddr, (UIntPtr)IntPtr.Size, 0x04 /*RW*/, out uint old);
            Marshal.WriteIntPtr(slotAddr, Marshal.GetFunctionPointerForDelegate(hook));
            VirtualProtect(slotAddr, (UIntPtr)IntPtr.Size, old, out _);
            return orig;
        }
    }

    static class GdiAdvancePatch
    {
        public static bool Install(Harmony harmony)
        {
            try
            {
                var type = AccessTools.TypeByName("Avalonia.Skia.TextShaperImpl")
                    ?? throw new InvalidOperationException("TextShaperImpl not found");
                var method = AccessTools.Method(type, "ShapeText")
                    ?? throw new InvalidOperationException("ShapeText not found");
                harmony.Patch(method, postfix: new HarmonyMethod(typeof(GdiAdvancePatch), nameof(Postfix)));
                return true;
            }
            catch (Exception ex)
            {
                // Harmony does not launch on NET 11??
                Debug.WriteLine("GdiAdvancePatch not installed: " + ex.Message);
                return false;
            }
        }


        public static bool KeepKerning = false;

        
        internal static double GdiEm(double em) => Math.Max(1, Math.Round(em, MidpointRounding.AwayFromZero));

        static double R(double v) => Math.Round(v, MidpointRounding.AwayFromZero);

        static void Postfix(ShapedBuffer __result, TextShaperOptions options)
        {
            try
            {
                var typeface = __result.GlyphTypeface;
                int upem = typeface.Metrics.DesignEmHeight;
                double em = __result.FontRenderingEmSize;
                if (upem <= 0 || em <= 0)
                {
                    for (int i = 0; i < __result.Length; i++)
                    {
                        var g = __result[i];
                        __result[i] = new GlyphInfo(g.GlyphIndex, g.GlyphCluster, R(g.GlyphAdvance), g.GlyphOffset);
                    }
                    return;
                }

                double gdiEm = GdiEm(em);
                double origScale = em / upem, gdiScale = gdiEm / upem;
                double ls = options.LetterSpacing;   
                ushort space = typeface.GetGlyph(' ');

                for (int i = 0; i < __result.Length; i++)
                {
                    var g = __result[i];
                    double hb = g.GlyphAdvance - ls;    
                    int design = typeface.GetGlyphAdvance(g.GlyphIndex);
                    double unkerned = design * origScale;
                    double adv;

                    if (Math.Abs(hb) < 1e-6)
                        adv = 0;                        
                    else if (g.GlyphIndex == space && Math.Abs(hb - unkerned) > em * 0.5)
                        adv = R(hb);                    
                    else
                    {
                        adv = R(design * gdiScale);
                        if (KeepKerning)
                            adv += R((hb - unkerned) * gdiEm / em);
                    }

                    __result[i] = new GlyphInfo(g.GlyphIndex, g.GlyphCluster, adv + ls, g.GlyphOffset);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("GdiAdvancePatch.Postfix failed: " + ex.Message);
            }
        }
    }
}