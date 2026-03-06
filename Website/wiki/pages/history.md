# Comprehensive history of the Skymu project

It's been a long journey to get to where we're at now. Here's a recap of previous events and releases.

## Origins (April - May 2025)

Skymu started as a project to recreate the classic Skype user interface as a modern, multiprotocol client. The early work, done by perfídìous, impactoenjambre, and others, focused on getting the UI right. The Skype 5 title bar was one of the first things nailed down. Work was also done on a resizable left column, with research into original Skype confirming a minimum width of 240px. Multiple themes were in consideration early on, with the idea of Steam-inspired dark themes also discussed.

## Restarting Development (November 2025)

Development started up again in November 2025. The plan was for Skymu to be cross-platform and multiprotocol, running Discord, WhatsApp, Telegram, and other services on any OS. The tech stack at this point was .NET Core 7 and Avalonia UI, with Matrix on the server side and bridges to platforms. The website was planned at skymu.app, with a temporary mirror at skymu.netlify.app.

## January 2026

### Week of Jan 12

A significant change was announced: the project was shifting from Avalonia back to WPF. The reason given was that the Avalonia Aero theme was very incomplete. The consequence was dropping native macOS and Linux support, though macOS builds were planned via WineBottler and Linux users would configure WINE themselves. The Skymu subreddit at old.reddit.com/r/skymu was also set up around this time, along with an early look at the services Skymu planned to support.

### Jan 20

The plugin architecture was confirmed working.

### Jan 23

A plugin development guide was published to the Skymu subreddit wiki, to be usable once the open source repo went public.

### Jan 24 - 25

Two-factor authentication issues with Discord began. Users without 2FA enabled were finding their accounts getting flagged. Token login was introduced as a workaround: entering `$TOKEN` in the username field and a Discord token in the password field. The Skymu Wiki also launched on Reddit.

Separately, a discussion happened about a planned Skymu server for tracking global user counts and ideas around P2P file sharing between Skymu clients. The file sharing idea was shelved over concerns about bad actors.

### Jan 26

patricktbp (nt5.1) shared news of a related project: Bluewire, a recreation of Facebook circa Q4 2010, with potential for collaboration with Skymu.

### Jan 29

A community member, hubaxe, introduced Notifications roles to the Discord server to avoid pinging everyone. The roles were: Skymu Notifications (for Skymu updates) and a secondary role for related projects.

On the development side, the project moved to .NET Core with a P/Invoke wrapper generated for the Windows native menu. It then moved to .NET Standard, and then back to .NET Framework 4.6.1 later the same day to resolve build issues. Messages were working by end of day.

### Jan 30

Discord tightened restrictions on third-party clients. Successful logins without 2FA risked temporary message blocks. Users were advised to log in only using a Discord token, and the team stated they would not be responsible for any account actions from using the standard login flow.

## February 2026

### Feb 10 - The Near-Death and Return

External drama caused both perfídìous and patricktbp to announce they were leaving the project. The last build released at the time, Skymu Zion Zabaione, came with fixes for a long-standing WebSocket bug, profile display, login speed, and a critical crash. A 32-bit follow-up, Skymu Zion Zabaione 32 BIT, ran on Windows XP with a single core and reduced memory usage.

Later that same day, perfídìous reversed the decision. Skymu was not dead, but development would be slower and the server would be refocused on people actually interested in the project, with no more mass member funneling. patricktbp's departure was clarified as being from the Discord server, not the project itself.

### Feb 11

perfídìous clarified the new pace: maintainer mode. Builds would only come faster if there was genuine community enthusiasm for it.

### Feb 12

Two builds shipped:

**Skymu Alverstone Licorice**
- Added sign out option
- Revamped auto-login: now uses the first plugin with saved credentials rather than always trying the first loaded plugin

