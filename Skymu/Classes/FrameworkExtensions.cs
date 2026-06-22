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

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;

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
        public static string ToDisplayString(this Enum value)
        {
            FieldInfo field = value.GetType().GetField(value.ToString());
            if (field != null)
            {
                object[] attrs = field.GetCustomAttributes(typeof(DescriptionAttribute), false);
                if (attrs.Length > 0)
                    return ((DescriptionAttribute)attrs[0]).Description;
            }
            return value.ToString();
        }
    }
}
