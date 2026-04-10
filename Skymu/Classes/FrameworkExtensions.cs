/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Windows.Media.Imaging;

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
                    i++; 
            }
        }
    }
}
