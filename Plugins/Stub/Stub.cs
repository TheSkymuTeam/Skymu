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
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using static System.Formats.Asn1.AsnWriter;

namespace Stub
{
    public class Core : ICore
    {
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;
        public string Name { get { return "Stub plugin"; } }
        public string TextUsername { get { return "Enter random text here"; } }
        public string InternalName { get { return "skymu-pluginstub"; } }
        public AuthenticationMethod[] AuthenticationType { get { return new[] { AuthenticationMethod.Token }; } }
        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            Notification.Invoke(this, new NotificationEventArgs(new MessageItem("20202", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 14, 0), "but seriously you have no fucking excuse to hate on genshin impact except for that fact its an anime game like most people", null, null), UserConnectionStatus.Online));
            return LoginResult.Success;
        }
        public async Task<string> GetQRCode()
        {
            return String.Empty;
        }

        public void Dispose() { }
        public ObservableCollection<UserData> TypingUsersList { get; private set; } = new ObservableCollection<UserData>();

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string identifier, string text)
        {
            TypingUsersList.Clear();
            TypingUsersList.Add(new UserData("Nova", "20202", "20202"));
            TypingUsersList.Add(new UserData("omega", "20203", "20203"));
            TypingUsersList.Add(new UserData("patricktbp", "20204", "20204"));
            TypingUsersList.Add(new UserData("WGP", "20200", "20200"));
            TypingUsersList.Add(new UserData("HUBAXE", "20205", "20205"));
            return true;
        }

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(string identifier) // THIS IS STUB CODE. THIS IS NOT A REPLICATION OF HOW THE INTERFACE IS SUPPOSED TO WORK.
        {                                                                // DO NOT USE THIS FORMAT AS A REFERENCE FOR YOUR PLUGIN. HAVE THIS METHOD SET THE ACTIVE CONV. IDENTIFIER
            TypingUsersList.Clear();                                                             // AND BIND THE ACTIVECONVERSATION COLLECTION TO THE WEBSOCKET MESSAGES FOR THE SELECTED CONVERSATION.
            ActiveConversation.Clear();

            ActiveConversation.Add(new MessageItem("20202", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 0), "i play genshin impact on the steam deck it doesnt ban you tho 💀", null, null));
            ActiveConversation.Add(new MessageItem("20203", new UserData("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 10), "no commen", null, null));
            ActiveConversation.Add(new MessageItem("20204", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 20), "bro\nits a fucking game", null, null));
            ActiveConversation.Add(new MessageItem("20205", new UserData("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 30), "ok no comment", null, null));
            ActiveConversation.Add(new MessageItem("20206", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 40), "stop hating on people for playing a game", null, null));
            ActiveConversation.Add(new MessageItem("20207", new UserData("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 50), "i didnt say anything", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 11, 0), "nah but you fucking implied it", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 11, 10), "no?", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 11, 20), "fucking hate people like you unironically dude \"... no comment\" its a fucking game. i dont spend money on it and i like doing the quests. its the same as ZZZ\nyou have no fucking excuse to hate on a game\nunless its shit like concord\ngenshin impact genuinely is a decent game gameplay wise", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 12, 40), "holy shit stfu both of you", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 13, 30), "@Mixin do u wanna js go to dms\nto do this shit", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 14, 0), "but seriously you have no fucking excuse to hate on genshin impact except for that fact its an anime game like most people", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 15, 0), "nah i dont wanna collab on this project anymore while this piece of shit is in here unironically.", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 15, 20), "bro i just said no comment on genshin impact...\nanyways", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 15, 30), "ggwp", null, null));
            ActiveConversation.Add(new MessageItem("20202", new UserData("Mixin", "Mixin", "Mixin"), new DateTime(2025, 4, 30, 8, 15, 40), "man wtf", null, null));



            return true;
        }

        public UserData MyInformation { get; private set; }

        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();

        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        public async Task<bool> PopulateSidebarInformation()
        {
            MyInformation = new UserData("Sensei Wu", "thegamingkart", "00001", "Hello test", UserConnectionStatus.Online);
            return true;
        }

        public async Task<bool> PopulateContactsList()
        {
            ContactsList.Add(new UserData("Skymu user 1", "u1", "u1", "hi skmuuymu", UserConnectionStatus.Online));
            ContactsList.Add(new UserData("Skymu user 2", "u2", "u2", "HELLO", UserConnectionStatus.Away));
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            RecentsList.Add(new UserData("Luigi", "luigi@s.whatsapp.net", "luigi@s.whatsapp.net", "NO", UserConnectionStatus.DoNotDisturb, null));
            RecentsList.Add(new UserData("Mario", "mario@s.whatsapp.net", "mario@s.whatsapp.net", "SAY SOMETHING", UserConnectionStatus.Offline, null));
            return true;
        }
        public ClickableConfiguration[] ClickableConfigurations
        {
            get
            {
                return new ClickableConfiguration[]
                {
                    new ClickableConfiguration(ClickableItemType.User, "<@!", ">"),
                    new ClickableConfiguration(ClickableItemType.User, "<@", ">"),
                    new ClickableConfiguration(ClickableItemType.ServerRole, "<@&", ">"),
                    new ClickableConfiguration(ClickableItemType.ServerChannel, "<#", ">")
                };
            }
        }
        public async Task<string[]> SaveAutoLoginCredential()
        {
            return Array.Empty<string>();
        }

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            return LoginResult.Failure;
        }
    }
}