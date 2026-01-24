using MiddleMan;
using System;
using System.Windows;

using System.Windows.Threading;

namespace Skymu
{
    public partial class Universal : Application
    {
        public static ICore[] Plugins;
        public static void PluginErrHandler(object sender, PluginErrorEventArgs e)
        {
            new Dialog(1, e.Message, e.Title);
        }
        private void App_DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs ev)
        {
            ExceptionHandler(ev.Exception);
            ev.Handled = true;
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs ev)
        {
            Exception exception = ev.ExceptionObject as Exception;

            if (exception != null)
            {
                ExceptionHandler(exception);
            }

            else
            {
                ExceptionHandler(new Exception("CurrentDomain non-exception object thrown"));
            }
        }
    
        public static void Shutdown(System.ComponentModel.CancelEventArgs ev)
        {          
            if (ev != null)
            {
                ev.Cancel = true;
            }

            new Dialog(3);           
        }

        public static void ExceptionHandler(Exception ex) 
        {
            new Dialog(5, ex.Message); 
        }

        public static void ShowMsg(string content, string title = "Message")
        {
            new Dialog(0, content, title);
        }

        public static void NotImplemented(string feature)
        {
            new Dialog(6, feature); 
        }

        protected override void OnStartup(StartupEventArgs ev)
        {
            this.DispatcherUnhandledException += App_DispatcherUnhandledException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            base.OnStartup(ev);
        }

        protected override void OnExit(ExitEventArgs ev)
        {
            Tray.DisposeIcon();
            base.OnExit(ev);        
        }
    }
}
