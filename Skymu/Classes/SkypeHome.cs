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

using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;
using System.Security;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Controls;
using Microsoft.Win32;
using MiddleMan;

namespace Skymu
{
    class SkypeHome // Who knows why Skype decided to make a critical UI component a webpage? I don't, either...
    {
        private static WebBrowser _browser;
        private static User _user;
        private static DirectMessage[] _contacts;

        public static void Generate(WebBrowser browser, User user, DirectMessage[] contacts)
        {
            _browser = browser;
            _user = user;
            _contacts = contacts;
            _browser.ObjectForScripting = new SkypeExternalObject(user, contacts);
            _browser.LoadCompleted += OnLoadCompleted;
            _browser.Navigate(new Uri("https://skymu.app/home")); 
        }

        private static void InvokeEval(string script)
        {
            try
            {
                _browser.InvokeScript("eval", new object[] { script });
            }
            catch (COMException)
            {
                dynamic doc = _browser.Document;
                dynamic el = doc.createElement("script");
                el.type = "text/javascript";
                el.text = script;
                doc.body.appendChild(el);
            }
        }

        private static void OnLoadCompleted(
            object sender,
            System.Windows.Navigation.NavigationEventArgs e
        )
        {
            (_browser.ObjectForScripting as SkypeExternalObject)
                ?.GetAPI()
                ?.FireShowingChanged(true);
            (_browser.ObjectForScripting as SkypeExternalObject)?.GetAPI()?.FireLiveChanged(true);
            InjectAvatar(_user.Username, _user.ProfilePicture);

            if (_contacts != null)
            {
                var contacts = _contacts;
                _browser.Dispatcher.Invoke(() =>
                {
                    foreach (var dm in contacts)
                        InjectAvatar(dm.Partner.Username, dm.Partner.ProfilePicture);
                });
            }

            // This makes the Skype Home page stretch horizontally like what I've seen in screenshots of the application, however for some reason it
            // doesn't provide a COM function to do this and I highly doubt Skype did this injection. In addition, it seems to have been a deliberate
            // fixed thing in the CSS. Maybe another page was loaded alongside it? Maybe different versions of Skype behaved
            // differently, or maybe the local Skype Home did this while the online one didn't? I really don't know...
            // Edit: commented out because I saw some more screenshots of Skype *not* stretching this page. The plot thickens...
            //_browser.InvokeScript("eval", new object[] { "var c=document.getElementById('container');c.style.width='100%';c.style.paddingRight='0px';" });
        }

        public static void FireMoodUpdate(string skypename, string moodText, byte[] profilePicture)
        {
            (_browser.ObjectForScripting as SkypeExternalObject)
                ?.GetAPI()
                ?.FireMoodUpdate(skypename, moodText);
            InjectAvatar(skypename, profilePicture);
        }

        private static void InjectAvatar(string username, byte[] picture)
        {
            // I'm not going to implement Skype's arcane httpfe:// protocol just for a single avatar image, so I'll simply inject it into the script.
            if (picture == null)
                return;
            string base64 = Convert.ToBase64String(picture);
            string src = $"data:image/jpeg;base64,{base64}";
            // The local user's avatar has class 'user{username}' (set by SH.MyselfPanel markup).
            // Contact avatars in SH.AvatarViewItem have no username class; their src is set to
            // httpfe://avatar.local/{username} so we match on that instead.
            InvokeEval($"(function(){{"
    + $"var imgs=document.getElementsByTagName('img');"
    + $"for(var i=0;i<imgs.length;i++){{"
    + $"var s=imgs[i].src||'',c=imgs[i].className||'';"
    + $"if(c.indexOf('user{username}')!==-1||s.indexOf('avatar.local/{username}')!==-1)"
    + $"imgs[i].src='{src}';"
    + $"}}"
    + $"}})();");
        }
    }

    [ComVisible(true)]
    public class SkypeExternalObject
    {
        private readonly User _user;
        private readonly DirectMessage[] _contacts;
        private SkypeAPI _api;

        public SkypeExternalObject(User user, DirectMessage[] contacts)
        {
            _user = user;
            _contacts = contacts;
        }

        public object getapi(int version)
        {
            _api = new SkypeAPI(_user, _contacts);
            return _api;
        }

        public SkypeAPI GetAPI() => _api;
    }

    [ComVisible(true)]
    public class SkypeAPI
    {
        public LocalUserObject LocalUser;

        private readonly AccountObject _account;
        private readonly ClientObject _client = new ClientObject();
        private readonly Dictionary<string, string> _storage = new Dictionary<string, string>();
        private readonly DirectMessage[] _contacts;

        private dynamic _avatarListener;
        private dynamic _showingListener;
        private dynamic _liveListener;
        private dynamic _languageListener;
        private dynamic _moodListener;
        private dynamic _alertListener;

        public SkypeAPI(User user, DirectMessage[] contacts)
        {
            _contacts = contacts;
            LocalUser = new LocalUserObject
            {
                handle = user.Username,
                MoodText = user.Status ?? "",
            };
            _account = new AccountObject { ContactsCount = contacts?.Length ?? 0 };
        }

        public object getAccount() => _account;

        public object getClient() => _client;

        public object getUser(string skypename) => new SkypeUserObject(skypename, _contacts);

        // Called by SH.API.getPopularContacts() as h.Users(3).
        // Returns a collection the JS iterates via .Count and indexer calls.
        // All contacts get equal popularity so display order matches the ConversationList order.
        // TODO: Make friends more popular
        public UsersCollection Users(int filter)
        {
            var items = new List<UserEntry>();
            if (_contacts != null)
            {
                foreach (var dm in _contacts)
                {
                    items.Add(new UserEntry { Handle = dm.Partner.Username, Popularity = 1 });
                }
            }
            return new UsersCollection(items);
        }

