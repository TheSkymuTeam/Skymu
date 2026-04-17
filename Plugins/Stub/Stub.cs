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

using MiddleMan;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading;
using System.Threading.Tasks;

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

            #region Dummy messages (Imported)

            messageList.Add(
                new Message(
                    "20208",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 0),
                    "Alright lads, lasses and whatever else is over there. I have a very important announcement to make. Supermium is a super stinky no no browser."
                )
            );
            messageList.Add(
                new Message(
                    "20209",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 5),
                    "Closed source wrappers? Booooo thumbs down"
                )
            );
            messageList.Add(
                new Message(
                    "20210",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 10),
                    "Who knows what the lads at the LSC are hiding, perhaps their shenanigans are worse than Lord Mandelson's were, for a so called open source browser."
                )
            );
            messageList.Add(
                new Message(
                    "20211",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 15),
                    "Why not come to Eclipse and get any other browser like"
                )
            );
            messageList.Add(
                new Message(
                    "20212",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 20),
                    "e3kskoy7wqk"
                )
            );
            messageList.Add(
                new Message(
                    "20213",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 25),
                    "or the Redfox browser"
                )
            );
            messageList.Add(
                new Message(
                    "20214",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 30),
                    "Nigel Farage out"
                )
            );
            messageList.Add(
                new Message(
                    "20215",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 35),
                    "LOL"
                )
            );
            messageList.Add(
                new Message(
                    "20216",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 19, 40),
                    "stinky stinky no no or stinky no no"
                )
            );
            messageList.Add(
                new Message(
                    "20217",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 19, 45),
                    "super stinky no no"
                )
            );
            messageList.Add(
                new Message(
                    "20218",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 19, 50),
                    "okay I'll add that can I pin this lmao @Xi Jinping"
                )
            );
            messageList.Add(
                new Message(
                    "20219",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 20, 0),
                    "as the leader of Reform looking out for the less technically inclined of the British public, might want to remove this line"
                )
            );
            messageList.Add(
                new Message(
                    "20220",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 20, 5),
                    "True"
                )
            );
            messageList.Add(
                new Message(
                    "20221",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 20, 10),
                    "since its redundant"
                )
            );
            messageList.Add(
                new Message(
                    "20222",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 20, 15),
                    "Hmm if you want to eventually make it real, maybe no pin"
                )
            );
            messageList.Add(
                new Message(
                    "20223",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 20, 20),
                    "Alright what about now"
                )
            );
            messageList.Add(
                new Message(
                    "20224",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 20, 25),
                    "If we mention you doing nothing wrong, lets not mention Eclipse. The tradeoff would be funnier."
                )
            );
            messageList.Add(
                new Message(
                    "20225",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 20, 30),
                    "This could be simplified, maybe just remove everything but the last sentence."
                )
            );
            messageList.Add(
                new Message(
                    "20226",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 20, 35),
                    "raytek could have made this too if they had humour"
                )
            );
            messageList.Add(
                new Message(
                    "20227",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 20, 40),
                    "yeah"
                )
            );
            messageList.Add(
                new Message(
                    "20228",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 20, 45),
                    "What about now"
                )
            );
            messageList.Add(
                new Message(
                    "20229",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 20, 50),
                    "YEA XD"
                )
            );
            messageList.Add(
                new Message(
                    "20230",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 21, 0),
                    "I'll subtly remove the eclipse line for the extra troll"
                )
            );
            messageList.Add(
                new Message(
                    "20231",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 21, 5),
                    "do add Compa did nothing wrong near the end somewhere"
                )
            );
            messageList.Add(
                new Message(
                    "20232",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 21, 10),
                    "Then it'd be obvious it's eclipse"
                )
            );
            messageList.Add(
                new Message(
                    "20233",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 21, 15),
                    "ah"
                )
            );
            messageList.Add(
                new Message(
                    "20234",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 21, 20),
                    "It will be obvious, but that's also why to not mention Eclipse"
                )
            );
            messageList.Add(
                new Message(
                    "20235",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 21, 25),
                    "tbf do they even know im here XD"
                )
            );
            messageList.Add(
                new Message(
                    "20236",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 21, 30),
                    "It will throw a lot of people off"
                )
            );
            messageList.Add(
                new Message(
                    "20237",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 21, 35),
                    "they dont need to know who if you mention me they'll start thinking i done it"
                )
            );
            messageList.Add(
                new Message(
                    "20238",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 21, 40),
                    "This is why I say mention e3k but not eclipse"
                )
            );
            messageList.Add(
                new Message(
                    "20239",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 21, 45),
                    "why are we talking about this here lol"
                )
            );
            messageList.Add(
                new Message(
                    "20240",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 21, 50),
                    "They probably suspect, maybe even have a spy here"
                )
            );
            messageList.Add(
                new Message(
                    "20241",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 21, 55),
                    "SHUT UP"
                )
            );
            messageList.Add(
                new Message(
                    "20242",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 22, 0),
                    "Who gets the Nigel Farage cameo first"
                )
            );
            messageList.Add(
                new Message(
                    "20243",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 22, 5),
                    "GO TO SISCAT NOW LMAO AND WIPE THE MSGS BEFORE THEY SEE"
                )
            );
            messageList.Add(
                new Message(
                    "20244",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 22, 10),
                    "probably lsc or a splinter group"
                )
            );
            messageList.Add(
                new Message(
                    "20245",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 22, 15),
                    "SHUSH"
                )
            );
            messageList.Add(
                new Message(
                    "20246",
                    new User("XiJinping", "XiJinping", "XiJinping"),
                    new DateTime(2025, 4, 30, 16, 22, 20),
                    "alright I'll delete and log"
                )
            );
            messageList.Add(
                new Message(
                    "20247",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 22, 25),
                    "lmfao"
                )
            );
            messageList.Add(
                new Message(
                    "20248",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 22, 30),
                    "Alright"
                )
            );
            messageList.Add(
                new Message(
                    "20249",
                    new User("IF", "IF", "IF"),
                    new DateTime(2025, 4, 30, 16, 22, 35),
                    "my server works for this lol"
                )
            );
            messageList.Add(
                new Message(
                    "20250",
                    new User("wuggy", "wuggy", "wuggy"),
                    new DateTime(2025, 4, 30, 16, 22, 40),
                    "I kept the message in clipboard I'll paste it in siscat"
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

        public async Task<bool> PopulateUserInformation()
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

        public int TypingTimeout => 5000;
        public async Task<bool> SetTyping(string idenfitier, bool typing) => false;

        #region Calls (remove this entire region and remove `, ICall` to disable

        // Call will be picked up as soon as something is returned
        public async Task<ActiveCall> StartCall(
            string convo_id,
            bool is_video_call,
            bool start_muted
        )
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

        public async Task<ActiveCall> AnswerCall(string convo_id)
        {
            return await StartCall(convo_id, false, true);
        }

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
