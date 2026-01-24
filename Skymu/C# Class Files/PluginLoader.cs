using MiddleMan;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Skymu
{
    internal class PluginLoader
    {
        public static ICore[] LoadPlugins(string path)
        {
            var plugins = new List<ICore>();

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            int pluginCount = 0;
            foreach (string dll in Directory.GetFiles(path, "*.dll"))
            {
                Assembly asm = Assembly.LoadFrom(dll);

                foreach (Type t in asm.GetTypes())
                {
                    if (typeof(ICore).IsAssignableFrom(t) &&
                        !t.IsInterface &&
                        !t.IsAbstract)
                    {
                        ICore instance = (ICore)Activator.CreateInstance(t);
                        instance.OnError += Universal.PluginErrHandler;
                        plugins.Add(instance);
                        pluginCount++;
                    }
                }
            }

            if (pluginCount < 1)
            {
                Universal.ExceptionHandler(
                    new Exception("No plugins detected in the plugin folder. Please download some from our website.")
                );
            }
            return plugins.ToArray();
        }
    }
}
