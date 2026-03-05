/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;

namespace Skymu
{
    internal class Plugins
    {
        public static ICore[] Load(string path)
        {
            var PluginList = new List<ICore>();

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            int pluginCount = 0;
            foreach (string dll in Directory.GetFiles(path, "plug*.dll"))
            {
                try
                {
                    Assembly asm = Assembly.LoadFrom(dll);

                    foreach (Type t in asm.GetTypes())
                    {
                        if (typeof(ICore).IsAssignableFrom(t) &&
                        !t.IsInterface &&
                        !t.IsAbstract)
                        {
                            ICore instance = (ICore)Activator.CreateInstance(t);
                            instance.OnError += Universal.PluginErrorHandler;
                            instance.OnWarning += Universal.PluginWarningHandler;
                            instance.Notification += Universal.PluginNotificationHandler;
                            PluginList.Add(instance);
                            pluginCount++;
                        }
                    }
                }
                catch (ReflectionTypeLoadException ex)
                {
                    foreach (var loaderEx in ex.LoaderExceptions)
                        Console.WriteLine(loaderEx);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }

            if (pluginCount < 1)
            {
                Universal.ExceptionHandler(
                    new Exception("No plugins detected in the plugin folder. Please download some from our website.")
                );
            }
            return PluginList.ToArray();
        }

        public static void DisposeAll()
        {
            if (Universal.Plugin != null) Universal.Plugin.Dispose();
            if (Universal.PluginList == null) return;

            foreach (var plugin in Universal.PluginList)
            {
                try
                {
                    plugin.OnError -= Universal.PluginErrorHandler;
                    plugin.OnWarning -= Universal.PluginWarningHandler;
                    plugin.Notification -= Universal.PluginNotificationHandler;

                    if (plugin is IDisposable disposable)
                    {
                        disposable.Dispose();
                    }
                }
                catch
                {
                    
                }
            }
            Universal.PluginList = null;
            Universal.Plugin = null;
        }
    }
}
