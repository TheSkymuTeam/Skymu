# Skymu API Documentation

## Overview

The Skymu API provides a unified interface for building messaging protocol plugins in Visual Basic .NET, this API allows developers to integrate various messaging platforms (Discord, WhatsApp, Telegram, and others) into the Skymu client through a consistent set of interfaces and classes, pretty neat right.

The API is structured around several core interfaces, *ISkClient* represents the main client connection to a messaging service, *IUser* represents individual users on the platform, *IChannel* represents text or voice channels where messages are sent and received, *IGroup* represents collections of channels, like Discord servers or group chats, these interfaces work together to provide a complete messaging experience, with the API handling synchronization between the protocol implementation and the Skymu UI, if you've worked with messaging APIs before this should feel familiar (and if you haven't don't worry we'll walk you through it LIKE A TRUE BRO).

**WARNING:** Do not assume the documentation in this guide is completely up-to-date, it probably isn't, the intent of this guide is to get you started with the conceptual part of plugin development, after all if you are familiar with the fundamentals you don't need documentation you can just look at the source code for the API itself.

## Getting Started

### Requirements

Before you can start developing a Skymu plugin you'll need a few things, you'll need Visual Studio 2019 or later (Community edition works fine trust me), .NET Framework 4.7.2 or later, a reference to the Skymu API assembly, and basic knowledge of Visual Basic .NET and asynchronous programming, you'll also need access to the messaging protocol's API documentation that you're integrating, nothing too exotic just the standard toolkit for .NET development WAHOO.

### Project setup

Start by creating a new Class Library project in Visual Studio, target .NET Framework 4.7.2 or later, add a reference to the Skymu API assembly in your project, you can do this by right-clicking References in Solution Explorer selecting Add Reference and browsing to the Skymu.API.dll file, once you've got your project set up create a new class that inherits from the Plugin base class and implements ISkClient, let's-a-go.

### Implementation order

Start by creating your *Plugin* class and implementing the basic properties like *Name*, *Author*, and *Version*, these identify your plugin in the Skymu interface, next implement the *Start* and *Stop* methods which handle plugin lifecycle, then create your client class that implements *ISkClient*, start with the authentication methods (*Login*, *Disconnect*) to get basic connectivity working, wire up the *Connected* property and *User* property so the UI knows when you're logged in, MAMMA MIA.

Once authentication works implement *GetFriends*, *GetDMs*, and *GetGroups* to populate the contact lists and conversations, these methods return lists of users and groups that the UI can display, then implement *GetChannel* and *GetUser* to retrieve individual items by ID, after that create your *Channel* class that inherits from the abstract *Channel* base class, implement *SendMessage* and *GetMessages* to enable basic messaging functionality, make sure to trigger the *MessageReceived* event when new messages arrive so the UI can display them.

If your protocol supports servers or group chats implement *IGroup* and its related methods, create classes for categories if your protocol has channel organization features like Discord, wire up the various events in *MessagingEvents* so the UI stays synchronized with incoming data, test thoroughly with real accounts and real data as edge cases will show up quickly (THEY ALWAYS DO WAHOO).

### Building and testing

Once you've implemented the required interfaces build your project, if it compiles without errors your plugin is structurally sound, copy the compiled DLL to Skymu's plugins folder, the exact location depends on your Skymu installation but it's typically in the application directory under a plugins subfolder, launch Skymu and your plugin should appear in the available protocols list, HERE WE GO.

For testing start with authentication and make sure you can log in successfully, once that works test loading your friends list and direct messages, try sending messages and verify they appear in the UI, check that incoming messages trigger notifications and update the UI, test group functionality if your protocol supports it, use real accounts rather than test accounts as production APIs often behave differently than development environments.

### Common issues

Don't forget to initialize collections before returning them from methods like *GetFriends* or *GetChannels*, returning *Nothing* will cause null reference exceptions in the UI, always implement all interface methods even if your protocol doesn't support a particular feature, in those cases return empty collections or appropriate default values, don't throw exceptions from interface methods unless something truly catastrophic happens (LIKE THE SERVER SPONTANEOUSLY COMBUSTING MAMA MIA), return error results or empty data instead.

Handle API rate limits properly, most messaging platforms have rate limits and exceeding them will get your plugin throttled or blocked, implement proper error handling around all network calls, network issues are common and your plugin should handle them gracefully rather than crashing, cache data intelligently to reduce API calls, profile pictures user information and channel metadata don't change frequently and can be cached locally.

## Plugin Capabilities And Limitations

### What your plugin can do

Your plugin has full access to the .NET Framework libraries and can make HTTP requests connect to WebSockets parse JSON and XML handle file I/O and work with databases, you can implement any authentication flow your protocol requires including OAuth token-based auth and multi-factor authentication, the plugin can maintain state between sessions and cache data locally for performance, SUPER STAR POWER.

You can create rich messaging experiences by implementing the full range of message types and features, the API supports text messages voice call notifications message replies message editing and custom message metadata, you can implement real-time message delivery through WebSockets or other push mechanisms, the plugin can trigger UI updates through events show notifications to the user and integrate with the system notification system, basically if the .NET Framework can do it your plugin can do it (WITHIN REASON OF COURSE WAHOO).