**Skymu Alverstone Mille-Feuille**
- Fixed a critical crash on corrupt login data
- Matrix plugin: embedded images, reply functionality, typing indicator, sign out bug fixes, clickable text (e.g. mentions)
- Notification window changed from orange to blue

### Feb 13

A busy day. WhatsApp support was the headline, with confirmation arriving in the early morning hours of Feburary 14.

**Skymu Alverstone Napoleon Cake**
- Working emoji picker
- Fixed message text box placeholder bug
- Improved memory usage and emoji collection
- Image emojis displayed in the message box
- Ability to send emoji-only messages (no text required)

**Skymu Alverstone Oreo**
- Greatly improved emoji animation performance
- Configurable emoji animation speed (FPS) setting
- Animated image emojis and Markdown formatting in notification bubbles

The server recovered to 260 members after losing around 8 people during the drama.

**Skymu Alverstone S'more**
- Experimental WhatsApp protocol support
- QR code login support (for WhatsApp)
- Fixed two-factor authentication login bug

**Skymu Alverstone Tiramisu**
- Fixed several WhatsApp login bugs

**Skymu Alverstone Pastry**
- Fixed emoji animation stopping in the picker after closing and reopening
- Fixed emoji being appended to the end of text instead of inline
- Fixed newlines not being respected
- Implemented a WebView browser for the Skype Home tab, currently loading DOOM
- Vertically centered emojis in messages and the message box

**Skymu Alverstone Quarkbällchen**
- Much better version of embedded DOOM
- Enable or disable notifications
- Change notification bubble color to orange

**Skymu Alverstone Rosca de Reyes**
- Revamped options menu with new and edited options
- Made experimental dark theme work again
- Fixed message box placeholder not updating when switching chats

**Skymu Gussy Evilkittie**
- Theme selection added
- Client now shows an exception dialog instead of crashing outright, very useful for debugging

Additional options were added in a further build later that day.

### Feb 15

Beginning with Breithorn Apfelstrudel, builds started getting proper release tags on GitHub.

**Skymu Breithorn Apfelstrudel** (tag: 1)
- Added auto-updater, accurate to Skype
- Code cleanup
- Modified some options in the preferences menu

Followed by rapid patch releases:

- **Breithorn Banana Split** (tag: 2) - Fixed a critical login bug
- **Breithorn Chocolate Cake** (tag: 3) - Fixed the updater, builds now distributed as .zip
- **Breithorn Donut Supreme** (tag: 4) - Changed user agent string from "SkymuUpdater" to "Skymu-Updater"
- **Breithorn Egg Yummy** (tag: 5) - Fixed installer displaying file size unit as KB instead of MB
- **Breithorn Fried Ice Cream** (tag: 6) - Implemented the Check for Updates menu item, no longer requiring a restart to check

Also on Feb 15, two notable development directions were announced:

First, **Skype database compatibility**: Skymu databases would be compatible with Skype message database reader software, and old Skype databases would be readable in Skymu. This was confirmed working the same day.

Second, **Skype language file support**: Skymu would adopt Skype's `.lang` format, meaning any language file exported from Skype 5.10 could be dropped into Skymu's Languages directory. 16 languages were available at launch. Users were advised not to edit mentions of "Skype" in language files since Skymu handles branding substitution automatically.

**v0.1.8 - Breithorn Ice Cream**
- Language switching added (16 languages at launch)
- Static "Skymu" branding removed from updater
- Update dialog shown as a dialog instead of a window
- Icons replaced with exact Skype equivalents
- Tray icon changes with your status
- Default list delimiter changed to bullet
- Fixed force orange notifications setting
- Fixed different era themes breaking the menu bar

### Feb 16

A new developer, jim, joined the Skymu Team.

### Feb 17

Credential storage was reworked to use the Windows Credential Manager, the modern and recommended approach since Windows Vista. The change was made with future features in mind: multiple saved sessions per plugin and switchable user accounts. The old credentials were stored in the Windows Registry at `HKEY_CURRENT_USER\Software\Skymu\Credentials`, encrypted with DPAPI. Users had to log in again after updating. WINE compatibility was flagged as uncertain.

