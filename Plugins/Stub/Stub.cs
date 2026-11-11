/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

// Type "Call me!" without the quotes to get called by the active conversation

using NAudio.Wave;
using NLayer.NAudioSupport;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Bottles;
using Yggdrasil.Enumerations;
using System.Linq;

namespace Stub
{
    public class Core : ICore, ICall, IListManagement, IExtras
    {
        #region Variables

        public event EventHandler<DialogBottle> DialogTube;
        public event EventHandler<MessageBottle> MessageTube;
        public event EventHandler<ListBottle> ListTube;
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
            get { return true; }
        }

        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[]
                {
                    new AuthTypeInfo(AuthenticationMethod.Token, "Fancy a stub username?"),
                };
            }
        }

        public ObservableCollection<User> TypingUsersList { get; private set; } =
            new ObservableCollection<User>();

        private SynchronizationContext _uiContext;
        private Conversation _currentConversation;
        private User Me;

        #endregion

        // Also called on logout
        public void Dispose()
        {
            _out?.Stop();
            _out?.Dispose();
            _out = null;
        }

        public Task<LoginResult> Authenticate(
            AuthenticationMethod authType,
            string username,
            string password = null
        )
        {
            Me = new User(username, username, username);
            MessageTube.Invoke(
                this,
                new MessageRecievedBottle(
                    "13414",
                    new Message("20202", users[0], new DateTime(2025, 4, 30, 8, 14, 0), "Hello"),
                    false
                )
            );
            return Task.FromResult(LoginResult.Success);
        }

        public Task<LoginResult> Authenticate(SavedCredential autoLoginCredentials)
        {
            Me = autoLoginCredentials.User;
            return Task.FromResult(LoginResult.Success);
        }

        public Task<LoginResult> AuthenticateTwoFA(string code) { return Task.FromResult(LoginResult.Success); }

        public Task<SavedCredential> StoreCredential()
        {
            // TODO: Fix logout return new SavedCredential(MyInformation, string.Empty, AuthenticationMethod.Token, InternalName);
            return Task.FromResult<SavedCredential>(null);
        }

        public Task<string> GetQRCode()
        {
            return Task.FromResult(string.Empty);
        }

        public Task<bool> SendMessage(
            string identifier,
            string text,
            Attachment attachment,
            string parent_message_identifier,
            bool action
        )
        {
            // Invoke a call
            if (text == "Call me!")
            {
                User user;
                if (_currentConversation is DirectMessage dm)
                    user = dm.Partner;
                else if (_currentConversation is Group group)
                    user = group.Members[0];
                else
                    return Task.FromResult(false);
                IncomingCallTube?.Invoke(this, new CallBottle(new DirectMessage(user, 0, "TotallyRandomIncomingCall"), CallState.Ringing));
                return Task.FromResult(true);
            }
            if (text != null)
            {
                if (attachment != null)
                    DialogTube?.Invoke(
                        this,
                        new DialogBottle(DialogType.Warning, (action ? "Action message" : "Message") + " with text and attachment sent.")
                    );
                else
                    DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Text-only " + (action ? "action" : "") + " message sent."));
            }
            else
                DialogTube?.Invoke(
                    this,
                    new DialogBottle(DialogType.Warning, "Attachment-only message sent.")
                );
            if (parent_message_identifier != null)
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Message references a parent."));
            TypingUsersList.Clear();
            TypingUsersList.Add(new User("Nova", "20202", "20202"));
            TypingUsersList.Add(new User("omega", "20203", "20203"));
            TypingUsersList.Add(new User("patricktbp", "20204", "20204"));
            TypingUsersList.Add(new User("Xaero", "20200", "20200"));
            TypingUsersList.Add(new User("HUBAXE", "20205", "20205"));

            Task.Run(async () =>
            {
                await Task.Delay(3000);
                // Make the UI recognize that the message was sent, adding the timestamp and removing the Spinner (loading wheel)
                MessageTube?.Invoke(this, new MessageRecievedBottle(identifier,
                    action
                    ? new ActionMessage(identifier, Me, DateTimeOffset.UtcNow.DateTime, text)
                    : new Message(identifier, Me, DateTimeOffset.UtcNow.DateTime, text)
                    , false)
                );
            });

            return Task.FromResult(true);
        }

        public Task<bool> EditMessage(
            string conversationId,
            string messageId,
            string newText
        )
        {
            DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Message editing is not implemented."));
            return Task.FromResult(false);
        }

        public Task<bool> DeleteMessage(
            string conversationId,
            string messageId
        )
        {
            DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Message deletion is not implemented."));
            return Task.FromResult(false);
        }

        public Task<List<ConversationItem>> FetchMessages(
            Conversation conversation,
            Fetch fetch_type,
            int message_count,
            string identifier
        )
        { // THIS IS STUB CODE. THIS IS NOT A REPLICATION OF HOW THE INTERFACE IS SUPPOSED TO WORK.
            _currentConversation = conversation;
            TypingUsersList.Clear();
            List<ConversationItem> messages = new List<ConversationItem>();

            #region Dummy messages (Imported)

            messages.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 10, 0),
                    "Hey, I’ve been playing Genshin Impact on the Steam Deck, it works fine."
                )
            );
            messages.Add(
                new Message(
                    "20203",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 10, 10),
                    "Oh nice, I’ve heard good things about it."
                )
            );
            messages.Add(
                new Message(
                    "20204",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 10, 20),
                    "Yeah, it’s a really fun game."
                )
            );
            messages.Add(
                new Message(
                    "20205",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 10, 30),
                    "Cool, I might try it out sometime."
                )
            );
            messages.Add(
                new Message(
                    "20206",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 10, 40),
                    "It’s pretty enjoyable even without spending money."
                )
            );
            messages.Add(
                new Message(
                    "20207",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 10, 50),
                    "That’s good to know."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 11, 0),
                    "I just wanted to share it’s a solid game."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 11, 10),
                    "Thanks for the info!"
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 11, 20),
                    "Gameplay-wise it’s really engaging and well-designed."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("patricktbp", "patricktbp", "patricktbp"),
                    new DateTime(2025, 4, 30, 8, 12, 40),
                    "Sounds interesting, I’ll check it out."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("patricktbp", "patricktbp", "patricktbp"),
                    new DateTime(2025, 4, 30, 8, 13, 30),
                    "@Amongus do you want to discuss this more in DMs?"
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 14, 0),
                    "Just sharing my experience, I think most people would enjoy it."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("Nova", "Nova", "Nova"),
                    new DateTime(2025, 4, 30, 8, 15, 0),
                    "I think it could be fun to collaborate on the project with this in mind."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("omega", "omega", "omega"),
                    new DateTime(2025, 4, 30, 8, 15, 20),
                    "Yeah, that makes sense. Thanks for sharing."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("patricktbp", "patricktbp", "patricktbp"),
                    new DateTime(2025, 4, 30, 8, 15, 30),
                    "Great, let’s move forward."
                )
            );
            messages.Add(
                new Message(
                    "20202",
                    new User("Amongus", "Amongus", "Amongus"),
                    new DateTime(2025, 4, 30, 8, 15, 40),
                    "Got it, thanks everyone. Also, Genshin impact fuckin sucks ass lol"
                )
            );

            #endregion

            return Task.FromResult(messages);
        }

        public Task<List<Server>> FetchServers()
        {
            List<Server> servers = new List<Server>();
            string id = "2132";
            servers.Add(
                new Server(
                    "Epic gamer soyciety",
                    id,
                    null,
                    null,
                    new ServerChannel[]
                    {
                        new ServerChannel("channel1", "2132/1", id, 0, ChannelType.Standard),
                        new ServerChannel("read only", "2132/2", id, 0, ChannelType.ReadOnly),
                    }.ToList()
                )
            );
            return Task.FromResult(servers);
        }

        public Task<User> GetUserInfo()
        {
            _uiContext = SynchronizationContext.Current;
            Me.Status = "Need an Attorney? Better Call Saul! (505) 503-4455";
            Me.ConnectionStatus = PresenceStatus.Online;
            return Task.FromResult(Me);
        }

        public Task<List<DirectMessage>> FetchContacts()
        {
            List<DirectMessage> contacts = new List<DirectMessage>
            {
                new DirectMessage(
                    new User(
                        "Skymu user 1",
                        "u1",
                        "u1",
                        "hi skmuuymu",
                        PresenceStatus.Online
                    ),
                    10,
                    "u1"
                ),
                new DirectMessage(
                    new User("Skymu user 2", "u2", "u2", "HELLO", PresenceStatus.Away),
                    0,
                    "u2"
                )
            };
            return Task.FromResult(contacts);
        }

        public Task<List<Conversation>> FetchConversations()
        {
            List<Conversation> conversations = new List<Conversation>();

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
                conversations.Add(
                    new DirectMessage(
                        user,
                        rand.Next(0, 5),
                        rand.Next(100, 5000).ToString(),
                        messageTime
                    )
                );
                dayOffset++;
            }

            conversations.Add(
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
                presenceTimer = new Timer(UpdatePresence, null, 0, 500);

            return Task.FromResult(conversations);
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

        public Task<bool> SetMood(string status)
        {
            return Task.FromResult(true);
        }

        public Task<bool> SetConnectionStatus(PresenceStatus status)
        {
            Me.ConnectionStatus = status;
            return Task.FromResult(true);
        }

        public int TypingTimeout => 5000;
        public int TypingRepeat => 9000;
        public Task<bool> SetTyping(string idenfitier, bool typing)
        {
            return Task.FromResult(false);
        }

        #region Calls
        // remove this entire region and remove ICall among some others to disable

        private WaveOutEvent _out;

        private WaveOutEvent WaveDispenser()
        {
            return new WaveOutEvent();
        }

        private TaskCompletionSource<bool> _waiter;

        // Call will be picked up as soon as something is returned
        public async Task<ActiveCall> StartCall(
            string convo_id,
            bool is_video_call,
            bool start_muted
        )
        {
            _out?.Dispose();

            // Audio stuff (decent amount of this will be moved later)
            // Modified by omega lol
            string dir = Path.GetDirectoryName(
                Assembly.GetExecutingAssembly().Location);

            string path = Path.Combine(dir, "WebiWabo.mp3");

            FileStream fs = File.OpenRead(path);

            ManagedMpegStream reader =
                new ManagedMpegStream(fs);

            _out = WaveDispenser();

            var silence = new SilenceProvider(
                new WaveFormat(48000, 16, 2));

            _out.Init(silence);
            _out.Play();

            _waiter =
                new TaskCompletionSource<bool>();

            Thread thread = new Thread(_ =>
            {
                Thread.Sleep(3200);
                _waiter?.TrySetResult(true);
            });

            thread.Start();

            bool cont = await _waiter.Task;

            if (!cont) return null;

            _out.Stop();
            _out.Dispose();

            _out = WaveDispenser();

            _out.Init(reader);
            _out.Play();

            return new ActiveCall(
                "STUBCALL",
                convo_id,
                is_video_call,
                new User[0]
            );
        }

        public Task<bool> EndCall(ActiveCall call)
        {
            _waiter?.TrySetResult(false);
            _out?.Stop();
            _out?.Dispose();
            _out = null;
            return Task.FromResult(true);
        }

        public async Task<ActiveCall> AnswerCall(string convo_id) => await StartCall(convo_id, false, true);

        public Task<bool> DeclineCall(string convo_id) => Task.FromResult(false);

        public Task<bool> SetMuted(ActiveCall call, bool muted) => Task.FromResult(false);

        public Task<bool> SetVideoEnabled(ActiveCall call, bool enabled) => Task.FromResult(false);

        public event EventHandler<CallBottle> IncomingCallTube;
        public event EventHandler<CallBottle> CallStateChangedTube;

        public bool SupportsVideoCalls => false;

        #endregion

        #region Adding contacts
        // remove this entire region and remove IListManagement to disable
        // Enter number for the search query for group with that amount of members

        public Task<Metadata[]> FindNewContact(string query)
        {
            if (int.TryParse(query, out var memc))
            {
                var members = new User[memc];
                for (int i = 0; i < memc; i++)
                {
                    members[i] = users[i % users.Length];
                }
                return Task.FromResult(new Metadata[2] {
                    new Group("Mega Based Coalition", "mbc", 0, members),
                    new User(query, query, query)
                });
            }
            return Task.FromResult(new Metadata[1]
            {
                new User(query, query, query)
            });
        }

        public Task<bool> AddContact(Metadata contact, string message)
        {
            if (contact is User user)
                ListTube?.Invoke(this, new ListItemUpdatedBottle(ListType.Contacts, new DirectMessage(user, 0, user.Identifier)));
            else if (contact is Group group)
                ListTube?.Invoke(this, new ListItemUpdatedBottle(ListType.Conversations, group));
            else
                return Task.FromResult(false);
            return Task.FromResult(true);

        }

        #endregion

        #region Stub specific stuff

        private readonly User[] users = new User[]
        {
            new User("Mario", "mario", "012", "It's-a me!", PresenceStatus.Online),
            new User("Luigi", "luigi", "013", "NO", PresenceStatus.DoNotDisturb),
            new User("Peach", "peach", "014", "In the castle", PresenceStatus.Away),
            new User(
                "Bowser",
                "bowser",
                "015",
                "Planning something...",
                PresenceStatus.Online
            ),
            new User("Yoshi", "yoshi", "016", "Yoshi!", PresenceStatus.Online),
            new User("Toad", "toad", "017", "Welcome!", PresenceStatus.Online),
            new User("Wario", "wario", "018", "Hehehe", PresenceStatus.DoNotDisturb),
            new User("Waluigi", "waluigi", "019", "Wah!", PresenceStatus.Invisible),
            new User("Daisy", "daisy", "020", "Hi!", PresenceStatus.Online),
            new User(
                "Rosalina",
                "rosalina",
                "021",
                "Watching the stars",
                PresenceStatus.Away
            ),
            new User("Donkey Kong", "dk", "022", "Bananas!", PresenceStatus.Online),
            new User("Koopa", "koopa", "023", "Patrolling", PresenceStatus.Offline),
        };

        private Timer presenceTimer;
        private readonly Random rand = new Random();

        private readonly string[] randomTexts = new string[]
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
            Array values = Enum.GetValues(typeof(PresenceStatus));
            var newStatus = (PresenceStatus)values.GetValue(rand.Next(values.Length));
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

        #region Extras
        // Same as above. Remvoe IExtras and this region to disable.

        public ObservableCollection<ExtraConfiguration> ExtraConfigurations => new ObservableCollection<ExtraConfiguration>()
        {
            new ExtraConfiguration(
                "Hello world",
                () => DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Hello world!")),
                "Show Hello World!")
        };

        #endregion
    }
}
