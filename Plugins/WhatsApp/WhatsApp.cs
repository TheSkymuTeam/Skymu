/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
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
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Media.Imaging;
using System.Text;
using System.Threading.Tasks;

namespace WhatsApp
{
    public class Core :ICore
    {
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public string Name { get { return "WhatsApp"; } }
        public string InternalName { get { return "skymu-whatsapp-plugin"; } }
        public string TextUsername { get { return "Phone number"; } }
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Passwordless; } }

        public async Task<LoginResult> LoginMainStep(string username, string password = null, bool tryLoginWithSavedCredentials = false)
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

        public async Task<SidebarData> FetchSidebarData()
        {
            ObservableCollection<ContactData> contacts = new ObservableCollection<ContactData>();
            contacts.Add(new ContactData("Alice", "alice@s.whatsapp.net", "Hey there! I am using WhatsApp.", UserConnectionStatus.Online, null));
            contacts.Add(new ContactData("Bob", "bob@s.whatsapp.net", "HELLO", UserConnectionStatus.Away, null));
            return new SidebarData("Whatsapp User", "$ 69420.67 Meta Bucks", UserConnectionStatus.Unknown, contacts);
        }

        public async Task<LoginResult> TryAutoLogin()
        {
            return LoginResult.Failure;
        }
    }
}
