/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
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
                            instance.OnDialog += Universal.PluginDialogHandler;
                            instance.MessageEvent += Universal.PluginNotificationHandler;
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
                        "No plugins detected in the plugin folder. You are most likely getting this error because you extracted the .7z archive with Windows Explorer. Use 7-Zip instead."
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
                    plugin.OnDialog -= Universal.PluginDialogHandler;
                    plugin.MessageEvent -= Universal.PluginNotificationHandler;

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
