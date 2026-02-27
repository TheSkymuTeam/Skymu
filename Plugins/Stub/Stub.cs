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
        public string InternalName { get { return "skymu-pluginstub"; } }

        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[] { new AuthTypeInfo(AuthenticationMethod.Token, "Fancy a stub username?") };
            }
        }
        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            Notification.Invoke(this, new NotificationEventArgs(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 14, 0), "but seriously you have no fucking excuse to hate on genshin impact except for that fact its an anime game like most people", null, null), UserConnectionStatus.Online));
            return LoginResult.Success;
        }
        public async Task<string> GetQRCode()
        {
            return String.Empty;
        }

        public void Dispose() { }
        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();

        public async Task<LoginResult> AuthenticateTwoFA(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment, string parent_message_identifier)
        {
            if (text is not null)
            {
                if (attachment is not null) OnWarning?.Invoke(this, new PluginMessageEventArgs("Message with text and attachment sent."));
                else OnWarning?.Invoke(this, new PluginMessageEventArgs("Text-only message sent."));
            }
            else OnWarning?.Invoke(this, new PluginMessageEventArgs("Attachment-only message sent."));
            if (parent_message_identifier is not null) OnWarning?.Invoke(this, new PluginMessageEventArgs("Message references a parent."));
            TypingUsersList.Clear();
            TypingUsersList.Add(new User("Nova", "20202", "20202"));
            TypingUsersList.Add(new User("omega", "20203", "20203"));
            TypingUsersList.Add(new User("patricktbp", "20204", "20204"));
            TypingUsersList.Add(new User("WGP", "20200", "20200"));
            TypingUsersList.Add(new User("HUBAXE", "20205", "20205"));
            return true;
        }

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(Conversation conversation) // THIS IS STUB CODE. THIS IS NOT A REPLICATION OF HOW THE INTERFACE IS SUPPOSED TO WORK.
        {                                                                // DO NOT USE THIS FORMAT AS A REFERENCE FOR YOUR PLUGIN. HAVE THIS METHOD SET THE ACTIVE CONV. IDENTIFIER
            TypingUsersList.Clear();                                                             // AND BIND THE ACTIVECONVERSATION COLLECTION TO THE WEBSOCKET MESSAGES FOR THE SELECTED CONVERSATION.
            ActiveConversation.Clear();

            ActiveConversation.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 0), "i play genshin impact on the steam deck it doesnt ban you tho 💀"));
            ActiveConversation.Add(new Message("20203", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 10), "no commen"));
            ActiveConversation.Add(new Message("20204", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 20), "bro\nits a fucking game"));
            ActiveConversation.Add(new Message("20205", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 30), "ok no comment"));
            ActiveConversation.Add(new Message("20206", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 40), "stop hating on people for playing a game"));
            ActiveConversation.Add(new Message("20207", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 50), "i didnt say anything"));
            ActiveConversation.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 11, 0), "nah but you fucking implied it"));
            ActiveConversation.Add(new Message("20202", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 11, 10), "no?"));
            ActiveConversation.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 11, 20), "fucking hate people like you unironically dude \"... no comment\" its a fucking game. i dont spend money on it and i like doing the quests. its the same as ZZZ\nyou have no fucking excuse to hate on a game\nunless its shit like concord\ngenshin impact genuinely is a decent game gameplay wise"));
            ActiveConversation.Add(new Message("20202", new User("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 12, 40), "holy shit stfu both of you"));
            ActiveConversation.Add(new Message("20202", new User("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 13, 30), "@Mixin do u wanna js go to dms\nto do this shit"));
            ActiveConversation.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 14, 0), "but seriously you have no fucking excuse to hate on genshin impact except for that fact its an anime game like most people"));
            ActiveConversation.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 15, 0), "nah i dont wanna collab on this project anymore while this piece of shit is in here unironically."));
            ActiveConversation.Add(new Message("20202", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 15, 20), "bro i just said no comment on genshin impact...\nanyways"));
            ActiveConversation.Add(new Message("20202", new User("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 15, 30), "ggwp"));
            ActiveConversation.Add(new Message("20202", new User("Mixin", "Mixin", "Mixin"), new DateTime(2025, 4, 30, 8, 15, 40), "man wtf"));



            return true;
        }

        public User? MyInformation { get; private set; }

        User luigi = new User("Luigi", "luigi", "013", "NO", UserConnectionStatus.DoNotDisturb);
        User mario = new User("Mario", "mario", "012", "SAY SOMETHING", UserConnectionStatus.Offline);

        public ObservableCollection<Conversation> ContactsList { get; private set; } = new ObservableCollection<Conversation>();

        public ObservableCollection<Conversation> RecentsList { get; private set; } = new ObservableCollection<Conversation>();

        public ObservableCollection<Server> ServerList { get; private set; } = new ObservableCollection<Server>();

        public async Task<bool> PopulateServerList()
        {
            string id = "2132";
            ServerList.Add(new Server("Epic gamer soyciety", id, new User[2] { luigi, mario }, new ServerChannel[] { new ServerChannel("channel1", "2132/1", id, ChannelType.Standard), new ServerChannel("rtead only", "2132/2", id, ChannelType.ReadOnly) }));
            return true;
        }

        public async Task<bool> PopulateSidebarInformation()
        {
            MyInformation = new User("Sensei Wu", "thegamingkart", "00001", "Hello test", UserConnectionStatus.Online);
            return true;
        }

        public async Task<bool> PopulateContactsList()
        {
            ContactsList.Add(new DirectMessage(new User("Skymu user 1", "u1", "u1", "hi skmuuymu", UserConnectionStatus.Online), "32"));
            ContactsList.Add(new DirectMessage(new User("Skymu user 2", "u2", "u2", "HELLO", UserConnectionStatus.Away), "32"));
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            User luigi = new User("Luigi", "luigi", "013", "NO", UserConnectionStatus.DoNotDisturb);
            User mario = new User("Mario", "mario", "012", "SAY SOMETHING", UserConnectionStatus.Offline);
            RecentsList.Add(new DirectMessage(luigi, "24"));
            RecentsList.Add(new DirectMessage(mario, "3412"));
            RecentsList.Add(new Group("Giga based coalition", "067", new User[2] { luigi, mario }));
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
        public async Task<SavedCredential?> StoreCredential()
        {
            return null;
        }

        public Task<bool> SetPresenceStatus(UserConnectionStatus status) { return Task.FromResult(true); }
        public Task<bool> SetTextStatus(string status) { return Task.FromResult(true); }

        public async Task<LoginResult> Authenticate(SavedCredential autoLoginCredentials)
        {
            return LoginResult.Failure;
        }
    }
}