using MiddleMan;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WhatsApp
{
    public class Core :ICore
    {
        public event EventHandler<PluginErrorEventArgs> OnError;
        public string Name { get { return "WhatsApp"; } }
        public string InternalName { get { return "skymu-whatsapp-plugin"; } }
        public string TextUsername { get { return "Phone number"; } }
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Passwordless; } }

        public async Task<LoginResult> LoginMainStep(string username, string password)
        {
            return LoginResult.Success;
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string user, string text)
        {
            return true;
        }
    }
}
