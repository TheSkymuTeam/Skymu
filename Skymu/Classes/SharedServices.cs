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

using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.Templates;
using Avalonia.Media.Imaging;
using Skymu.Helpers;
using System;
using System.Text;
using Yggdrasil.Models;

namespace Skymu.Infrastructure
{
    public static class SharedServices
    {
        private static Bitmap GenerateAvatarImage(string avatar)
        {
            return ImageHelper.Load("Themeable/Profile Pictures/" + avatar + ".png");
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

    public class CompactRecentsTemplateSelector : IDataTemplate
    {
        public IDataTemplate DateHeaderTemplate { get; set; }
        public IDataTemplate CompactDirectMessageTemplate { get; set; }
        public IDataTemplate CompactGroupTemplate { get; set; }

        public bool Match(object data) =>
            data is DateHeaderItem || data is DirectMessage || data is Group;

        public Control Build(object data)
        {
            IDataTemplate template = null;

            if (data is DateHeaderItem)
                template = DateHeaderTemplate;
            else if (data is DirectMessage)
                template = CompactDirectMessageTemplate;
            else if (data is Group)
                template = CompactGroupTemplate;

            return template?.Build(data);
        }
    }
}
