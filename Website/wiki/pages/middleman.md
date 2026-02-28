# Skymu Plugin Development Guide 

We want it to be easy, convenient, and enjoyable to create Skymu plugins, so we've created this documentation for new and experienced developers alike. First, we'll start off with the three main Skymu interfaces and what they do.

## Interfaces

An *interface* is, in simple terms, a set of common rules that both the *frontend* (user interface) and the plugin have to follow. Without an interface, Skymu wouldn't know what functions to call in the plugin, and the plugin developer wouldn't know how to write their *functions* for Skymu to call. Interfaces make this simple; the rules are strict and unambiguous, and the plugin only compiles once the format of your plugin class's *variables* and *methods* matches the format of the interface's variables and methods. Skymu has three main interfaces, *ICore* (for all plugins), *IMessenger* (for instant messaging plugins), and *IBoard* (for message-board plugins). Now, on to where interfaces are stored.

## MiddleMan

Skymu's interfaces are stored in a DLL called MiddleMan. If you find this documentation lacking, or see that it is outdated, you may download the Skymu source and refer to the MiddleMan project for a detailed overview on the most current version of the interfaces. Since MiddleMan houses all the interfaces necessary for creating a plugin, your plugin must have MiddleMan as a dependency. However, you do not need to ship your plugin with MiddleMan at build time, as Skymu will use its own copy of MiddleMan to instantiate your plugin. Now, on to the basics of creating a plugin.
    
## Classes
    
Each interface you want to use will need to be implemented as a class in your plugin. As explained previously, you can't add extra methods or variables to an interface-implementing class, and you can't remove any either, because your plugin will fail to compile (SAD!) - which means that if the protocol you're building the plugin for does not implement a function specified in one of the interfaces you want, you will need to implement it as a stub. Now, on to a simple plugin that implements an example interface, so you understand how to format your own plugin code. Remember, the interface specified in the following example does not actually exist.

## Getting Started

### Requirements

Before you can start developing a Skymu plugin, you'll need a few things. You'll need Visual Studio 2019 or later (Community edition works fine), .NET Framework 4.7.2 or later, a copy of MiddleMan.dll (from the Skymu source or binary distribution), and basic knowledge of C# and asynchronous programming.

### Project setup

Start by creating a new Class Library project in Visual Studio. Target .NET Framework 4.7.2 or later. Add a reference to MiddleMan.dll in your project. You can do this by right-clicking References in Solution Explorer, selecting Add Reference, and browsing to the MiddleMan.dll file. Once you've got your project set up, create a new class that implements ICore. If your plugin is for a messaging service, you'll also implement IMessenger. For message-board services, implement IBoard instead.

### Implementation order

Start with the basics and implement the Name, InternalName, TextUsername, and AuthenticationType properties first. These are simple and get you familiar with the interface. Next, get authentication working by implementing LoginMainStep first. If your protocol supports 2FA, implement LoginOptStep. If it supports auto-login with tokens, implement TryAutoLogin and SaveAutoLoginCredential. Wire up the OnError and OnWarning events early on, as these are your lifeline for debugging and user feedback.

Once authentication is sorted out, implement SendMessage, which is the core functionality of any messaging plugin. After that, implement PopulateSidebarInformation, PopulateContactsList, and PopulateRecentsList. These methods fetch data and fill the ObservableCollections that the UI binds to. Then implement SetActiveConversation to load and display messages. Make sure to populate the ActiveConversation collection with MessageItem objects. If your protocol supports clickable mentions, channels, or roles, implement the ClickableConfigurations property. If it supports calls, add CallStartedItem and CallEndedItem to your conversations.

### Building and testing

Once you've implemented the interface, build your project. If it compiles without errors, your plugin is structurally sound. Copy the compiled DLL to Skymu's plugins folder (usually in the application directory). Launch Skymu, and your plugin should appear in the protocol selection list. For testing, start with authentication and make sure you can log in successfully. Once that works, test sending messages, loading contacts, and viewing conversations. Use the OnError event liberally during development to see what's going wrong.

### Common issues