Your plugin can organize conversations hierarchically using channels, categories, and groups. You can implement permission systems to control who can send messages or access certain channels. The API supports both direct messages and group conversations. You can provide user presence information (online, away, do not disturb) and custom status messages.

### What your plugin cannot do

Your plugin cannot modify the Skymu UI directly beyond what the API provides. You cannot add custom windows, menus, or UI elements. The plugin runs in the same process as Skymu, so blocking operations can freeze the entire application. Your plugin cannot directly access other plugins or their data. Each plugin operates in isolation.

You cannot override or extend the interface definitions. If an interface changes in a future API version, you'll need to update your plugin accordingly. The plugin cannot persist data outside of what you implement yourself. If you need to store configuration, tokens, or cache data, you'll need to use standard file I/O or a database and manage it yourself.

## Interfaces

### ISkClient

*ISkClient* is the main interface your plugin must implement, it represents the connection to the messaging service and provides methods for authentication retrieving users and channels and managing the connection state, think of it as the heart of your plugin (BUT LESS MESSY YAHOO).

**Properties:**

* ReadOnly Property Connected As Boolean - Returns true when the client is connected and authenticated to the service
* Property UserName As String - The username of the currently connected user
* Property DisplayName As String - The display name of the currently connected user
* Property User As IUser - The complete user object for the currently connected user

**Methods:**

* Function Login(Username As String, Password As String, Optional AuthMethod As AuthMethods = AuthMethods.Standard) As LoginResult - Authenticates the user with their credentials. Returns a LoginResult indicating success or failure. For protocols with two-factor authentication, see Auth.DoubleFactorManager
* Sub Disconnect() - Disconnects from the service and cleans up resources
* Function GetFriends(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IUser) - Retrieves the user's friends list with pagination support
* Function GetDMs(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IUser) - Retrieves a list of users with whom the current user has direct message conversations. You may need to call GetChannel on each user to retrieve the actual channel
* Function GetGroups(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IGroup) - Retrieves the list of groups (servers, group chats) the user is a member of
* Function GetChannel(ID As String) As Channel - Retrieves a single channel by its ID. Can be a standalone channel or a channel belonging to a group
* Function GetGroup(ID As String) As IGroup - Retrieves a group of channels by its ID, like a Discord server
* Function GetUser(ID As String) As IUser - Retrieves a user object by their ID
* Function GetAvailableGroups() As List(Of IGroup) - Retrieves groups available to the user
* Function GetAvailableChannelGroups() As List(Of ChannelGroup) - Retrieves channel groups available to the user
* Function SyncFromServer() As Result - Takes data from the server to fill the client instance. Used for refreshing data
* Function SyncToServer() As Result - Takes data from the instance to update the server, like applying new settings or changing the user's name. You can use a cache to track changes and only update modified elements

**Events:**

* Event ConnectedEvent() - Triggered when the user is finally connected. This is marked as obsolete and may be removed in future versions
* Event FailedEvent() - Triggered when connection fails. This is marked as obsolete and may be removed in future versions

### ISync

ISync is a simple interface for objects that can synchronize with the server. Both ISkClient and other objects implement this interface.

**Properties:**

* Property ID As String - The unique identifier for this object

**Methods:**

* Function SyncFromServer() As Result - Takes data from the server to fill the instance
* Function SyncToServer() As Result - Takes data from the instance to update the server. You can use a cache to track old data and only update edited elements

### IUser

*IUser* represents a user on the messaging platform. This interface provides access to user information, avatar and banner images, direct messaging, and social features.

**Properties:**

* Property Username As String - The user's username
* Property DisplayName As String - The user's display name
* Property UserObject As Object - The underlying user object from your protocol's SDK. This is marked as obsolete and may be removed in future versions
* Property UserID As String - The user's unique identifier
* Property UserStatus As AvailabilityMode - The user's current availability status (online, away, do not disturb, etc.)
* Property UserStatusText As String - Custom status text set by the user
* Property UserActivity As String - The user's current activity. If empty, do not show any activity
* ReadOnly Property IsBlocked As Boolean - Returns true if this user is blocked by the current user
* ReadOnly Property IsFriend As Boolean - Returns true if this user is in the current user's friends list

**Methods:**

* Function GetAvatar(Optional Size As Single = 128) As Bitmap - Retrieves the user's avatar image at the specified size
* Function GetBanner() As Bitmap - Retrieves the user's banner image
* Function GetAvatarUrl(Optional Size As Single = 128) As Uri - Retrieves the URL for the user's avatar
* Function GetBannerUrl() As Uri - Retrieves the URL for the user's banner
* Sub SendDM(Message As String) - Sends a direct message to this user
* Function GetDMChannel() As IChannel - Retrieves the direct message channel with this user
* Function GetCommonFriends() As List(Of IUser) - Retrieves friends that both the current user and this user have in common
* Function GetCommonServers() As List(Of IGroup) - Retrieves groups (servers) that both the current user and this user are members of
* Function Sync() As Result - Takes data from the server to fill the instance
* Sub ChangeBlockedStatus(IsBlocked As Boolean) - Blocks or unblocks this user
* Sub ChangeFriendStatus(IsFriend As Boolean) - Adds or removes this user from the friends list

