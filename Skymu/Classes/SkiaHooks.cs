using System;
using System.Runtime.InteropServices;

namespace Skymu
{
    static class DWriteGdiClassicHook
    {
        const int RM_GDI_CLASSIC = 2, RM_NATURAL = 4, RM_NATURAL_SYMMETRIC = 5;
        const int MM_NATURAL = 0, MM_GDI_CLASSIC = 1;

        // vtable slots: IDWriteFactory::CreateGlyphRunAnalysis = 23,
        // IDWriteFactory2::CreateGlyphRunAnalysis = 30
        const int SLOT_F1 = 23, SLOT_F2 = 30;

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

        static CreateGRA1? _orig1, _hook1;
        static CreateGRA2? _orig2, _hook2;
        static bool _installed;

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
                return _orig1!(self, run, ppd, xform, rm, mm, bx, by, outp);
            };
            _orig1 = Patch<CreateGRA1>(f1, SLOT_F1, _hook1);

            if (Marshal.QueryInterface(f1, ref iidF2, out var f2) == 0)
            {
                _hook2 = (self, run, xform, rm, mm, gf, aa, bx, by, outp) =>
                {
                    if (gf != 1 /*GRID_FIT_MODE_DISABLED*/) Fix(run, ref rm, ref mm);
                    return _orig2!(self, run, xform, rm, mm, gf, aa, bx, by, outp);
                };
                _orig2 = Patch<CreateGRA2>(f2, SLOT_F2, _hook2);
            }
        }

        static void Fix(IntPtr run, ref int rm, ref int mm)
        {
            if (rm != RM_NATURAL && rm != RM_NATURAL_SYMMETRIC) return; // leave ALIASED etc. alone
            rm = RM_GDI_CLASSIC;
            if (mm == MM_NATURAL) mm = MM_GDI_CLASSIC;

            int off = IntPtr.Size;
            float size = BitConverter.Int32BitsToSingle(Marshal.ReadInt32(run, off));
            Marshal.WriteInt32(run, off, BitConverter.SingleToInt32Bits(MathF.Round(size)));
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
}