// CLR reference for the transpiled BuildInfo::IsNewerThan.
// Prints the same matrix as tests/versioning_harness.c so the two outputs
// can be diffed byte for byte.

using System;
using System.Reflection;
using Skymu.Versioning;

internal static class Program
{
    private record Row(int Major, int Minor, int Patch, bool IsBeta, int Beta);

    private static BuildInfo Make(Row r)
    {
        var b = new BuildInfo();
        Set(b, "<Major>k__BackingField", r.Major);
        Set(b, "<Minor>k__BackingField", r.Minor);
        Set(b, "<Patch>k__BackingField", r.Patch);
        Set(b, "<IsBeta>k__BackingField", r.IsBeta);
        Set(b, "<BetaNumber>k__BackingField", r.Beta);
        return b;
    }

    private static void Set(object o, string field, object value)
    {
        var f = o.GetType().GetField(field, BindingFlags.NonPublic | BindingFlags.Instance);
        f.SetValue(o, value);
    }

    private static void Main()
    {
        var cases = new[]
        {
            (new Row(1, 0, 0, false, 0), new Row(1, 0, 0, false, 0)),
            (new Row(1, 1, 0, false, 0), new Row(1, 0, 9, false, 0)),
            (new Row(1, 1, 0, true, 3),  new Row(1, 1, 0, true, 2)),
            (new Row(1, 1, 0, true, 0),  new Row(1, 1, 0, false, 0)),
            (new Row(1, 1, 0, false, 0), new Row(1, 1, 0, true, 5)),
            (new Row(1, 2, 0, false, 0), new Row(1, 2, 0, false, 0)),
            (new Row(2, 0, 0, false, 0), new Row(1, 9, 9, false, 0)),
        };

        foreach (var (a, b) in cases)
        {
            Console.WriteLine(Make(a).IsNewerThan(Make(b)) ? 1 : 0);
        }

        Console.WriteLine(Make(new Row(1, 0, 0, false, 0)).IsNewerThan(null) ? 1 : 0);

        var c = Make(new Row(1, 0, 0, false, 0));
        Set(c, "<MajorName>k__BackingField", "Luminous");
        Set(c, "<MinorName>k__BackingField", "Dusk");
        Console.WriteLine(c.GetCodeName());
    }
}
