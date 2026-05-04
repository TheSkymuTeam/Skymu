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
using Yggdrasil;

namespace Skymu.Plugins
{
    internal class PluginManager
    {
        public static IMidgard[] Load(string path)
        {
            var PluginList = new List<IMidgard>();

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            int pluginCount = 0;
            foreach (string dll in Directory.GetFiles(path, "plugin*.dll"))
            {
                try
                {
                    Assembly asm = Assembly.LoadFrom(dll);

                    foreach (Type t in asm.GetTypes())
                    {
                        if (typeof(IMidgard).IsAssignableFrom(t) && !t.IsInterface && !t.IsAbstract)
                        {
                            IMidgard instance = (IMidgard)Activator.CreateInstance(t);
                            instance.OnError += Universal.PluginErrorHandler;
                            instance.OnWarning += Universal.PluginWarningHandler;
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
                    plugin.OnError -= Universal.PluginErrorHandler;
                    plugin.OnWarning -= Universal.PluginWarningHandler;
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