        public bool isBuddy(string skypename) => false;

        public string encodeContent(string s) => HttpUtility.HtmlEncode(s);

        public string escapeXML(string s) => SecurityElement.Escape(s) ?? s;

        public string fetchLocal(string key) => _storage.TryGetValue(key, out var v) ? v : "";

        public void storeLocal(string key, string value) => _storage[key] = value;

        public string libprop(int id) => "0";

        public AlertCollection RecentAlerts(int count, int offset) =>
            new AlertCollection(new List<AlertObject>());

        public void setChannelNotification(int channelId) { }

        public void setAvatarListener(object fn)
        {
            _avatarListener = fn;
        }

        public void setShowingListener(object fn)
        {
            _showingListener = fn;
        }

        public void setLiveListener(object fn)
        {
            _liveListener = fn;
        }

        public void setLanguageChangeListener(object fn)
        {
            _languageListener = fn;
        }

        public void setMoodListener(object fn)
        {
            _moodListener = fn;
        }

        public void setAlertListener(object fn)
        {
            _alertListener = fn;
        }

        public void FireMoodUpdate(string skypename, string moodText) =>
            _moodListener?.call(null, skypename, moodText);

        public void FireAvatarChange(string skypename) => _avatarListener?.call(null, skypename);

        public void FireShowingChanged(bool isShowing) => _showingListener?.call(null, isShowing);

        public void FireLiveChanged(bool isLive) => _liveListener?.call(null, isLive);
    }

    // Returned by SkypeAPI.Users().
    [ComVisible(true)]
    public class UsersCollection
    {
        private readonly List<UserEntry> _items;
        public int Count => _items.Count;

        public UsersCollection(List<UserEntry> items) => _items = items;

        [DispId(0)]
        public UserEntry Call(int index) => _items[index - 1];
    }

    [ComVisible(true)]
    public class UserEntry
    {
        public string Handle = "";
        public int Popularity = 0;
    }

    [ComVisible(true)]
    public class LocalUserObject
    {
        public string handle = "";
        public string MoodText = "";

        public bool hasCapability(int capId) => false;

        public string PhoneMobile = "";
    }

    [ComVisible(true)]
    public class AccountObject
    {
        public SubscriptionsObject Subscriptions = new SubscriptionsObject();
        public int Balance = 0;
        public string BalanceCurrency = "";
        public long RegistrationTimestamp = DateTimeOffset.UtcNow.ToUnixTimeSeconds() / 60;
        public int ContactsCount = 0;
        public PartnerCollection Partners = new PartnerCollection();
        public string IPCountry = "";
        public string PartnerChannelStatus = "";
        public int BalancePrecision = 0;
    }

    [ComVisible(true)]
    public class SubscriptionsObject
    {
        public int Count = 0;

        [DispId(0)]
        public object Call(int index) => null;
    }

    [ComVisible(true)]
    public class PartnerCollection
    {
        private readonly List<PartnerObject> _items = new List<PartnerObject>();
        public int Count => _items.Count;

        [DispId(0)]
        public PartnerObject Call(int index) => _items[index - 1];
    }

    [ComVisible(true)]
    public class AlertCollection
    {
        private readonly List<AlertObject> _items;
        public int Count => _items.Count;

        public AlertCollection(List<AlertObject> items) => _items = items;

        [DispId(0)]
        public AlertObject Call(int index) => _items[index - 1];
    }

    [ComVisible(true)]
    public class PartnerObject
    {
        public string getName() => "";

        public string getId() => "";

        public bool canOptout() => false;

        public bool getOptoutStatus() => false;

        public void setOptoutStatus(bool v) { }
    }

    [ComVisible(true)]
    public class AlertObject
    {
        public string PartnerNameDCURI = "";
        public bool IsUnseen = false;
        public string PartnerID = "";
        public string PartnerHeaderDCURI = "";
        public string MessageButtonCaption = "";
        public string MessageButtonURI = "";
        public string MessageHeaderTitle = "";
        public string MessageContent = "";
        public long Timestamp = 0;

        public bool getReadStatus() => !IsUnseen;

        public void setReadStatus(bool v) => IsUnseen = !v;

        public string getName() => PartnerNameDCURI;

        public string getPartnerId() => PartnerID;

        public string getAvatarURI() => PartnerHeaderDCURI;

        public void MarkSeen() => IsUnseen = false;

        public void Delete() { }
    }

    [ComVisible(true)]
    public class SkypeUserObject
    {
        private readonly string _skypename;
        private readonly DirectMessage[] _contacts;

        public SkypeUserObject(string skypename, DirectMessage[] contacts)
        {
            _skypename = skypename;
            _contacts = contacts;
        }

        public string FullName => ResolveDisplayName();
        public string DisplayName => ResolveDisplayName();

        public object getMoodMediaObject() => null;

        private string ResolveDisplayName()
        {
            if (_contacts != null)
            {
                foreach (var dm in _contacts)
                {
                    var p = dm.Partner;
                    if (p.Username == _skypename && !string.IsNullOrEmpty(p.DisplayName))
                        return p.DisplayName;
                }
            }
            return _skypename;
        }
    }

    [ComVisible(true)]
    public class ClientObject
    {
        public string Language = "en";
        public string Version = "";

        public string FormatDateShort(long unixSecs) =>
            DateTimeOffset.FromUnixTimeSeconds(unixSecs).LocalDateTime.ToShortDateString();

        public string FormatTimeShort(long unixSecs) =>
            DateTimeOffset.FromUnixTimeSeconds(unixSecs).LocalDateTime.ToShortTimeString();

        public void SendUDPStats(int type, int id) { }
    }
}
