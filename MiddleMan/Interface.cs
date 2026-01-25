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

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using System.Xml.Linq;

namespace MiddleMan
{
    public enum AuthenticationMethod
    {
        Standard,
        Passwordless,
        OAuth
    }

    public enum LoginResult
    {
        Success,
        OptStepRequired,
        Failure
    }

    public static class UserConnectionStatus
    {
        public const int Invisible = 19;
        public const int DoNotDisturb = 5;
        public const int Online = 2;
        public const int Away = 3;
        public const int Offline = 19;
        public const int Unknown = 0;
    }

    public class SidebarData
    {   
        public string Username { get; set; }
        public string SkypeGlobalUserCountText { get; set; }
        public string SkypeCreditText { get; set; }
        public int ConnectionStatus { get; set; }
        public ObservableCollection<ContactData> ContactList { get; set; }
        public SidebarData(string username, string skypeGlobalUserCountText, string skypeCreditText, int connectionStatus, ObservableCollection<ContactData> contactList)
        {
            Username = username;
            SkypeGlobalUserCountText = skypeGlobalUserCountText;
            SkypeCreditText = skypeCreditText;
            ContactList = contactList;
            ConnectionStatus = connectionStatus;
        }
    }

    public class ContactData
    {
        public string Username { get; set; }
        public string Status { get; set; }
        public int ConnectionStatus { get; set; }
        public BitmapImage ProfilePicture { get; set; }
        public ContactData(string username, string status, int connectionStatus, BitmapImage profilePicture)
        {
            Username = username;
            Status = status;
            ConnectionStatus = connectionStatus;
            ProfilePicture = profilePicture;
        }
    }

    public enum DialogType
    {
        Error,
        Warning
    }

    public class PluginMessageEventArgs : EventArgs
    {
        public string Message { get; }
        public PluginMessageEventArgs(string message)
        {
            Message = message;
        }       
    }

    public interface ICore // For methods/variables that ALL plugins have to contain, e.g. plugin details, authentication
    {
        event EventHandler<PluginMessageEventArgs> OnError;
        event EventHandler<PluginMessageEventArgs> OnWarning;
        string Name { get; } // Name of the protocol. (e.g. Discord)
        string InternalName {  get; } // Internal name of the plugin (e.g. skymu-discord-plugin)
        string TextUsername { get; } // The text to display above the Username field (e.g. "Username", "Email", "Phone number")
        AuthenticationMethod AuthenticationType { get; } // OAuth, Passwordless, or Standard (Standard is most commonly used)
        Task<LoginResult> LoginMainStep(string username, string password,
            bool tryLoginWithSavedCredentials); // Step 1 of the login system, basically when you click 'Sign in' on the Login window.
        Task<LoginResult> LoginOptStep(string code); // Step 2 of the login system, this is used for Multi-Factor Authentication.
        Task<bool> SendMessage(string user, string text); // Sends a message, returns true if it was successful.
        Task<SidebarData> FetchSidebarData(); // Fetches sidebar data (contacts list, username, text placeholders, etc.)
        Task<LoginResult> TryAutoLogin(); // Tries to log in with saved tokens/credentials
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }

    public static class MMUtils
    {
        private static string SkymuToken;

        public static BitmapImage LoadBitmap(string path)
        {
            using (var fs = File.OpenRead(path))
            {
                BitmapImage bmp = new BitmapImage();
                bmp.BeginInit();
                bmp.CacheOption = BitmapCacheOption.OnLoad;
                bmp.StreamSource = fs;
                bmp.EndInit();
                bmp.Freeze();
                return bmp;
            }
        }

        public static async Task GenerateUIDOnSkymuAPI()
        {
            string skymuGenerateUri = "https://skymu.kier.ovh/generate";

            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage generateResponse = await client.GetAsync(skymuGenerateUri);
                string genResBody = await generateResponse.Content.ReadAsStringAsync();
                JObject parsedGenJson = JObject.Parse(genResBody);
                SkymuToken = parsedGenJson["token"].ToString();
            }
        }

        public static async Task SetStatusOnSkymuAPI(bool onlineState)
        {
            string skymuAPIUri = "https://skymu.kier.ovh";
            string endpoint = onlineState ? "/online" : "/offline";

            if (SkymuToken != null)
            {
                using (HttpClient client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("X-Skymu-Auth", SkymuToken);
                    HttpResponseMessage response = await client.PostAsync($"{skymuAPIUri}{endpoint}", new StringContent(string.Empty));
                    string resBody = await response.Content.ReadAsStringAsync();
                    Debug.WriteLine($"Status set response ({endpoint}): {resBody}");
                }
            }
        }

        public static async Task StatusPingOnSkymuAPI(bool onlineState)
        {
            string skymuPingUri = "https://skymu.kier.ovh/ping";

            if (SkymuToken != null)
            {
                using (HttpClient client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("X-Skymu-Auth", SkymuToken);
                    HttpResponseMessage response = await client.PostAsync(skymuPingUri, new StringContent(string.Empty));
                    string resBody = await response.Content.ReadAsStringAsync();
                    Debug.WriteLine($"Ping response ({skymuPingUri}): {resBody}");
                }
            }
        }

        public static async Task<int> GrabUserCountOnSkymuAPI()
        {
            string skymuCountUri = "https://skymu.kier.ovh/usr_count";

            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync(skymuCountUri);
                string resBody = await response.Content.ReadAsStringAsync();
                JObject parsedJson = JObject.Parse(resBody);
                int onlineCount = parsedJson["online_count"].ToObject<int>();
                return onlineCount;
            }
        }
    }
}