/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

namespace Skymu
{
    internal class PluginLoader
    {
        public static ICore[] LoadPlugins(string path)
        {
            var PluginList = new List<ICore>();

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            int pluginCount = 0;
            foreach (string dll in Directory.GetFiles(path, "*.dll"))
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
                            PluginList.Add(instance);
                            pluginCount++;
                        }
                    }
                }
                catch { }
            }

            if (pluginCount < 1)
            {
                Universal.ExceptionHandler(
                    new Exception("No plugins detected in the plugin folder. Please download some from our website.")
                );
            }
            return PluginList.ToArray();
        }
    }
}