Don't forget to initialize your ObservableCollections in your constructor, or you'll get null reference exceptions. Always return something, even if a method fails - return false or an appropriate enum value. Don't throw exceptions unless something truly catastrophic happens. Use async/await properly, as all the methods return Task. Make sure you're using async/await correctly and don't block on async calls. Handle null values gracefully, as profile pictures, reply data, and other fields can be null. Test with real data using actual accounts and real conversations, as edge cases will show up quickly.

## Plugin Capabilities and Limitations

### What your plugin can do

Your plugin has full access to the standard .NET Framework libraries and can make HTTP requests, connect to WebSockets, parse JSON and XML, handle file I/O, and work with databases. You can implement custom authentication flows, including OAuth, token-based authentication, and multi-factor authentication. The plugin can maintain persistent state between sessions by saving credentials or tokens through SaveAutoLoginCredential. You can create rich conversation experiences by using MessageItem, CallStartedItem, and CallEndedItem objects, and you can implement clickable mentions, channels, and roles through the ClickableConfiguration system.

Your plugin can update the UI in real-time by modifying the ObservableCollections (ContactsList, RecentsList, ActiveConversation). These collections support INotifyPropertyChanged, so any changes you make will automatically reflect in the Skymu interface. You can also trigger error and warning dialogs through the OnError and OnWarning event handlers, providing feedback to users when things go wrong.

### What your plugin cannot do

Your plugin cannot modify the Skymu UI directly beyond what the interfaces provide. You cannot add custom menu items, toolbars, or windows. The plugin runs in the same process as Skymu, so you should avoid blocking operations that could freeze the UI. Your plugin cannot directly access other plugins or their data. Each plugin operates in isolation.

You cannot override or extend the interface definitions. If a method signature changes in MiddleMan, you'll need to update your plugin accordingly. The plugin cannot persist data outside of what's provided through the interface methods. If you need to store configuration or cache data, you'll need to implement that yourself using standard file I/O or a database.

## Best practices

### Error handling

Always wrap API calls and network operations in try-catch blocks. Use the OnError event to inform users of problems, but don't overuse it for minor issues. Reserve OnError for situations that prevent core functionality from working. Use OnWarning for issues that don't prevent operation but may affect the user experience. When an error occurs, log detailed information internally for debugging, but present user-friendly messages through the event handlers.

Return appropriate values from methods even when errors occur. Don't throw exceptions unless something truly catastrophic happens. If SendMessage fails, return false and trigger OnError. If PopulateContactsList fails, return false but don't crash the application. Graceful degradation is better than complete failure.

### Asynchronous programming

All interface methods return Task, so you must implement them as async methods. Never block on async calls using .Result or .Wait(), as this can cause deadlocks. Use await throughout your code. If you need to call synchronous APIs from your async methods, use Task.Run to offload work to a background thread, but be careful with thread safety when accessing shared state.

When implementing real-time updates through WebSockets or polling, use async/await properly and implement cancellation tokens. Don't let background tasks run indefinitely without a way to stop them. Clean up resources properly in your Dispose implementation if you create one.

### Data management

Initialize all ObservableCollections in your constructor. Never leave them null. When updating collections, use the Dispatcher if you're calling from a background thread, as ObservableCollections must be modified on the UI thread. Clear collections before repopulating them to avoid memory leaks and stale data.

Cache profile pictures and other binary data intelligently. Don't repeatedly download the same profile picture. Consider implementing a local cache with expiration. When populating large contact lists, consider loading them incrementally rather than all at once to improve perceived performance.

### Authentication and security

Never store passwords in plain text. If you need to persist authentication state, use tokens or encrypted credentials. When implementing SaveAutoLoginCredential, return only the minimum information needed to restore the session. Don't include sensitive information that could be compromised if the credential storage is accessed.

Validate all input from the protocol API. Don't assume the server always returns well-formed data. Check for null values, empty strings, and malformed data structures. If the API returns unexpected data, fail gracefully rather than crashing.

### Performance considerations

Don't block the UI thread. All interface methods are async specifically to avoid this. If you need to do heavy processing, use Task.Run to offload it. Keep your implementations efficient. If SetActiveConversation needs to load hundreds of messages, consider loading them in batches or implementing pagination.