### v0.1.13 - Breithorn Nutella Waffle (Feb 18)

- Added context menu to set Skype Status (omega)
- Buttons now automatically size to text, useful for alternative languages (jim)
- Menu Bar items accurately sized
- Credential storage moved to Windows Credential Manager
- Numerous accuracy fixes
- Login bugfixes

### v0.1.14 - Breithorn Oreo Waffle Cake (Feb 19)

- You can now set your status from within the app by clicking the status icon
- Message sending animation while a message is sending
- Deleted messages now properly delete
- Various cleanup changes

Beta tester applications reopened via the Beta Application Scouting & Experimentation Division around this time.

### Week of Feb 21 - The Road to v0.2

patricktbp had reverse-engineered the Discord QR code login system for another client project. perfídìous ported the code from patricktbp's Windows Phone implementation to Skymu. By the afternoon of February 21, Discord QR code login was working and users no longer needed a token to sign in to Discord.

Also on February 21, an opt-in accuracy setting was added for dynamic sidebar tabs, replicating Skype 5.5.x through 5.10.x behavior where the selected tab took up most of the sidebar width and unselected tabs were fixed at 32px. Disabled by default due to being considered visually unappealing.

### v0.2.0 - Chamonix Applesauce (Feb 21)

A major release. The headline feature was server support. Many other features accumulated across the v0.1.x cycle shipped alongside it: theming, multiple languages, settings, image viewing, QR code login, status updating, auto-updater, autorun, encrypted credential storage, complete window border support, Skype Sounds, notifications, group chat support, three new plugins, a new logo, and a new API.

### v0.2.1 - Chamonix Banana Epicness (Feb 22)

A cybersecurity analyst, ep.ic.ne.ss, reviewed the code and found several vulnerabilities and inefficiencies. This build addressed them:

- Removed the already-dead Wormhole code
- Added an 'experimental' warning to the XMPP plugin
- Replaced regex Markdown parsing with Markdig, fixing broken Markdown and improving performance
- Added warnings for phishing-style masked Markdown links where the displayed URL differs from the actual destination

Shortcode emoji support was also added around this time.

### 300 Members (Feb 22)

The Skymu Discord server hit 300 members. Looking back at what had changed since 200 members: the project almost died, came back, gained a new developer, got an expert code review, and shipped a long list of features including theming, languages, servers, image viewing, QR login, status updating, auto-updater, autorun, credential storage, window borders, Skype Sounds, notifications, group chat, new plugins, a new logo, and more.

### Slowing Down (Feb 22)

With the project in a stable and mature place, perfídìous announced a deliberate slowdown in build frequency to focus on real-life commitments, intending to let the community grow and manage itself.

### The Grand Skymu Olympics (Feb 24 - Feb 26)

A community event in the spirit of the Winter Olympics. Members had 3 days to submit mockups or concepts for anything Skymu related. The winner would have a future build named after them. The winner was Wineliko, for the submission "Complete Skymu Unread and Server Concept," and they were awarded the Herald Order of the Skymu Champion honor.

### Feb 25 - 27

- Collapsible channels and channel type icons were added
- Notifications were made entirely accurate to classic Skype behavior
- Community polls were held to decide the final colors for channel type icons. Final choices: light blue for text channels, dark blue for announcements and forums, dark green handset for voice channels. Credit to Xaero for designing the announcements, forum, and speaker icons

### v0.2.2 - Chamonix Fried Ice Cream (Feb 27)

Released with the finalized channel icon colors, new emojis, and other improvements.

### Late February (Feb 28 - Mar 1)

- The Skymu website was updated with download links and a Discord invite at skymu.app
- The Skymu Wiki was migrated off Reddit to the website at skymu.app/wiki
- Call sounds now play in Skymu