# Skymu Features

Skymu is a multiplatform recreation of classic Skype, bringing the nostalgic Skype user interface into the modern era with support for multiple different messaging services. Here is an overview of what Skymu currently does.

## Messaging

- Send and receive messages across supported plugins
- Message sending animation while a message is being sent
- Deleted messages properly delete in real time
- Markdown rendering via Markdig, including proper formatting support
- Shortcode emoji support (e.g. `:smile:`)
- Phishing link detection: masked Markdown links that redirect to a different destination than displayed will show a warning

## Servers

- Full server support, including channels organized under a server
- Collapsible channels
- Channel type icons with finalized icon colors: light blue for text channels, dark blue for announcements and forums, dark green handset for voice channels

## Status

- Set your Skype status from within the app by clicking the status icon
- Context menu to set Skype status

## Login and Credentials

- Discord QR code login (no token required)
- Credential storage using the Windows Credential Manager, the modern and secure approach since Windows Vista
- Built with multiple saved sessions per plugin and switchable user accounts in mind

## Notifications

- Notifications support, made fully accurate to classic Skype behavior

## Accuracy and Appearance

- Complete window border support
- Skype Sounds
- Theming support
- Dynamic sidebar tabs: an opt-in accuracy setting matching Skype 5.5.x through 5.10.x behavior, where the selected tab takes up most of the sidebar width and unselected tabs are fixed at 32px. Disabled by default.
- Buttons automatically size to text, which also helps with alternative language support
- Menu Bar items accurately sized

## Plugins

Skymu is built on a plugin system using MiddleMan interfaces. Plugins are written against one of three interfaces:

- **ICore**: required for all plugins
- **IMessenger**: for instant messaging services
- **IBoard**: for message board services

Supported plugins include Discord, XMPP (marked experimental), and others. Three new plugins were added during the v0.2 development cycle.

## Localization

- Multiple language support

## Other

- Auto updater
- Autorun support
- Image viewing
- Group chat support
- Call sounds
- Settings panel, including opt-in accuracy settings

## Website and Wiki

- Download and community links available at skymu.app
- Documentation and wiki available at skymu.app/wiki