Avoid unnecessary network requests. If the user switches between conversations frequently, cache recent conversation data. Implement intelligent refresh logic rather than reloading everything every time. Use WebSockets or push notifications when available rather than polling.

### Code organization

Keep your plugin code organized and maintainable. Separate concerns by creating dedicated classes for API communication, data mapping, and state management. Don't put everything in the main plugin class. Use dependency injection or factory patterns to manage object creation and lifecycle.

Document your code, especially the parts that interact with the protocol API. If the API has quirks or undocumented behavior, add comments explaining your workarounds. Future you (or another developer) will appreciate it.
    
## Example plugin

    using System;
    using System.Collections.ObjectModel;
    using MiddleMan;
    using System.Threading.Tasks;
    
    namespace MyPlugin
    {
        public class MyProtocol : ICore
        {
            // Events
            public event EventHandler<PluginMessageEventArgs> OnError;
            public event EventHandler<PluginMessageEventArgs> OnWarning;
            
            // Properties
            public string Name { get { return "My Protocol"; } }
            public string InternalName { get { return "my-protocol-plugin"; } }
            public string TextUsername { get { return "Username"; } }
            public AuthenticationMethod[] AuthenticationType { get { return new[] { AuthenticationMethod.Password }; } }
            
            public SidebarData SidebarInformation { get; private set; }
            public ObservableCollection<ConversationItem> ActiveConversation { get; private set; }
            public ObservableCollection<ProfileData> ContactsList { get; private set; }
            public ObservableCollection<ProfileData> RecentsList { get; private set; }
            public ClickableConfiguration[] ClickableConfigurations { get; private set; }
            
            public MyProtocol()
            {
                ActiveConversation = new ObservableCollection<ConversationItem>();
                ContactsList = new ObservableCollection<ProfileData>();
                RecentsList = new ObservableCollection<ProfileData>();
                ClickableConfigurations = new ClickableConfiguration[] { };
            }
            
            public async Task<string[]> SaveAutoLoginCredential()
            {
                // Save and return credentials for auto-login (e.g. tokens)
                return new string[] { "token1", "token2" };
            }
            
            public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password, bool tryLoginWithSavedCredentials)
            {
                // Step 1 of login
                if (cannot log in)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Unable to log in"));
                    return LoginResult.Failure;
                }
                
                if (requires 2FA)
                {
                    return LoginResult.OptStepRequired;
                }
                
                return LoginResult.Success;
            }
            
            public async Task<LoginResult> LoginOptStep(string code)
            {
                // Step 2 of login (2FA)
                if (code is invalid)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Invalid code"));
                    return LoginResult.Failure;
                }
                
                return LoginResult.Success;
            }
            
            public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
            {
                // Try to log in with saved credentials
                if (credentials are invalid)
                {
                    return LoginResult.Failure;
                }
                
                return LoginResult.Success;
            }
            
            public async Task<bool> SendMessage(string identifier, string text)
            {
                // Send a message to the specified conversation
                try
                {
                    // Your message sending logic here
                    return true;
                }
                catch
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to send message"));
                    return false;
                }
            }
            
            public async Task<bool> PopulateSidebarInformation()
            {
                // Fetch and set sidebar data
                try
                {
                    SidebarInformation = new SidebarData("John Doe", "user123", "Credits: 100", UserConnectionStatus.Online);
                    return true;
                }
                catch
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to load sidebar information"));
                    return false;
                }
            }
            
            public async Task<bool> PopulateContactsList()
            {
                // Fetch and populate contacts
                try
                {
                    ContactsList.Clear();
                    ContactsList.Add(new ProfileData("Jane Smith", "user456", "Available", UserConnectionStatus.Online, null));
                    return true;
                }
                catch
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to load contacts"));
                    return false;
                }
            }
            
            public async Task<bool> PopulateRecentsList()
            {
                // Fetch and populate recents
                try
                {
                    RecentsList.Clear();
                    RecentsList.Add(new ProfileData("Bob Johnson", "user789", "Busy", UserConnectionStatus.DoNotDisturb, null));
                    return true;
                }
                catch
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to load recents"));
                    return false;
                }
            }
            
            public async Task<bool> SetActiveConversation(string identifier)
            {
                // Set active conversation and load messages
                try
                {
                    ActiveConversation.Clear();
                    ActiveConversation.Add(new MessageItem("msg1", "user456", "Jane Smith", "Hello!", DateTime.Now));
                    return true;
                }
                catch
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to load conversation"));
                    return false;
                }
            }
        }
    }