### IChannel

*IChannel* represents a channel where messages can be sent and received, this can be a text channel voice channel direct message channel or any other type of conversation space, channels are where the magic happens (OR AT LEAST WHERE THE MESSAGES HAPPEN LET'S-A-GO).

**Properties:**

* Property Name As String - The channel's name
* Property Parent As Object - If the channel belongs to a group or category, this should be set to the parent. Returns an IGroup or IGroupCategory
* Property ImageSource As Uri - URL to an image representing this channel
* Property ChannelType As ChannelType - The type of channel (text or voice)
* Property Accessible As Boolean - Whether the current user has access to this channel
* Property ReadOnly As Boolean - Whether the current user can send messages in this channel
* Property Settings As Dictionary(Of String, String) - Channel-specific settings. Can contain information like slow mode settings or other channel configuration
* Property Permissions As Dictionary(Of String, String) - Permission rules for this channel. Format is U.%USER_ID%.SendMessage = "True" for user permissions or R.%ROLE_ID%.MaximumCharacters = "64" for role permissions
* Property SettingsAccess As SettingAccessLevel - Can be set by the implementation and read by the GUI to determine when to show settings and if the user has access to them. Should return every possible setting when queried for the first time
* Property PermissionsAccess As SettingAccessLevel - Access level for viewing and editing permissions

**Methods:**

* Sub SendMessage(Message As String) - Sends a message to this channel
* Function GetMessages(Optional Max As Integer = -1) As List(Of Message) - Retrieves messages from this channel. If Max is -1, retrieves all available messages
* Function GetMessagesBefore(TargetMessage As Message, Optional Max As Integer = -1) As List(Of Message) - Retrieves messages sent before the specified message. Used for pagination

**Events:**

* Event MessageReceived(Message As Message) - Triggered when a new message is received in this channel

### IGroup

*IGroup* represents a collection of channels, like a Discord server or a group chat with multiple channels.

**Properties:**

* Property Name As String - The group's name
* Property ImageSource As Uri - URL to an image representing this group (server icon, group chat icon)
* Property MembersCount As Integer - Number of members in this group
* Property ChannelsCount As Integer - Number of channels in this group
* Property Accessible As Boolean - Whether the current user has access to this group
* Property Settings As Dictionary(Of String, String) - Group-specific settings. These settings aren't fixed by the API. Getting those for the first time should return every possible setting
* Property SettingsAccess As SettingAccessLevel - Can be set by the implementation and read by the GUI to determine when to show settings and if the user has access to them

**Methods:**

* Function GetMembers(Optional Skip As Integer = 0, Optional Max As Integer = 50) As List(Of IUser) - Retrieves members having access to this group
* Function GetChannels(Optional Skip As Integer = 0, Optional Max As Integer = 20, Optional ReturnChannelsFromCategories As Boolean = True) As List(Of IChannel) - Retrieves channels in this group. If ReturnChannelsFromCategories is true, includes channels from categories
* Function GetCategories(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IGroupCategory) - Retrieves categories within this group. Categories act like sub-groups of channels with their own name and ID

### IGroupCategory

IGroupCategory represents a category within a group. Categories organize channels into logical groups within a server.

**Properties:**

* Property Name As String - The category's name
* Property Id As String - The category's unique identifier
* Property ImageSource As Uri - URL to an image representing this category. This is optional as categories usually don't have images
* Property ChannelsCount As Integer - Number of channels in this category

**Methods:**

* Function GetChannels(Optional Skip As Integer = 0, Optional Max As Integer = 200) As List(Of IUser) - Retrieves channels in this category

### IFeed

IFeed is reserved for feed-based content like Twitter's feed or Instagram's infinity scrolling. This interface is currently work in progress and should not be implemented yet. It was formerly called IFlux.

## Classes

### Channel

*Channel* is the abstract base class for all channel implementations, your plugin must create a class that inherits from *Channel* and implements the abstract methods, THIS IS WHERE YOU'LL SPEND A GOOD CHUNK OF YOUR DEVELOPMENT TIME WAHOO.

**Properties:**

* Property Name As String - The channel's name
* Property Id As String - The channel's unique identifier
* Property ImageSource As Uri - URL to an image representing this channel
* Property Accessible As Boolean - Whether the user can access this channel
* Property IsAsyncCompatible As Boolean - Set to true if your implementation supports asynchronous message retrieval through ForEachMessageAsync methods
* Property Parent As Object - The parent group or category this channel belongs to
* Property ChannelType As ChannelType - The type of channel (text or voice)
* Property ReadOnly As Boolean - Whether the user can send messages
* Property Settings As Dictionary(Of String, String) - Channel-specific settings
* Property Permissions As Dictionary(Of String, String) - Permission rules
* Property SettingsAccess As SettingAccessLevel - Access level for settings
* Property PermissionsAccess As SettingAccessLevel - Access level for permissions

**Methods:**

* MustOverride Sub SendMessage(Text As String) - Implement this to send messages to the channel
* MustOverride Function GetMessages(Optional Max As Integer = -1) As List(Of Message) - Implement this to retrieve messages from the channel
* MustOverride Function GetMessagesBefore(TargetMessage As Message, Optional Max As Integer = -1) As List(Of Message) - Implement this to retrieve messages before a specific message
* Overridable Sub ForEachMessageAsync(Action As Action(Of Message), Optional Max As Integer = -1) - Execute a method for each message recovered by the implementation. Override this if you set IsAsyncCompatible to true
* Overridable Sub ForEachMessageBeforeAsync(Action As Action(Of Message), TargetMessage As Message, Optional Max As Integer = -1) - Execute a method for each message recovered before a certain message. Override this if you set IsAsyncCompatible to true
* Function SyncFromServer() As Result - Synchronize channel data from the server
* Function SyncToServer() As Result - Push local changes to the server

**Events:**

* Event MessageReceived(Message As Message) - Triggered when a new message is received

### DummyChannel

DummyChannel is a simple channel implementation that does nothing. It's useful for testing or as a placeholder.

**Constructor:**

* Sub New(Name As String, Optional Id As String = "0") - Creates a dummy channel with the specified name and ID

### DummyUser

DummyUser is a simple user implementation that does nothing. It's useful for testing or as a placeholder.

**Properties and methods:**

DummyUser implements all IUser properties and methods with minimal functionality. SendDM writes to the console instead of sending actual messages. Most methods throw NotImplementedException.

### Message

*Message* represents a single message in a channel, this class contains all the information about a message including its content author timestamps and special properties like voice chat notifications, IT'S GOT EVERYTHING YOU NEED TO KNOW ABOUT A MESSAGE (AND THEN SOME MAMA MIA).

**Constructor:**

* Sub New(Author As IUser, Content As String, Optional ID As String = "0", Optional Time As Date? = Nothing, Optional SentByCurrentUser As Boolean = False, Optional ChannelID As String = "0") - Creates a new message. If Time is not specified, uses the current time. If ID is "0" or empty, the message is assumed to be pending send

**Properties:**

* Property Author As IUser - The user who sent this message
* Property Parent As Object - If applicable, contains an IChannel
* Property Content As String - The message text content
* Property ID As String - The message's unique identifier. If the ID is 0 or empty, this means the ID isn't known yet and the message was likely created to be sent
* Property ReplyToID As String - Contains the ID of the message this message replies to
* Property Time As Date - When the message was sent
* Property LastEdited As Date - If not edited, should be Nothing. Otherwise contains the date of the last edit
* Property IsVoiceNotification As Boolean - Set to true if this is a voice chat notification like a missed call
* Property VCDuration As TimeSpan - Duration of the voice chat, ignored if still running
* Property VCMissed As Boolean - Set to true if the user missed the voice chat
* Property VCStillRunning As Boolean - Set to true if the voice chat is still in progress
* Property Self As Boolean - Set to true if the message is from the connected user. This is marked as obsolete since you can compare Author ID to the connected user ID
* Property ChannelID As String - The ID of the channel this message belongs to

### Plugin

*Plugin* is the abstract base class for all plugin implementations. Your plugin must create a class that inherits from *Plugin* and implements the required methods.

**Properties:**

* Property Name As String - The name of your plugin (e.g. "Discord Plugin")
* Property Author As String - Your name or organization
* Property Version As String - The version of your plugin (e.g. "1.0.0")
* Property Icon As Bitmap - An icon representing your plugin. Can be embedded as a resource
* ReadOnly Property CanBeStopped As Boolean - Set to true if your plugin can be stopped and restarted without issues
* ReadOnly Property HaveClient As Boolean - Set to true if your plugin provides a client implementation

**Methods:**

* MustOverride Sub Start() - Called when the plugin is loaded. Initialize your plugin here
* MustOverride Sub Stop() - Called when the plugin is unloaded. Clean up resources here
* MustOverride Function GetClient() As ISkClient - Returns your ISkClient implementation

### Result

Result is a simple class for returning success or failure information from methods.

**Constructor:**

* Sub New(Success As Boolean, Message As String) - Creates a new result with the specified status and message

**Properties:**

* Success As Boolean - Whether the operation succeeded
* Message As String - A message describing the result or error

## Enumerations

### AuthMethods

Defines the authentication methods your plugin supports.

* Token - Token-based authentication
* Standard - Standard username and password authentication
* OAuth - OAuth authentication flow
* UsernameOnly - Authentication with only a username
* No - No authentication required

### LoginResultDetails

Provides detailed information about login failures.

* NoDetails - No additional details
* ServerNotFound - The server could not be reached
* UnknownFailure - Login failed for an unknown reason
* WrongPassword - The password was incorrect
* AccountNotFound - The account does not exist
* MissingValues - Required login fields were not provided
* DoubleFactorFailed - Two-factor authentication failed
* CustomWarning - A custom warning message
* CustomError - A custom error message

### AvailabilityMode

Defines user presence statuses.

* Unknown = 0 - Status is unknown
* Online = 1 - User is online
* Away = 2 - User is away
* DoNotDisturb = 3 - User does not want to be disturbed. This disables notifications by default
* Offline = 4 - User is offline. Also applies to invisible status
* Special = 5 - Special status mode. May be used for custom statuses like "At Work" or "Driving"
* Special2 = 6 - Additional special status
* Special3 = 7 - Additional special status
* Special4 = 8 - Additional special status

### ChannelType

Defines types of channels.

* TextChannel - A text-based channel
* VoiceChannel - A voice-based channel

### SettingAccessLevel

Defines what level of access a user has to settings.

* NoAccess - User cannot view or edit settings
* CanViewSettings - User can view settings but not edit them
* CanViewAndEditSettings - User can view and edit settings

### NotificationsType

Defines types of notifications.

* Message - A new message notification
* Call - An incoming call notification
* Notification - Default notification type, acts like an information popup in Skype style
* Error - An error notification
* UpdateAvailable - A notification about an available update

## Messaging Events

MessagingEvents is a module that provides events for the messaging system. Your plugin should trigger these events to notify the UI of changes.

**Events:**

* Event ClientLoaded(Client As ISkClient) - Triggered when a client is successfully loaded
* Event MessageReceived(Message As Message) - Triggered when a message is received. The GUI listens to this and filters channels to manage notifications
* Event ProfileUpdated(User As IUser) - Triggered when someone updates their profile. The GUI listens to this to update profile information
* Event CurrentProfileUpdated(Client As ISkClient) - Triggered when the current user's profile is updated
* Event DMChannelAdded(Message As Message) - Triggered when a new direct message channel is added
* Event GroupChannelAdded(Server As IGroup) - Triggered when a new group channel is added
* Event ServerChannelAdded(Server As IGroup) - Triggered when a new server channel is added

**Methods:**

* Sub Perform_ClientLoaded(Client As ISkClient) - Call this when your client is loaded
* Sub Perform_MessageReceived(Message As Message) - Call this when a message is received to send it to the GUI
* Sub Perform_ProfileUpdated(User As IUser) - Call this when a user updates their profile
* Sub Perform_CurrentProfileUpdated(Client As ISkClient) - Call this when the connected user's profile is edited

## User Interface Events

UserInterfaceEvents is a module that provides events related to the GUI. These are triggered by the GUI itself, not by plugins.

**Events:**

* Event WindowMinimized() - Triggered when the main GUI window is minimized
* Event WindowRestored() - Triggered when the main GUI window goes from minimized to normal mode
* Event WindowLoaded() - Triggered when the main GUI window is fully loaded

**Methods:**

* Sub Perform_WindowMinimized() - The GUI calls this when the window is minimized
* Sub Perform_WindowRestored() - The GUI calls this when the window is restored
* Sub Perform_WindowLoaded() - The GUI calls this when it's fully loaded

## User Interface Interactions

UserInterfaceInteractions is a module that allows plugins to interact with the GUI window.

**Events:**

* Event EV_MinimizeWindow() - Triggered when a plugin requests the window to minimize
* Event EV_RestoreWindow() - Triggered when a plugin requests the window to restore

**Methods:**

* Sub MinimizeWindow() - Call this to request the GUI to minimize the window
* Sub RestoreWindow() - Call this to request the GUI to restore the window

## Notifications

Notifications is a module for showing notifications to the user.

**Events:**

* Event ENV_ShowNotification(Header As String, Text As String, Type As NotificationsType, NavigateToChannelID As String) - Triggered when a notification should be shown

**Methods:**

* Sub ShowNotification(Header As String, Text As String, Optional Type As NotificationsType = NotificationsType.Notification, Optional NavigateToChannelID As String = "") - Shows a notification to the user. Header is the main text, Text is additional details, Type determines the notification style, and NavigateToChannelID can be used to navigate to a specific channel when the notification is clicked

## Authentication

The Auth namespace contains authentication-related classes and enumerations.

### LoginResult class

LoginResult represents the result of a login attempt.

**Constructor:**

* Sub New(Success As String, Optional Details As LoginResultDetails = LoginResultDetails.NoDetails, Optional CustomMessage As String = "") - Creates a new login result

**Properties:**

* Success As Boolean - Whether the login succeeded
* Details As LoginResultDetails - Additional details about the login result
* CustomMessage As String - A custom message to display to the user

### DoubleFactorManager module

DoubleFactorManager handles two-factor authentication popups.

**Properties:**

* Show2FAPopupGUIAction As Func(Of ISkClient, Integer) - A function that the GUI sets to show the 2FA popup

**Methods:**

* Function Call2FAPopup(Client As ISkClient) As Boolean - Call this to show the 2FA popup when needed during login

## Extensions

Extensions is a module that provides extension methods for common operations.

**Methods:**

* Function GetValueOrDefault(Of KeyType, ValueType)(Dict As Dictionary(Of KeyType, ValueType), Key As KeyType, Optional DefaultValue As ValueType = Nothing) As ValueType - Gets a value from a dictionary, or returns a default value if the key doesn't exist
* Function GetValueOrDefault(Of KeyType, ValueType)(Dict As SortedDictionary(Of KeyType, ValueType), Key As KeyType, Optional DefaultValue As ValueType = Nothing) As ValueType - Gets a value from a sorted dictionary, or returns a default value if the key doesn't exist
* Function GetValueOrDefault(Of ValueType)(List As IEnumerable(Of ValueType), Key As Integer, Optional DefaultValue As ValueType = Nothing) As ValueType - Gets a value from a list by index, or returns a default value if the index is out of bounds

## Cache Manager

CacheManager is a module for caching data. This is currently being reworked and most functionality has been removed.

**Properties:**

* CachedChannels As Dictionary(Of String, List(Of API.Message)) - A dictionary that caches messages by channel ID

## Best Practices

### Error handling

wrap all network operations and API calls in try-catch blocks, when errors occur return appropriate *Result* objects or *LoginResult* objects with meaningful error messages, don't throw exceptions from interface methods unless something catastrophic happens, use the *Details* property of *LoginResult* to provide specific information about authentication failures.

when network errors occur consider implementing retry logic with exponential backoff, many temporary network issues resolve themselves quickly (PATIENCE IS A VIRTUE EVEN IN CODE WAHOO), log errors internally for debugging but present user-friendly messages through the API, don't expose raw exception messages or stack traces to users.

### Authentication and sessions

Implement proper session management. Most messaging protocols provide tokens or session IDs that can be reused. Store these securely and implement auto-login functionality so users don't need to enter credentials every time. Use the *Auth.AuthMethods* enumeration to support multiple authentication methods if your protocol allows it.

Handle two-factor authentication properly using the *DoubleFactorManager*. When *Login* returns a result indicating 2FA is needed, call *Call2FAPopup* to show the authentication prompt. Don't implement your own 2FA UI, use the provided mechanism so the experience is consistent across plugins.

Never store passwords in plain text. If you must store credentials, encrypt them properly. For token-based authentication, store only the tokens and implement proper token refresh logic. Most APIs provide refresh tokens for this purpose.

### Message handling

when implementing *GetMessages* consider pagination carefully, don't load thousands of messages at once as this will consume memory and slow down the UI, implement *GetMessagesBefore* properly to support scrolling through message history, cache messages locally to avoid redundant API calls (YOUR USERS' BANDWIDTH WILL THANK YOU MAMMA MIA).

