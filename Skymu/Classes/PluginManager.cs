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
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Linq;
using Yggdrasil;

namespace Skymu.Plugins
{
    internal class PluginManager
    {
        public static ICore[] Load(string path)
        {
            var PluginList = new List<ICore>();

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            int pluginCount = 0;

            string[] smp_list = Directory.EnumerateDirectories(path, "*.smp", SearchOption.TopDirectoryOnly).ToArray();

            foreach (string smp in smp_list)
            {
                try
                {
                    string dll = Directory.GetFiles(smp, "smp.*.dll").FirstOrDefault();
                    if (string.IsNullOrEmpty(dll))
                    {
                        Debug.WriteLine($"[PluginManager] No plugin dll found in folder: {smp}");
                        continue;
                    }
                    // Universal.MessageBox(dll); // DEBUG if you want to check plugin loading
                    Assembly asm = Assembly.LoadFrom(dll);

                    foreach (Type t in asm.GetTypes())
                    {
                        if (typeof(ICore).IsAssignableFrom(t) && !t.IsInterface && !t.IsAbstract)
                        {
                            ICore instance = (ICore)Activator.CreateInstance(t);
                            instance.DialogTube += Universal.PluginDialogHandler;
                            instance.MessageTube += Universal.PluginNotificationHandler;
                            PluginList.Add(instance);
                            pluginCount++;
                        }
                    }
                }
                catch (ReflectionTypeLoadException ex)
                {
                    foreach (var loaderEx in ex.LoaderExceptions)
                        Debug.WriteLine(loaderEx);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                }
            }

            if (pluginCount < 1)
            {
                Universal.ExceptionHandler(
                    new Exception(
                        "No plugins detected in the plugin folder."
                    )
                );
            }
            return PluginList.ToArray();
        }

        public static void DisposeAll()
        {
            if (Universal.Plugin != null)
                Universal.Plugin.Dispose();
            if (Universal.PluginList == null)
                return;

            foreach (var plugin in Universal.PluginList)
            {
                try
                {
                    plugin.DialogTube -= Universal.PluginDialogHandler;
                    plugin.MessageTube -= Universal.PluginNotificationHandler;

                    if (plugin is IDisposable disposable)
                    {
                        disposable.Dispose();
                    }
                }
                catch { }
            }
            Universal.PluginList = null;
            Universal.Plugin = null;
            Universal.CallPlugin = null;
        }
    }
}
