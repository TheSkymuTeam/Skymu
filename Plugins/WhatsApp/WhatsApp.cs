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
using System.Collections.ObjectModel;
using System.Threading.Tasks;

namespace WhatsApp
{
    public class Core : ICore
    {
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public string Name { get { return "WhatsApp"; } }
        public string InternalName { get { return "skymu-whatsapp-plugin"; } }
        public string TextUsername { get { return "Phone number"; } }
        public AuthenticationMethod[] AuthenticationType { get { return new[] { AuthenticationMethod.QRCode }; } }
        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            return LoginResult.Success;
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string identifier, string text)
        {
            return true;
        }

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(string identifier) // THIS IS STUB CODE. THIS IS NOT A REPLICATION OF HOW THE INTERFACE IS SUPPOSED TO WORK.
        {                                                                // DO NOT USE THIS FORMAT AS A REFERENCE FOR YOUR PLUGIN. HAVE THIS METHOD SET THE ACTIVE CONV. IDENTIFIER
                                                                         // AND BIND THE ACTIVECONVERSATION COLLECTION TO THE WEBSOCKET MESSAGES FOR THE SELECTED CONVERSATION.
            ActiveConversation.Clear();

            // Conversation stub from your chat
            ActiveConversation.Add(new MessageItem("20202", "Nova", "Nova", "i play genshin impact on the steam deck it doesnt ban you tho 💀", new DateTime(2025, 4, 30, 8, 10, 0)));
            ActiveConversation.Add(new MessageItem("20203", "omega", "omega", "no commen", new DateTime(2025, 4, 30, 8, 10, 10)));
            ActiveConversation.Add(new MessageItem("20204", "Nova", "Nova", "bro\nits a fucking game", new DateTime(2025, 4, 30, 8, 10, 20)));
            ActiveConversation.Add(new MessageItem("20205", "omega", "omega", "ok no comment", new DateTime(2025, 4, 30, 8, 10, 30)));
            ActiveConversation.Add(new MessageItem("20206", "Nova", "Nova", "stop hating on people for playing a game", new DateTime(2025, 4, 30, 8, 10, 40)));
            ActiveConversation.Add(new MessageItem("20207", "omega", "omega", "i didnt say anything", new DateTime(2025, 4, 30, 8, 10, 50)));
            ActiveConversation.Add(new MessageItem("20202", "Nova", "Nova", "nah but you fucking implied it", new DateTime(2025, 4, 30, 8, 11, 0)));
            ActiveConversation.Add(new MessageItem("20202", "omega", "omega", "no?", new DateTime(2025, 4, 30, 8, 11, 10)));
            ActiveConversation.Add(new MessageItem("20202", "Nova", "Nova", "fucking hate people like you unironically dude \"... no comment\" its a fucking game. i dont spend money on it and i like doing the quests. its the same as ZZZ\nyou have no fucking excuse to hate on a game\nunless its shit like concord\ngenshin impact genuinely is a decent game gameplay wise", new DateTime(2025, 4, 30, 8, 11, 20)));

            ActiveConversation.Add(new MessageItem("20202", "patricktbp", "patricktbp", "holy shit stfu both of you", new DateTime(2025, 4, 30, 8, 12, 40)));

            ActiveConversation.Add(new MessageItem("20202", "patricktbp", "patricktbp", "@Mixin do u wanna js go to dms\nto do this shit", new DateTime(2025, 4, 30, 8, 13, 30)));
            ActiveConversation.Add(new MessageItem("20202", "Nova", "Nova", "but seriously you have no fucking excuse to hate on genshin impact except for that fact its an anime game like most people", new DateTime(2025, 4, 30, 8, 14, 0)));
            ActiveConversation.Add(new MessageItem("20202", "Nova", "Nova", "nah i dont wanna collab on this project anymore while this piece of shit is in here unironically.", new DateTime(2025, 4, 30, 8, 15, 0)));
            ActiveConversation.Add(new MessageItem("20202", "omega", "omega", "bro i just said no comment on genshin impact...\nanyways", new DateTime(2025, 4, 30, 8, 15, 20)));
            ActiveConversation.Add(new MessageItem("20202", "patricktbp", "patricktbp", "ggwp", new DateTime(2025, 4, 30, 8, 15, 30)));
            ActiveConversation.Add(new MessageItem("20202", "Mixin", "Mixin", "man wtf", new DateTime(2025, 4, 30, 8, 15, 40)));


            return true;
        }

        public SidebarData SidebarInformation { get; private set; }

        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();

        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        public async Task<bool> PopulateSidebarInformation()
        {
            SidebarInformation = new SidebarData("Whatsapp User", "whatsapp-user@s.whatsapp.net", "$ 69420.67 Meta Bucks", UserConnectionStatus.Unknown);
            return true;
        }

        public async Task<bool> PopulateContactsList()
        {
            ContactsList.Add(new ProfileData("Alice", "alice@s.whatsapp.net", "Hey there! I am using WhatsApp.", UserConnectionStatus.Online, null));
            ContactsList.Add(new ProfileData("Bob", "bob@s.whatsapp.net", "HELLO", UserConnectionStatus.Away, null));
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            RecentsList.Add(new ProfileData("Sensei Wu", "sensei@s.whatsapp.net", "NO", UserConnectionStatus.DoNotDisturb, null));
            RecentsList.Add(new ProfileData("thegamingkart", "mario@s.whatsapp.net", "SAY SOMETHING", UserConnectionStatus.Offline, null));
            return true;
        }

        public async Task<string[]> SaveAutoLoginCredential()
        {
            return new string[] { "my token here" };
        }

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            return LoginResult.Failure;
        }
    }
}