trigger the *MessageReceived* event immediately when new messages arrive, the UI depends on this event for real-time updates, make sure to populate all required fields in the *Message* object including *Author*, *Content*, *Time*, and *ID*, the UI uses these fields for display and organization.

handle message edits and deletions if your protocol supports them, update the *LastEdited* property when messages are edited, for deletions you may need to implement a custom mechanism since the base API doesn't define a standard deletion flow.

### User and presence management

Cache user information locally. Profile pictures, display names, and user IDs don't change frequently and can be cached for performance. Implement proper cache invalidation when *ProfileUpdated* events are received. Don't query the API for user information on every access.

Update user presence information regularly if your protocol supports it. Use the *UserStatus* and *UserStatusText* properties to display this information. Trigger *ProfileUpdated* events when presence changes so the UI can update accordingly. Consider implementing a background task that periodically refreshes presence information for visible users.

### Group and channel organization

When implementing GetChannels for groups, respect the ReturnChannelsFromCategories parameter. If true, flatten the category structure and return all channels. If false, return only top-level channels. This gives the UI flexibility in how it displays channel hierarchies.

Implement categories properly if your protocol supports them. Categories help organize large servers with many channels. Make sure the Parent property on channels correctly references their category or group. This allows the UI to build the proper hierarchy.