As you can see in the example code, MiddleMan is a dependency, and the class implements the ICore interface. The plugin initializes collections in the constructor, implements all required methods and properties, and uses the OnError event handler to report errors to the Skymu frontend. If your protocol doesn't support a particular feature (like clickable items), you can return an empty array or implement it as a stub that returns false. Now on to the interfaces, and documentation of their methods and variable fields.

## Enumerations

### AuthenticationMethod

Defines the authentication methods your plugin supports:

* Password - Standard username/password authentication
* QRCode - QR code-based authentication
* Passwordless - Passwordless authentication (e.g. magic links)
* External - External authentication provider
* Token - Token-based authentication

### LoginResult

Return values for login operations:

* Success - Login completed successfully
* OptStepRequired - Additional step required (e.g. 2FA)
* Failure - Login failed
* UnsupportedAuthType - The authentication method is not supported

### UserConnectionStatus

Static constants for user presence status:

* Group = 21
* Invisible = 19
* DoNotDisturb = 5
* Online = 2
* Away = 3
* Offline = 19
* Unknown = 0

### ClickableItemType

Types of clickable items in messages:

* User - A user mention
* Server - A server reference
* ServerRole - A server role mention
* ServerChannel - A server channel reference
* GroupChat - A group chat reference

### DialogType

Types of dialog boxes:

* Error - Error dialog
* Warning - Warning dialog

## Data Classes

### SidebarData

Represents the current user's information displayed in the sidebar.

**Constructor:** `SidebarData(string username, string identifier, string skypeCreditText, int connectionStatus)`

**Properties:**

* string DisplayName - The current user's display name
* string Identifier - The current user's unique identifier
* string SkypeCreditText - The text you want to put in place of Skype Credit
* int ConnectionStatus - Icon status (e.g. "Online")

### ProfileData

Represents user profile information. Implements INotifyPropertyChanged for real-time updates.

**Constructor:** `ProfileData(string displayName, string identifier, string status, int presenceStatus, byte[] profilePicture)`

**Properties:**

* string DisplayName - Display name. Prefer nickname over username or general name where it applies
* string Identifier - Unique identifier of the user. The end user is not going to see this. It is used internally
* string Status - Textual status (e.g. "I'm doing good today.")
* int PresenceStatus - Icon status (e.g. "Online")
* byte[] ProfilePicture - Raw image data for profile picture. Reasonable resolutions (not too low/high) preferred

### ConversationItem

Abstract base class for conversation items. All conversation items have a Time property.

**Properties:**

* DateTime Time - Time when the item was sent. If your server API returns send_started and send_completed (for example) prefer send_completed

### MessageItem

Represents a message in a conversation. Inherits from ConversationItem.

**Constructor:** `MessageItem(string messageID, string sentByIdentifier, string sentByDisplayName, string body, DateTime time, string replyToIdentifier = null, string replyToDisplayName = null, string replyToBody = null)`

**Properties:**

* string MessageID - Unique identifier for the message
* string SentByDN - Who sent the message (Display Name)
* string SentByID - Who sent the message (Identifier)
* string ReplyToDN - Who the message is replying to (Display Name)
* string ReplyToID - Who the message is replying to (Identifier)
* string ReplyBody - Body of the message being replied to
* string Body - Message body
* string PreviousMessageIdentifier - This is not set by you

**Note:** The reason this class asks for both Display Name and Identifier for SentBy and ReplyTo is because identifier to display name mapping in the UI becomes very complex in servers with large amounts of people, as well as other possible complications. To simplify everything, just provide both.

### CallStartedItem

Represents a call start notification. Inherits from ConversationItem.

**Constructor:** `CallStartedItem(string startedByDisplayName, bool isVideoCall, DateTime time)`

**Properties:**

* string StartedBy - Return the user's display name (NOT identifier)
* bool IsVideoCall - Set to true if the call is video

