# Skype Documentation, v5.0 - v5.10

Skype changed quite a bit throughout version 5 and there is sparse documentation for those changes. Here is our attempt to summarize everything we've learned so far and what changed in the span of this Skype era.

## Calling UI

- The 'action bar' (where the End Call, unmute buttons etc were) was a skeuomorphic pill from Skype 5.0 to 5.3. The buttons had text near them which would disappear if the window wasn't very wide.
- In Skype 5.5, the action bar was completely revamped. The text was completely removed, the pill was flattened and refined, the calling UI background was changed, and the pill now became an end-to-end rectangle if the window wasn't very wide.
- Sometime in late Skype 5.5 or Skype 5.6, the window background was changed once again; this layout would persist until late Skype 6 or even Skype 7.

## Skype Home

- Introduced as a feature in Skype 5.0, located in %APPDATA%/Skype/shared_html until Skype 5.3.
- Changed to be very Facebook-integrated from Skype 5.5 onwards.

## Notifications

- Blue notifications were system messages, orange notifications were chat messages or status updates.
- Message notifications had quotation marks around them for text.
- Base design remained unchanged until Skype 8.

## Sidebar

- The 'Add a contact' button that had existed from Skype 5.0 - 5.2 was revamped in Skype 5.3 to look different; a Create group button was also added alongside it.

## Accessing the user interface

- The user interface of Skype can be triggered by using Process Hacker and setting tskMainForm and all its children to visible. This is a 'lobotomized' view and is unstable. The farther back you go, the more stable this exposed form is; Skype 5.0 has almost no crashes, while Skype 5.9 crashes repeatedly while trying to interact with the form.

## Login screen

- From Skype 4 to Skype 5.3, the native login screen was used.
- In Skype 5.5 the login screen was redesigned to be a 'web app'. Its resources can be found at %LOCALAPPDATA%/Skype.

## Localization

- Skype used its own language files to localize strings. If a string was missing, it would fall back to English. You could export and import langauge files using the Language File Editor.
- The web parts of Skype, like the new login screen and Skype Home, used different .json language files.

## Chat window

- From Skype 5.0 to 5.3, the chat topbar had only buttons with text, but in Skype 5.5 this bar was simplified to include two icon-only buttons at the end and consolidate file sharing/contact adding into the 'Add' button.

## Database

- Skype, unlike many other messaging programs, and like WhatsApp, used its local database as the authorative source of message history. Later on, Skype added the chat synchronization feature along with a remote_id column in the database. 

## Data structure

- The %APPDATA%\Skype folder's contents would look something like this:
- [dir] shared_html (Skype Home)
- [dir] shared_httpfe (httpfe protocol .db)
- [dir] shared_dynco (?)
- shared.xml (for metadata, global options, etc)
- [dir] skype_user (replace with your actual Skype Name)

- The hypothetical skype_user folder would look like this:
- config.xml
- main.db
- httpfe
- voicemail (for voicemails)
- chatsync (for message synchronization)
- bistats.db (?)
- dc.db (?)
- griffin.db (?)
- keyval.db (?)

- config.xml would contain per-user configuuration, including a field called Credentials3 (or Credentials2, etc) that contained the hash of your password, decrypted using DPAPI and a blob saved in the registry for auto sign in.

## User interface configuration

- From screenshots, it seems that Skype had two user interface modes.
- The first was the 'rich' mode, where the window changed colors based on activation state, and the custom window bar and menu bar theme were used.
- The second was the 'native' mode, which used a lighter shade of blue, didn't change colors, used the native window bar and did not try and theme the menu bar.
- It is unclear whether this was an option that you could toggle in Skype's settings or not.
- In addition, there seemed to be a Default view / Compact view option (this was toggleable in the settings) for the contact list. Compact view would make it look like the recents list.

## Facebook (Flamingo)

- Skype 5 was notable for introducing Facebook integration, heavily expanded on in Skype 5.5, which added a Facebook tab to the sidebar and redesigned Skype Home to be based around your Facebook timeline (while removing the dedicated Facebook tab next to the Skype Home tab. In Skype 5.11, the Facebook sidebar tab was removed.

## The Flattening

- Soon after Microsoft bought Skype, they flattened the UI in version Skype 5.11, ostensibly to align with the Windows 8 Metro aeathetic.