### Performance considerations

don't block the UI thread, all API calls should be asynchronous or quick enough not to cause UI freezes, if you need to do heavy processing use background threads, the API methods are synchronous but your implementation should complete quickly by using async operations internally (NOBODY LIKES A FROZEN UI TRUST ME ON THIS ONE).

implement efficient pagination in *GetFriends*, *GetDMs*, *GetGroups*, and similar methods, the *Skip* and *Max* parameters exist to support loading data in chunks, don't ignore these parameters and return all data at once, respect rate limits imposed by the protocol's API, implement throttling if necessary to avoid hitting limits, HERE WE GO.

use the *IsAsyncCompatible* property and *ForEachMessageAsync* methods if your protocol supports streaming message retrieval, this allows the UI to display messages as they're loaded rather than waiting for the complete set, this improves perceived performance for channels with large message histories.

### Code organization

separate your concerns into distinct classes, don't put all your logic in the plugin class or client class, create separate classes for API communication data mapping authentication and caching, this makes your code more maintainable and testable (AND YOUR FUTURE SELF WILL APPRECIATE IT WAHOO).

use the provided base classes like *Channel* rather than implementing *IChannel* directly, the base classes handle boilerplate code and provide default implementations, override only what you need to customize, follow the same pattern for other interfaces where abstract base classes are available.