### CallEndedItem

Represents a call end notification. Inherits from ConversationItem.

**Constructor:** `CallEndedItem(TimeSpan duration, bool isVideoCall, DateTime time)`

**Properties:**

* TimeSpan Duration - Length of call
* bool IsVideoCall - Set to true if the call was video

**Note:** time here is when the "Call ended" notification was sent, not when call started.

### ClickableConfiguration

Abstract base class for clickable item configurations.

### ClickableDelimitationConfiguration

Configuration for delimited clickable items. Inherits from ClickableConfiguration.

**Properties:**

* char? DelimiterLeft - left delimiter for clickable item, e.g. '<@', '@'
* char? DelimiterRight - right delimiter for clickable item, e.g. '>'. Space means left-only delimitation in practice
* ClickableItemConfiguration[] ClickableItems - Array of clickable item configurations

### ClickableItemConfiguration

Configuration for a specific type of clickable item. Inherits from ClickableConfiguration.

**Constructor:** `ClickableItemConfiguration(ClickableItemType type, string startString)`

**Properties:**

* string StartString - The string that starts this clickable item
* ClickableItemType Type - items that are clickable within the clickability delimiter range

### PluginMessageEventArgs

Event arguments for plugin messages.

**Constructor:** `PluginMessageEventArgs(string message)`

**Properties:**

* string Message - The message content

## ICore

The ICore interface is required for all plugins. It provides core functionality for authentication, messaging, and data management.

**Events:**

* event EventHandler<PluginMessageEventArgs> OnError - Error handler. Trigger an error and the Skymu frontend will show an error dialog with your message
* event EventHandler<PluginMessageEventArgs> OnWarning - Warning handler. Trigger a warning and the Skymu frontend will show a warning dialog with your message

**Properties:**

* string Name { get; } - Name of the protocol (e.g. "Discord")
* string InternalName { get; } - Internal name of the plugin (e.g. "skymu-discord-plugin")
* string TextUsername { get; } - The text to display above the Username field (e.g. "Username", "Email", "Phone number")
* AuthenticationMethod[] AuthenticationType { get; } - Array of supported authentication types (OAuth, Passwordless, Standard, etc.)
* SidebarData SidebarInformation { get; } - Field for sidebar data, ideally bound to a WebSocket or similar for real-time updates
* ObservableCollection<ConversationItem> ActiveConversation { get; } - Field for conversation items in the active conversation, ideally bound to a WebSocket or similar for real-time updates
* ObservableCollection<ProfileData> ContactsList { get; } - Field for contact list, ideally bound to a WebSocket or similar for real-time updates
* ObservableCollection<ProfileData> RecentsList { get; } - Field for recents list, ideally bound to a WebSocket or similar for real-time updates
* ClickableConfiguration[] ClickableConfigurations { get; } - Configurations for various types of clickable items

**Methods:**

* Task<string[]> SaveAutoLoginCredential() - Saves credentials for auto-login. Returns array of credential strings
* Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password, bool tryLoginWithSavedCredentials) - Step 1 of the login system, basically when you click 'Sign in' on the Login window. Returns LoginResult indicating success, failure, or if optional step is required
* Task<LoginResult> LoginOptStep(string code) - Step 2 of the login system, this is used for Multi-Factor Authentication. Returns LoginResult indicating success or failure
* Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials) - Tries to log in with saved tokens/credentials. Returns LoginResult indicating success or failure
* Task<bool> SendMessage(string identifier, string text) - Sends a message. Returns true on success
* Task<bool> PopulateSidebarInformation() - Fetches and assigns the sidebar information to the SidebarInformation variable. Returns true on success
* Task<bool> PopulateContactsList() - Fetches and assigns the contact list to the ContactList variable. Returns true on success
* Task<bool> PopulateRecentsList() - Fetches and assigns the recents list to the RecentsList variable. Returns true on success
* Task<bool> SetActiveConversation(string identifier) - Sets the active conversation to the specified identifier and fetches its messages. Returns true on success

## IMessenger

For methods/variables specific to messaging services, like Discord, WhatsApp, etc.

Not documented yet.

## IBoard

For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.

Not documented yet.