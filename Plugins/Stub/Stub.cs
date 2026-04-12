/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading;
using System.Threading.Tasks;
using MiddleMan;

namespace Stub
{
    public class Core : ICore, ICall
    {
        #region Variables

        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;
        public string Name
        {
            get { return "Stub plugin"; }
        }
        public string InternalName
        {
            get { return "stub"; }
        }
        public bool SupportsServers
        {
            get { return false; }
        }

        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[]
                {
                    new AuthTypeInfo(AuthenticationMethod.Token, "Fancy stub username?"),
                };
            }
        }

        public User MyInformation { get; private set; }

        public ObservableCollection<DirectMessage> ContactsList { get; private set; } =
            new ObservableCollection<DirectMessage>();

        public ObservableCollection<Conversation> RecentsList { get; private set; } =
            new ObservableCollection<Conversation>();

        public ObservableCollection<Server> ServerList { get; private set; } =
            new ObservableCollection<Server>();

        public ObservableCollection<User> TypingUsersList { get; private set; } =
            new ObservableCollection<User>();

        private SynchronizationContext _uiContext;
        private string MyUsername;

        #endregion

        // Also called on logout
        public void Dispose() { }

        public async Task<LoginResult> Authenticate(
            AuthenticationMethod authType,
            string username,
            string password = null
        )
        {
            MyUsername = username;
            MessageEvent.Invoke(
                this,
                new MessageRecievedEventArgs(
                    "13414",
                    new Message("20202", users[0], new DateTime(2025, 4, 30, 8, 14, 0), "Hello"),
                    false
                )
            );
            return LoginResult.Success;
        }
        public async Task<LoginResult> Authenticate(SavedCredential autoLoginCredentials)
        {
            MyUsername = autoLoginCredentials.User.Username;
            return LoginResult.Success;
        }
        public async Task<LoginResult> AuthenticateTwoFA(string code) => LoginResult.Success;
        public async Task<SavedCredential> StoreCredential()
        {
            // TODO: Fix logout return new SavedCredential(MyInformation, "", AuthenticationMethod.Token, InternalName);
            return null;
        }
        public async Task<string> GetQRCode() => String.Empty;

        public Task<bool> SendMessage(
            string identifier,
            string text,
            Attachment attachment,
            string parent_message_identifier
        )
        {
            if (text != null)
            {
                if (attachment != null)
                    OnWarning?.Invoke(
                        this,
                        new PluginMessageEventArgs("Message with text and attachment sent.")
                    );
                else
                    OnWarning?.Invoke(this, new PluginMessageEventArgs("Text-only message sent."));
            }
            else
                OnWarning?.Invoke(
                    this,
                    new PluginMessageEventArgs("Attachment-only message sent.")
                );
            if (parent_message_identifier != null)
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Message references a parent."));
            TypingUsersList.Clear();
            TypingUsersList.Add(new User("Nova", "20202", "20202"));
            TypingUsersList.Add(new User("omega", "20203", "20203"));
            TypingUsersList.Add(new User("patricktbp", "20204", "20204"));
            TypingUsersList.Add(new User("WGP", "20200", "20200"));
            TypingUsersList.Add(new User("HUBAXE", "20205", "20205"));
            return Task.FromResult(true);
        }

        public async Task<ConversationItem[]> FetchMessages(
            Conversation conversation,
            Fetch fetch_type,
            int message_count,
            string identifier
        )
        { // THIS IS STUB CODE. THIS IS NOT A REPLICATION OF HOW THE INTERFACE IS SUPPOSED TO WORK.
            TypingUsersList.Clear();
            List<ConversationItem> messageList = new List<ConversationItem>();

            #region Dummy messages

            messageList.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 10, 0),
                    "Hey, I’ve been playing Genshin Impact on the Steam Deck, it works fine."
                )
            );
            messageList.Add(
                new Message(
                    "20203",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 10, 10),
                    "Oh nice, I’ve heard good things about it."
                )
            );
            messageList.Add(
                new Message(
                    "20204",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 10, 20),
                    "Yeah, it’s a really fun game."
                )
            );
            messageList.Add(
                new Message(
                    "20205",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 10, 30),
                    "Cool, I might try it out sometime."
                )
            );
            messageList.Add(
                new Message(
                    "20206",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 10, 40),
                    "It’s pretty enjoyable even without spending money."
                )
            );
            messageList.Add(
                new Message(
                    "20207",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 10, 50),
                    "That’s good to know."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 11, 0),
                    "I just wanted to share it’s a solid game."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 11, 10),
                    "Thanks for the info!"
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 11, 20),
                    "Gameplay-wise it’s really engaging and well-designed."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("patricktbp", "patricktbp", "patricktbp"),
                    new DateTime(2025, 4, 30, 8, 12, 40),
                    "Sounds interesting, I’ll check it out."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("patricktbp", "patricktbp", "patricktbp"),
                    new DateTime(2025, 4, 30, 8, 13, 30),
                    "@Amongus do you want to discuss this more in DMs?"
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 14, 0),
                    "Just sharing my experience, I think most people would enjoy it."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 15, 0),
                    "I think it could be fun to collaborate on the project with this in mind."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 15, 20),
                    "Yeah, that makes sense. Thanks for sharing."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("patricktbp", "patricktbp", "patricktbp"),
                    new DateTime(2025, 4, 30, 8, 15, 30),
                    "Great, let’s move forward."
                )
            );
            messageList.Add(
                new Message(
                    "20202",
                    new User("Amongus", "Amongus", "Amongus"),
                    new DateTime(2025, 4, 30, 8, 15, 40),
                    "Got it, thanks everyone. Also, Genshin impact fuckin sucks ass lol"
                )
            );

            #endregion

            return messageList.ToArray();
        }

        public async Task<bool> PopulateServerList()
        {
            string id = "2132";
            ServerList.Add(
                new Server(
                    "Epic gamer soyciety",
                    id,
                    users,
                    new ServerChannel[]
                    {
                        new ServerChannel("channel1", "2132/1", id, 0, ChannelType.Standard),
                        new ServerChannel("rtead only", "2132/2", id, 0, ChannelType.ReadOnly),
                    }
                )
            );
            return true;
        }

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;
            MyInformation = new User(
                MyUsername,
                "thegamingkart",
                "00001",
                "Hello test",
                UserConnectionStatus.Online
            );
            return true;
        }

        public async Task<bool> PopulateContactsList()
        {
            ContactsList.Clear();
            ContactsList.Add(
                new DirectMessage(
                    new User(
                        "Skymu user 1",
                        "u1",
                        "u1",
                        "hi skmuuymu",
                        UserConnectionStatus.Online
                    ),
                    10,
                    "32"
                )
            );
            ContactsList.Add(
                new DirectMessage(
                    new User("Skymu user 2", "u2", "u2", "HELLO", UserConnectionStatus.Away),
                    0,
                    "32"
                )
            );
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            RecentsList.Clear();

            int dayOffset = 0;
            foreach (var user in users)
            {
                DateTime messageTime;
                if (dayOffset <= 2)
                {
                    messageTime = DateTime.Now.AddMinutes(-rand.Next(1, 360));
                }
                else if (dayOffset == 3)
                {
                    messageTime = DateTime.Now.AddDays(-1).AddHours(-rand.Next(0, 12));
                }
                else
                {
                    messageTime = DateTime
                        .Now.AddDays(-(dayOffset - 2))
                        .AddHours(-rand.Next(0, 12));
                }
                RecentsList.Add(
                    new DirectMessage(
                        user,
                        rand.Next(0, 5),
                        rand.Next(100, 5000).ToString(),
                        messageTime
                    )
                );
                dayOffset++;
            }

            RecentsList.Add(
                new Group(
                    "Giga based coalition",
                    "067",
                    users.Length,
                    users,
                    null,
                    DateTime.Now.AddHours(-1)
                )
            );

            if (presenceTimer == null)
                presenceTimer = new Timer(UpdatePresence, null, 0, 1);

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
                    new ClickableConfiguration(ClickableItemType.ServerChannel, "<#", ">"),
                };
            }
        }

        public async Task<bool> SetTextStatus(string status) => true;
        // false = the status will not be set
        public async Task<bool> SetConnectionStatus(UserConnectionStatus status) => true;

        #region Calls (remove this entire region and remove `, ICall` to disable

        // Call will be picked up as soon as something is returned
        public async Task<ActiveCall> StartCall(string convo_id, bool is_video_call, bool start_muted)
        {
            TaskCompletionSource<bool> waiter = new TaskCompletionSource<bool>();
            Thread thread = new Thread(_ =>
            {
                Thread.Sleep(5000);
                waiter.SetResult(true);
            });
            thread.Start();

            _ = await waiter.Task;

            return new ActiveCall("STUBCALL", convo_id, is_video_call, new User[0]);
        }

        public async Task<bool> EndCall(ActiveCall call) => true;
        public async Task<bool> AnswerCall(string convo_id) => false;
        public async Task<bool> DeclineCall(string convo_id) => false;
        public async Task<bool> SetMuted(ActiveCall call, bool muted) => false;
        public async Task<bool> SetVideoEnabled(ActiveCall call, bool enabled) => false;
        public event EventHandler<CallEventArgs> OnIncomingCall;
        public event EventHandler<CallEventArgs> OnCallStateChanged;
        public bool SupportsVideoCalls => false;

        #endregion

        #region Stub specific stuff

        User[] users = new User[]
        {
            new User("Mario", "mario", "012", "It's-a me!", UserConnectionStatus.Online),
            new User("Luigi", "luigi", "013", "NO", UserConnectionStatus.DoNotDisturb),
            new User("Peach", "peach", "014", "In the castle", UserConnectionStatus.Away),
            new User(
                "Bowser",
                "bowser",
                "015",
                "Planning something...",
                UserConnectionStatus.Online
            ),
            new User("Yoshi", "yoshi", "016", "Yoshi!", UserConnectionStatus.Online),
            new User("Toad", "toad", "017", "Welcome!", UserConnectionStatus.Online),
            new User("Wario", "wario", "018", "Hehehe", UserConnectionStatus.DoNotDisturb),
            new User("Waluigi", "waluigi", "019", "Wah!", UserConnectionStatus.Invisible),
            new User("Daisy", "daisy", "020", "Hi!", UserConnectionStatus.Online),
            new User(
                "Rosalina",
                "rosalina",
                "021",
                "Watching the stars",
                UserConnectionStatus.Away
            ),
            new User("Donkey Kong", "dk", "022", "Bananas!", UserConnectionStatus.Online),
            new User("Koopa", "koopa", "023", "Patrolling", UserConnectionStatus.Offline),
        };

        private Timer presenceTimer;
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
            "On my way to the castle",
        };

        private void UpdatePresence(object state)
        {
            foreach (var user in users)
                RandomizeUser(user);
        }

        private void RandomizeUser(User user)
        {
            Array values = Enum.GetValues(typeof(UserConnectionStatus));
            var newStatus = (UserConnectionStatus)values.GetValue(rand.Next(values.Length));
            var newText = randomTexts[rand.Next(randomTexts.Length)];

            _uiContext?.Post(
                _ =>
                {
                    user.ConnectionStatus = newStatus;
                    user.Status = newText;
                },
                null
            );
        }

        #endregion
    }
}
