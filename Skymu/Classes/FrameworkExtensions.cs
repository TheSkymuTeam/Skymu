using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Skymu
{
    public struct Rune
    {
        public int Value { get; }

        public Rune(int value)
        {
            Value = value;
        }
    }

    public static class FrameworkExtensions
    {
        public static IEnumerable<Rune> EnumerateRunes(this string str)
        {
            if (str == null)
                yield break;

            for (int i = 0; i < str.Length; i++)
            {
                int codePoint = char.ConvertToUtf32(str, i);
                yield return new Rune(codePoint);

                if (char.IsHighSurrogate(str[i]))
                    i++; // skip the low surrogate
            }
        }
    }
}