document your code especially where you work around protocol limitations or implement non-obvious logic, future maintainers will thank you, if the protocol API has quirks or undocumented behavior add comments explaining your implementation choices, MAMA MIA.

## Example Plugin

    Imports System
    Imports Skymu.API
    Imports Skymu.API.Auth
    
    ' Main plugin class
    Public Class ExamplePlugin
        Inherits Plugin
        
        Private _client As ExampleClient
        
        Public Sub New()
            Name = "Example Protocol"
            Author = "Your Name"
            Version = "1.0.0"
            Icon = My.Resources.PluginIcon ' Load from resources
        End Sub
        
        Public Overrides Sub Start()
            ' Initialize the plugin
            _client = New ExampleClient()
            Console.WriteLine("Example plugin started")
        End Sub
        
        Public Overrides Sub [Stop]()
            ' Clean up resources
            If _client IsNot Nothing AndAlso _client.Connected Then
                _client.Disconnect()
            End If
            Console.WriteLine("Example plugin stopped")
        End Sub
        
        Public Overrides Function GetClient() As ISkClient
            Return _client
        End Function
    End Class
    
    ' Client implementation
    Public Class ExampleClient
        Implements ISkClient
        
        Private _connected As Boolean = False
        Private _currentUser As IUser = Nothing
        
        Public ReadOnly Property Connected As Boolean Implements ISkClient.Connected
            Get
                Return _connected
            End Get
        End Property
        
        Public Property UserName As String Implements ISkClient.UserName
        Public Property DisplayName As String Implements ISkClient.DisplayName
        Public Property User As IUser Implements ISkClient.User
            Get
                Return _currentUser
            End Get
            Set(value As IUser)
                _currentUser = value
            End Set
        End Property
        
        Public Event ConnectedEvent() Implements ISkClient.ConnectedEvent
        Public Event FailedEvent() Implements ISkClient.FailedEvent
        
        Public Function Login(Username As String, Password As String, Optional AuthMethod As AuthMethods = AuthMethods.Standard) As LoginResult Implements ISkClient.Login
            Try
                ' Implement your authentication logic here
                ' Make API call to authenticate
                Dim success As Boolean = AuthenticateWithAPI(Username, Password)
                
                If success Then
                    _connected = True
                    UserName = Username
                    DisplayName = "Example User"
                    
                    ' Create user object for current user
                    _currentUser = New ExampleUser() With {
                        .Username = Username,
                        .DisplayName = DisplayName,
                        .UserID = "user123",
                        .UserStatus = AvailabilityMode.Online
                    }
                    
                    ' Notify the system that client is loaded
                    MessagingEvents.Perform_ClientLoaded(Me)
                    RaiseEvent ConnectedEvent()
                    
                    Return New LoginResult(True, LoginResultDetails.NoDetails)
                Else
                    Return New LoginResult(False, LoginResultDetails.WrongPassword)
                End If
            Catch ex As Exception
                Console.WriteLine("Login error: " & ex.Message)
                Return New LoginResult(False, LoginResultDetails.UnknownFailure, ex.Message)
            End Try
        End Function
        
        Private Function AuthenticateWithAPI(username As String, password As String) As Boolean
            ' Your actual authentication logic here
            Return True
        End Function
        
        Public Sub Disconnect() Implements ISkClient.Disconnect
            ' Clean up connection
            _connected = False
            _currentUser = Nothing
        End Sub
        
        Public Function GetFriends(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IUser) Implements ISkClient.GetFriends
            Dim friends As New List(Of IUser)
            
            Try
                ' Fetch friends from API
                ' friends.Add(New ExampleUser() With {...})
            Catch ex As Exception
                Console.WriteLine("Error getting friends: " & ex.Message)
            End Try
            
            Return friends
        End Function
        
        Public Function GetDMs(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IUser) Implements ISkClient.GetDMs
            Dim dms As New List(Of IUser)
            
            Try
                ' Fetch DM conversations from API
            Catch ex As Exception
                Console.WriteLine("Error getting DMs: " & ex.Message)
            End Try
            
            Return dms
        End Function
        
        Public Function GetGroups(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IGroup) Implements ISkClient.GetGroups
            Dim groups As New List(Of IGroup)
            
            Try
                ' Fetch groups from API
            Catch ex As Exception
                Console.WriteLine("Error getting groups: " & ex.Message)
            End Try
            
            Return groups
        End Function
        
        Public Function GetChannel(ID As String) As Channel Implements ISkClient.GetChannel
            Try
                ' Fetch channel from API by ID
                Return New ExampleChannel(ID, "Example Channel")
            Catch ex As Exception
                Console.WriteLine("Error getting channel: " & ex.Message)
                Return Nothing
            End Try
        End Function
        
        Public Function GetGroup(ID As String) As IGroup Implements ISkClient.GetGroup
            ' Fetch group from API by ID
            Return Nothing
        End Function
        
        Public Function GetUser(ID As String) As IUser Implements ISkClient.GetUser
            Try
                ' Fetch user from API by ID
                Return New ExampleUser() With {
                    .UserID = ID,
                    .Username = "User" & ID,
                    .DisplayName = "Example User"
                }
            Catch ex As Exception
                Console.WriteLine("Error getting user: " & ex.Message)
                Return Nothing
            End Try
        End Function
        
        Public Function GetAvailableGroups() As List(Of IGroup) Implements ISkClient.GetAvailableGroups
            Return New List(Of IGroup)
        End Function
        
        Public Function GetAvailableChannelGroups() As List(Of ChannelGroup) Implements ISkClient.GetAvailableChannelGroups
            Return New List(Of ChannelGroup)
        End Function
        
        Public Function SyncFromServer() As Result Implements ISkClient.SyncFromServer
            Try
                ' Sync data from server
                Return New Result(True, "Synced successfully")
            Catch ex As Exception
                Return New Result(False, "Sync failed: " & ex.Message)
            End Try
        End Function
        
        Public Function SyncToServer() As Result Implements ISkClient.SyncToServer
            Try
                ' Push changes to server
                Return New Result(True, "Updated successfully")
            Catch ex As Exception
                Return New Result(False, "Update failed: " & ex.Message)
            End Try
        End Function
    End Class
    
    ' User implementation
    Public Class ExampleUser
        Implements IUser
        
        Public Property Username As String Implements IUser.Username
        Public Property DisplayName As String Implements IUser.DisplayName
        Public Property UserObject As Object Implements IUser.UserObject
        Public Property UserID As String Implements IUser.UserID
        Public Property UserStatus As AvailabilityMode Implements IUser.UserStatus
        Public Property UserStatusText As String Implements IUser.UserStatusText
        Public Property UserActivity As String Implements IUser.UserActivity
        
        Public ReadOnly Property IsBlocked As Boolean = False Implements IUser.IsBlocked
        Public ReadOnly Property IsFriend As Boolean = False Implements IUser.IsFriend
        
        Public Function GetAvatar(Optional Size As Single = 128) As Bitmap Implements IUser.GetAvatar
            ' Return cached avatar or fetch from API
            Return New Bitmap(CInt(Size), CInt(Size))
        End Function
        
        Public Function GetBanner() As Bitmap Implements IUser.GetBanner
            Return Nothing
        End Function
        
        Public Function GetAvatarUrl(Optional Size As Single = 128) As Uri Implements IUser.GetAvatarUrl
            Return New Uri("https://example.com/avatar/" & UserID)
        End Function
        
        Public Function GetBannerUrl() As Uri Implements IUser.GetBannerUrl
            Return Nothing
        End Function
        
        Public Sub SendDM(Message As String) Implements IUser.SendDM
            ' Send direct message via API
            Console.WriteLine("Sending DM to " & Username & ": " & Message)
        End Sub
        
        Public Function GetDMChannel() As IChannel Implements IUser.GetDMChannel
            Return New ExampleChannel(UserID & "_dm", "DM with " & DisplayName)
        End Function
        
        Public Function GetCommonFriends() As List(Of IUser) Implements IUser.GetCommonFriends
            Return New List(Of IUser)
        End Function
        
        Public Function GetCommonServers() As List(Of IGroup) Implements IUser.GetCommonServers
            Return New List(Of IGroup)
        End Function
        
        Public Function Sync() As Result Implements IUser.Sync
            Return New Result(True, "User synced")
        End Function
        
        Public Sub ChangeBlockedStatus(IsBlocked As Boolean) Implements IUser.ChangeBlockedStatus
            ' Update blocked status via API
        End Sub
        
        Public Sub ChangeFriendStatus(IsFriend As Boolean) Implements IUser.ChangeFriendStatus
            ' Update friend status via API
        End Sub
    End Class
    
    ' Channel implementation
    Public Class ExampleChannel
        Inherits Channel
        
        Public Sub New(id As String, name As String)
            Me.Id = id
            Me.Name = name
            Me.ChannelType = ChannelType.TextChannel
            Me.Accessible = True
            Me.ReadOnly = False
        End Sub
        
        Public Overrides Sub SendMessage(Text As String)
            Try
                ' Send message via API
                Console.WriteLine("Sending to " & Name & ": " & Text)
                
                ' Create message object and trigger event
                Dim msg As New Message(Nothing, Text, "msg" & DateTime.Now.Ticks.ToString(), DateTime.Now, True, Id)
                RaiseEvent MessageReceived(msg)
                MessagingEvents.Perform_MessageReceived(msg)
            Catch ex As Exception
                Console.WriteLine("Error sending message: " & ex.Message)
            End Try
        End Sub
        
        Public Overrides Function GetMessages(Optional Max As Integer = -1) As List(Of Message)
            Dim messages As New List(Of Message)
            
            Try
                ' Fetch messages from API
                ' messages.Add(New Message(...))
            Catch ex As Exception
                Console.WriteLine("Error getting messages: " & ex.Message)
            End Try
            
            Return messages
        End Function
        
        Public Overrides Function GetMessagesBefore(TargetMessage As Message, Optional Max As Integer = -1) As List(Of Message)
            Dim messages As New List(Of Message)
            
            Try
                ' Fetch messages before target from API
            Catch ex As Exception
                Console.WriteLine("Error getting messages: " & ex.Message)
            End Try
            
            Return messages
        End Function
    End Class

This example demonstrates a complete plugin implementation with a client, user, and channel class. The plugin handles authentication, retrieves data from a hypothetical API, and triggers the appropriate events to keep the UI synchronized. Your actual implementation will need to integrate with your specific messaging protocol's API.
