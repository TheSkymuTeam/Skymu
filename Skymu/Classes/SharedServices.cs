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

using Skymu.Helpers;
using System;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using Yggdrasil.Models;

namespace Skymu.Infrastructure
{
    public static class SharedServices
    {
        private static BitmapImage GenerateAvatarImage(string avatar)
        {
            return ImageHelper.FreezeLoad("Themeable/Profile Pictures/" + avatar + ".png");
        }

        public static void GenerateGlobalAvatars()
        {
            Universal.GroupAvatar = GenerateAvatarImage("group");
            Universal.AnonymousAvatar = GenerateAvatarImage("anonymous");
            Universal.UnknownAvatar = GenerateAvatarImage("unknown");
        }

        public static string ConvertHexKeyToUnicode(string hexKey)
        {
            try
            {
                var sb = new StringBuilder();
                foreach (var part in hexKey.Split('-'))
                    sb.Append(char.ConvertFromUtf32(Convert.ToInt32(part, 16)));
                return sb.ToString();
            }
            catch
            {
                return string.Empty;
            }
        }
    }

    public class CompactRecentsTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DateHeaderTemplate { get; set; }
        public DataTemplate CompactDirectMessageTemplate { get; set; }
        public DataTemplate CompactGroupTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item is DateHeaderItem)
                return DateHeaderTemplate;
            else if (item is DirectMessage)
                return CompactDirectMessageTemplate;
            else if (item is Group)
                return CompactGroupTemplate;
            return base.SelectTemplate(item, container);
        }
    }
}
