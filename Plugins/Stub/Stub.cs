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
using System.Collections.ObjectModel;
using System.Threading.Tasks;

namespace Stub
{
    public class Core : ICore
    {
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;
        public string Name { get { return "Stub plugin"; } }
        public string InternalName { get { return "skymu-pluginstub"; } }
        public bool SupportsServers { get { return false; } }

        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[] { new AuthTypeInfo(AuthenticationMethod.Token, "Fancy a stub username?") };
            }
        }
        public Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            MessageEvent.Invoke(this, new MessageRecievedEventArgs("13414", new Message("20202", users[0], new DateTime(2025, 4, 30, 8, 14, 0), "Hello")));
            return Task.FromResult(LoginResult.Success);
        }
        public Task<string> GetQRCode()
        {
            return Task.FromResult(String.Empty);
        }

        public void Dispose() { }
        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();

        public async Task<LoginResult> AuthenticateTwoFA(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment, string parent_message_identifier)
        {
            if (text != null)
            {
                if (attachment != null) OnWarning?.Invoke(this, new PluginMessageEventArgs("Message with text and attachment sent."));
                else OnWarning?.Invoke(this, new PluginMessageEventArgs("Text-only message sent."));
            }
            else OnWarning?.Invoke(this, new PluginMessageEventArgs("Attachment-only message sent."));
            if (parent_message_identifier != null) OnWarning?.Invoke(this, new PluginMessageEventArgs("Message references a parent."));
            TypingUsersList.Clear();
            TypingUsersList.Add(new User("Nova", "20202", "20202"));
            TypingUsersList.Add(new User("omega", "20203", "20203"));
            TypingUsersList.Add(new User("patricktbp", "20204", "20204"));
            TypingUsersList.Add(new User("WGP", "20200", "20200"));
            TypingUsersList.Add(new User("HUBAXE", "20205", "20205"));
            return true;
        }

        public Task<ConversationItem[]> FetchMessages(Conversation conversation, Fetch fetch_type, int message_count, string identifier)
        {                                                                        // THIS IS STUB CODE. THIS IS NOT A REPLICATION OF HOW THE INTERFACE IS SUPPOSED TO WORK.
            TypingUsersList.Clear();                                               
            List<ConversationItem> messageList = new List<ConversationItem>();

            messageList.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 0), "Hey, I’ve been playing Genshin Impact on the Steam Deck, it works fine."));
            messageList.Add(new Message("20203", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 10), "Oh nice, I’ve heard good things about it."));
            messageList.Add(new Message("20204", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 20), "Yeah, it’s a really fun game."));
            messageList.Add(new Message("20205", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 30), "Cool, I might try it out sometime."));
            messageList.Add(new Message("20206", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 10, 40), "It’s pretty enjoyable even without spending money."));
            messageList.Add(new Message("20207", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 10, 50), "That’s good to know."));
            messageList.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 11, 0), "I just wanted to share it’s a solid game."));
            messageList.Add(new Message("20202", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 11, 10), "Thanks for the info!"));
            messageList.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 11, 20), "Gameplay-wise it’s really engaging and well-designed."));
            messageList.Add(new Message("20202", new User("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 12, 40), "Sounds interesting, I’ll check it out."));
            messageList.Add(new Message("20202", new User("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 13, 30), "@Amongus do you want to discuss this more in DMs?"));
            messageList.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 14, 0), "Just sharing my experience, I think most people would enjoy it."));
            messageList.Add(new Message("20202", new User("Nova", "Nova", "Nova"), new DateTime(2025, 4, 30, 8, 15, 0), "I think it could be fun to collaborate on the project with this in mind."));
            messageList.Add(new Message("20202", new User("omega", "omega", "omega"), new DateTime(2025, 4, 30, 8, 15, 20), "Yeah, that makes sense. Thanks for sharing."));
            messageList.Add(new Message("20202", new User("patricktbp", "patricktbp", "patricktbp"), new DateTime(2025, 4, 30, 8, 15, 30), "Great, let’s move forward."));
            messageList.Add(new Message("20202", new User("Amongus", "Amongus", "Amongus"), new DateTime(2025, 4, 30, 8, 15, 40), "Got it, thanks everyone. Also, Genshin impact fuckin sucks ass lol"));

            return Task.FromResult(messageList.ToArray());
        }

        public User MyInformation { get; private set; }

        public ObservableCollection<Conversation> ContactsList { get; private set; } = new ObservableCollection<Conversation>();

        public ObservableCollection<Conversation> RecentsList { get; private set; } = new ObservableCollection<Conversation>();

        public ObservableCollection<Server> ServerList { get; private set; } = new ObservableCollection<Server>();

        public Task<bool> PopulateServerList()
        {
            string id = "2132";
            ServerList.Add(new Server("Epic gamer soyciety", id, users, new ServerChannel[] { new ServerChannel("channel1", "2132/1", id, 0, ChannelType.Standard), new ServerChannel("rtead only", "2132/2", id, 0, ChannelType.ReadOnly) }));
            return Task.FromResult(true);
        }

        public Task<bool> PopulateSidebarInformation()
        {
            
            MyInformation = new User("Sensei Wu", "thegamingkart", "00001", "Hello test", UserConnectionStatus.Online);
            return Task.FromResult(true);
        }

        public Task<bool> PopulateContactsList()
        {
            ContactsList.Clear();
            ContactsList.Add(new DirectMessage(new User("Skymu user 1", "u1", "u1", "hi skmuuymu", UserConnectionStatus.Online), 10, "32"));
            ContactsList.Add(new DirectMessage(new User("Skymu user 2", "u2", "u2", "HELLO", UserConnectionStatus.Away), 0, "32"));
            return Task.FromResult(true);
        }


        User[] users = new User[]
{
    new User("Mario", "mario", "012", "It's-a me!", UserConnectionStatus.Online),
    new User("Luigi", "luigi", "013", "NO", UserConnectionStatus.DoNotDisturb),
    new User("Peach", "peach", "014", "In the castle", UserConnectionStatus.Away),
    new User("Bowser", "bowser", "015", "Planning something...", UserConnectionStatus.Online),
    new User("Yoshi", "yoshi", "016", "Yoshi!", UserConnectionStatus.Online),
    new User("Toad", "toad", "017", "Welcome!", UserConnectionStatus.Online),
    new User("Wario", "wario", "018", "Hehehe", UserConnectionStatus.DoNotDisturb),
    new User("Waluigi", "waluigi", "019", "Wah!", UserConnectionStatus.Invisible),
    new User("Daisy", "daisy", "020", "Hi!", UserConnectionStatus.Online),
    new User("Rosalina", "rosalina", "021", "Watching the stars", UserConnectionStatus.Away),
    new User("Donkey Kong", "dk", "022", "Bananas!", UserConnectionStatus.Online),
    new User("Koopa", "koopa", "023", "Patrolling", UserConnectionStatus.Offline)
};

        private System.Threading.Timer presenceTimer;
        private Random rand = new Random();

        private string[] randomTexts = new string[]
{
    "It's-a me, Mario!",
    "Let's-a go!",
    "Mamma mia!",
    "Here we go!",
    "Just jumped on a Goomba",
    "Looking for Princess Peach",
    "Time to save the kingdom",
    "Collecting coins",
    "Found a Super Mushroom",
    "Jumping through pipes",
    "Watch out for Bowser",
    "Yahoo!",
    "Wahoo!",
    "On my way to the castle"
};

        public Task<bool> PopulateRecentsList()
        {
            RecentsList.Clear();

            foreach (var user in users)
                RecentsList.Add(new DirectMessage(user, rand.Next(0, 5), rand.Next(100, 5000).ToString()));

            RecentsList.Add(new Group("Giga based coalition", "067", users.Length, users));

            if (presenceTimer == null)
                presenceTimer = new System.Threading.Timer(UpdatePresence, null, 0, 1);

            return Task.FromResult(true);
        }

        private void UpdatePresence(object state)
        {
            foreach (var user in users)
                RandomizeUser(user);
        }

        private void RandomizeUser(User user)
        {
            Array values = Enum.GetValues(typeof(UserConnectionStatus));
            user.PresenceStatus = (UserConnectionStatus)values.GetValue(rand.Next(values.Length));
            user.Status = randomTexts[rand.Next(randomTexts.Length)];
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
        public Task<SavedCredential> StoreCredential()
        {
            return Task.FromResult<SavedCredential>(null);
        }

        public Task<bool> SetPresenceStatus(UserConnectionStatus status) { return Task.FromResult(true); }
        public Task<bool> SetTextStatus(string status) { return Task.FromResult(true); }

        public Task<LoginResult> Authenticate(SavedCredential autoLoginCredentials)
        {
            return Task.FromResult(LoginResult.Success);
        }
    }
}