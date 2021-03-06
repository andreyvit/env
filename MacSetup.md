# Setting Up A New Mac


## Step 1. Get Started

Generate a private key:

	ssh-keygen -t rsa -b 4096 -C 'andreyvit@imac+2016jun'

Rsync Dropbox from another computer:

	ssh andreyvit-mbp.local
	# add the new public key to authorized_keys
	rsync -azrv andreyvit-mbp.local:/Users/andreyvit/Dropbox/ ~/Dropbox

Install Dropbox, log in.

Open System Preferences → Keyboard → Modifier Keys, remap Caps Lock to Control


## Step 2. Install Mac App Store apps

(skip configuration instructions for now)

### Most important

- iA Writer
	- after installation, copy this guide into iA Writer for easy updating
- 1Password 
	- install browser extensions in Safari and Chrome
- Evernote
	- Preferences
		- General → “Show note counts in sidebar”
		- Shortcuts (clear the others):
			- Quick Note: ⌃⇧⌘N
			- Clip Rectangle or Window: ⌃⇧⌘R
			- Search: ⌃⇧⌘E
	- right-click Notebooks, choose “Show Notebook List”
- Day One

### Productivity

- Alinof Timer
- Tictoc
	- Preferences:
		- Launch at Login
		- Shortcut: F18 (need to configure Seil before you can do this)
- Soulver
- Stampnote
- Firehose Chat
	- Preferences: disable “Play sound when visitor arrives on your site”
- Coffitivity
- CloudApp
	- log in

### System Utilities

- Shush
	- Preferences:
		- enable “Start Shush at login”
		- enable “Double-tap hotkey toggles behavior”
		- disable “Play audio cues”
- Palua
	- Preferences:
		- enable “Launch at Startup”
		- “Enable Smart Mode”
		- use Function mode for these apps:
			- Xcode
- Moom
	- Preferences → General:
		-	“Treat drawers as part of their parent windows”
		- “Launch automatically on login”
		- disable “Show settings on launch”
		- Run as: “faceless application”
	- Preferences → Mouse:
		- “Enable Move & Zoom grid” with: 16 x 8 cells
		- “Enable access to custom controls”
	- Preferences → Keyboard:
		- Trigger keyboard control with hot key: §
		- “Repeat to show grid”
		- Arrow keys: “Move & Zoom to Half Screen”
		- Arrow keys with Command: “Move to Other Display”
		- Auto-dismiss after: “Move & Zoom”, “Other actions”
	- Preferences → Custom:
		- Define window sizes using: 16 x 8 cells
		- Header: "Primary + Secondary"
			- Move & Zoom, hotkey 1: left  side of 10:6 split (10x8)
			- Move & Zoom, hotkey 2: right side of 10:6 split (6x8)
		- Header: "Secondary + Primary"
			- Move & Zoom, hotkey 3: left  side of 6:10 split (6x8)
			- Move & Zoom, hotkey 4: right side of 6:10 split (10x8)
			- Move & Zoom, hotkey R: top-right (10x6) - above terminal
			- Move & Zoom, hotkey F: bottom-right (10x2) - for terminal
		- Header: "4 Up"
			- Move & Zoom, hotkey Q: top-left quarter (8x4)
			- Move & Zoom, hotkey A: bottom-left quarter (8x4)
			- Move & Zoom, hotkey W: top-right quarter (8x4)
			- Move & Zoom, hotkey S: bottom-right quarter (8x4)
		- Header: "3x2"
			- Move & Zoom, hotkey P: top-left (6x4)
			- Move & Zoom, hotkey ;: bottom-left (6x4)
			- Move & Zoom, hotkey [: top-middle (6x4)
			- Move & Zoom, hotkey ': bottom-middle (6x4)
			- Move & Zoom, hotkey ]: top-right (6x4)
			- Move & Zoom, hotkey \: bottom-right (6x4)
		- Header: “Special”
			- Move & Zoom, hotkey M: 12x8 centered (for messaging apps)
- DaisyDisk
- The Unarchiver
- WiFi Explorer
- Authy Bluetooth

### Writing

- Marked (no longer on sale)

### Reading

- Kindle
	- log in
- Pocket
	- log in
- Reeder 2
	- add Feedly account (log in with Google)

### Images/photos

- GIF Brewery
- Composure

### Social

- Tweetbot
- Twitter
- Textual 5
- Telegram
	- log in
	- turn off “Notification icon”

### Development Tools

- RB App Checker Lite
- CodeRunner
- ColorSchemer Studio
- Receigen
- Dash
	- Launch Dash at login
	- Shortcut: ⌥Space
	- Download docsets:
		- Node.js
		- Grunt
		- Moment.js
		- Express
		- Man Pages
		- Perl
		- Bash
		- Laravel
		- Symfony
		- JavaScript
- Xcode
	- Using Alcatraz, install Xcode plugins:
		- CocoaPods
		- FuzzyAutocomplete
		- Peckham
		- XcodeBoost
		- XcodeWay
	- General → Uncheck “Show live issues”
	- Text Editing → Check “Show: Line numbers”
	- Text Editing → Uncheck “Code folding ribbon”
	- Text Editing → Fonts & Colors → select “Magnificient” color scheme
	- Text Editing → Indentation → Tab key: “Indents always”
	- Text Editing → Indentation → Indent wrapped lines by: 8
	- Accounts: set up all accounts
	- Downloads:
		- download iOS simulators
		- download iOS and Mac docsets
		- enable automatic updating
	- Behaviors:
		- Disable all view actions in all standard behaviors
		- Coding (⌘F1)
			- Show navigator: Project navigator
			- Hide debugger
			- Hide utilities
			- Show editor: Standard Editor
		- Design (⌘F2)
			- Hide navigator
			- Hide debugger
			- Hide utilities
			- Show editor: Standard Editor
		- Design Full Screen (⌘⌥F2)
			- Hide navigator
			- Hide debugger
			- Hide utilities
			- Show editor: Standard Editor
		- Design + Code (⌘F3)
			- Hide navigator
			- Hide debugger
			- Hide utilities
			- Show editor: Assistant Editor
		- Debugging (⌘F4)
			- Show navigator: Debug navigator
			- Show debugger with: Variables & Console
			- Hide utilities
			- Show editor: Standard Editor
		- Full Screen Console (⌘⌥F4)
			- Hide navigator
			- Show debugger with: Console
			- Hide utilities
			- Hide editor
		- Issues (⌘F10)
			- Show navigator: Issue navigator
			- Hide debugger
			- Hide utilities
			- Show editor: Standard Editor
			- Navigate to: first new issue
		- Testing (⌘F9)
			- Show navigator: Test navigator
			- Hide debugger
			- Hide utilities
			- Show editor: Standard Editor
	- Key bindings:
		- Refactor - Rename ⌃R
		- Show Document Items ⌘O
		- Jump to Next Counterpart ⌃Q
		- Move Line Up ⌥P
		- Move Line Down ⌥N
		- Show Document Outline ⌃O
		- Select Line ⌃L
		- Select Word ⌃W


## Retired

- Things
	- log in via 1Password
	- enable “Quick Entry with Autofill” shortcut


## Step 3. Install Other Apps

- [GitHub for Mac](https://mac.github.com)
	- start downloading repositories you’re interested in (unless you’re going to rsync them from another Mac)
- [Homebrew](http://brew.sh)
	- triggers installation of Apple command-line tools
- [Sublime Text 3](http://www.sublimetext.com/3)
	- use “Help → Enter License” to add a license from 1Password
	- `ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin`
	- wait until you run `rake sublime` from env
	- install [Package Control](https://packagecontrol.io/installation)

System automation:

- [Keyboard Maestro](http://www.keyboardmaestro.com/main/)
	- run, enable Accessibility access
	- File → Start Syncing
	- enter a licence from 1Password
	- Preferences:
		- check “Launch engine at login”
		- uncheck “Include Applications in Status Menu”
- [TextExpander](http://smilesoftware.com/TextExpander/download.html)
	- run, enable Accessibility access
	- enter a licence from 1Password
	- enable Dropbox syncing in preferences
- [Karabiner](https://pqrs.org/osx/karabiner/) & Seil (under Additional Apps)
	- System Preferences → Keyboard → Modifiers → Caps Lock: No Action
	- Seil:
		- change Caps Lock to F19 (keycode 80)
		- Other Keys → change Escape to F18 (keycode 79)
		- Other Keys → change Control_L to F17 (keycode 64)
		- Other Keys → change Control_R to F17 (keycode 64)
		- Keys on non-Apple keyboards --> Enable Application Key
	- Karabiner:
		- F17 to Control + Shift + Option
		- PC Insert to §
		- F13 to Fn
		- Num Lock to Cmd-W in web browsers
		- Change Fn Key → Fn+{letter,number,symbol} to Hyper (⇧⌃⌥⌘)
		- Change F1..F19 → Functional Keys to F1..F12 → (F1 .. F9)
		- Change F1..F19 → Fn+F1..F12 to Functional Keys → (F1 .. F9)
		- Custom Shortcuts → Change F19 to Escape and Control
		- For PC Users → Change Application Key to Option_R
		- For Russian → Command_L for English; Command_R for Russian
- [Shortcat](https://shortcatapp.com/download)
- [Hazel](http://www.noodlesoft.com/hazel.php)
	- enter a licence from 1Password
	- Desktop: http://cl.ly/image/1D0o2538342B
	- Downloads: http://cl.ly/image/3Z0m0e040f1d
	- Trash: http://cl.ly/image/1p3O332I071e
	- XXAttic: move to XAttic (options: copy folder structure from monitored folder)
	- XXPermanent: move to XPermanent (options: copy folder structure from monitored folder)
	- Turn off all Hazel notifications in Notification Center preferences

Web browsers:

- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
	- log in
	- Chrome → Hide Notifications Icon
- [Google Chrome Canary](https://www.google.com/chrome/browser/canary.html)
	- log in
	- Chrome → Hide Notifications Icon
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Firefox Beta](https://www.mozilla.org/en-US/firefox/channel/)
- [Opera](http://www.opera.com)
- [Opera beta](http://www.opera.com/computer/beta)
- [WebKit Nightly](http://nightly.webkit.org)

Productivity:

- [f.lux](https://justgetflux.com)
	- run and let it use the current location
- [Transmit](http://panic.com/transmit/)
	- enter a licence code from 1Password
	- enable favorites sync via Dropbox (see pw in 1Password)
	- Files
		- Double click: Edit in External Editor
		- Custom Editors
			- Add Sublime Text for *
- [Clarify](http://www.clarify-it.com/download)
- [You Need A Budget](http://www.youneedabudget.com/download)
	- open the Family Budget
- [OmniOutliner](https://www.omnigroup.com/omnioutliner)

Utilities:

- [AirServer](http://www.airserver.com/Download)
- [iStat Menus](http://bjango.com/mac/istatmenus/)
- [Arq](http://www.haystacksoftware.com/arq/)
	- disable “Show notification after each successful backup”
	- configure backups to h1
		- dev
		- Documents
		- Pictures
		- Dropbox
		- XAttic
		- XPermanent
		- XXAttic
		- XXPermanent
- [Bartender](http://www.macbartender.com)
	- hide all items, except:
		- Tictoc
		- Shush
		- Volume
		- Wi-Fi
		- Input Source
		- Battery
		- Clock

Web services:

- [Skype](http://www.skype.com/en/download-skype/skype-for-mac/downloading/)
	- Preferences → General:
		- disable “Show status in menu bar”
		- move read conversation to History after: One week
		- Automatically accept incoming files
		- Open safe files after receiving
	- Preferences → Messaging:
		- Emoticons: Don't show
	- Preferences → Notifications:
		- disable “Play sounds related to messages”
		- disable “Play sounds related to contact availability
		- in Notification preferences, set alert style to None
	- Preferences → Audio/Video:
		- disable “Automatically adjust microphone settings”
	- Preferences → Advanced:
		- “Display technical call information”

Video:

- [MPlayerX](http://mplayerx.org/download.html)
- [Tranmission](https://www.transmissionbt.com/download/) (BitTorrent client)

Development:

- [Alcatraz](http://alcatraz.io) (Xcode plugin manager)
- [Postgres app](http://postgresapp.com)
	- then `ln -s /Applications/Postgres.app/Contents/Versions/9.4/bin/{psql,pg_dump,pg_restore} /usr/local/bin/`

Other:

- Install [JDK 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- Install [iBank 2 USB token drivers](https://ibank2.ru)
	- run the banking applet once
	- enable Unsafe java execution for the banking applet in Security preferences of Safari
- [Minecraft](https://minecraft.net/download)
- [Steam](http://store.steampowered.com/about/)
- [Parallels Desktop](http://www.parallels.com/products/desktop/download/)
- ScreenFlow — unzip from Dropbox → Downloaded Apps (cannot find a download link on the site)
	- enter license code from 1Password


## Step 4. Configure System Preferences

General:

- Sidebar icon size: Small
- Show scroll bars: When scrolling
- uncheck: “Close windows when quitting an app”
- Recent items: 50

Desktop & Screen Saver:

- Desktop background
	- add folder “Dropbox → Documents → Desktop Backgrounds”
	- use the current vision board image
	- mode: “Center”
- Screen saver
	- Arabesque
	- enable “Show with clock”
	- Start after: Never
	- Hot Corners...
		- bottom left: “Start Screen Saver”
		- bottom right: “Put Display to Sleep”
		- top right: “Disable Screen Saver”

Mission Control:

- disable all shortcuts

Language & Region:

- Add “English (U.S.)” as a primary language
- Add Russian as a secondary language at the bottom of the list, pick “Russian - PC” keyboard layout when asked
- The list of preferred languages should read: English (US), English, Russian
- Region: United States
- First day of week: Monday
- Advanced...
	- Measurement units: Metric
	- Dates:
		- Short: set to “2015-01-05” (aka ISO)

Security & Privacy:

- General:
	- Require password: “5 seconds” after sleep or screen saver begins
- Firewall
	- Turn On
- Spotlight
	- disable “Finder search window keyboard shortcut”

Keyboard:

- “Show Keyboard & Character Viewers in menu bar”
- Spelling → Set up... → only English (US) and Russian
- Uncheck “Use smart quotes and dashes”
- Shortcuts
	- Full Keyboard Access: “All controls”
	- Mission Control
		- Move left a space: ⌃⌘,
		- Move right a space: ⌃⌘.
		- Switch to Desktop 1: ⌥D
	- Services
		- disable Text → “Convert Text to Simplified/Traditional Chinese”
		- disable Internet → “MPlayerX: Open URL”
	- Accessibility
		- disable all checkboxes
	- App Shortcuts
		- Xcode
			- “Copy Method and Function Declarations”: ⌃C
			- “Duplicate Lines”: ⌘D
		- Things
			- “File...”: ⌘S

Trackpad:

- enable “Tap to click”

Mouse:

- enable secondary click
- enable smart zoom
- enable swipe between pages
- disable mission control

Sound:

- enable “Show volume in menu bar”

iCloud:

- check all except for “Mail”

Internet Accounts:

- set up FastMail email, CalDAV and CardDAV (once it's available)
- set up client email accounts
- set up Twitter for @andreyvit, @livereload
- set up Facebook
- set up LinkedIn

Sharing:

- enable Screen Sharing
- enable File Sharing
- enable Remote Login

App Store:

- automatically download and install all updates (should be already checked)
- enable “Automatically download apps purchased on other Macs”

Dictation & Speech:

- Dictionary → Shortcut: Off


### Step 5. Configure System Apps

Finder:

- View → Show Status Bar
- New Finder windows show: home folder
- Preferences → Sidebar
	- uncheck All My Files
	- check the home folder (andreyvit)
- Preferences → Advanced
	- “When performing a search:” → “Search the Current Folder”

Messages:

- Add Jabber account
- disable “Play sound effects”

Safari:

- Preferences → Advanced:
	- Show full website address
	- Show Develop menu

iTunes:

- disable “Notifications: When song changes”


### Step 6. Configure Third-Party Apps

Reorder dock icons:

- Finder
- Terminal
- Messages
- Telegram
- Firehose Chat
- Skype
- iTunes
- Safari
- Google Chrome
- Mail
- YNAB (You Need A Budget)
	- enter license from 1Password
	
- Evernote
- iA Writer
- Things
- GitHub
- Sublime Text
- Xcode
- iPhone Simulator

Configure apps using instructions above while waiting for the items below to complete. Start with Keyboard Maestro, Seil and Karabiner.


## Step 7. Install & Configure Command-Line Tools

Change sudoers (`sudo visudo`) to:

1. Add `NOPASSWD:` to `%admin`:

		%admin  ALL=(ALL) NOPASSWD: ALL

2. Override umask:

		Defaults        umask_override
		Defaults        umask=022

Symlink env from iCloud Drive:

	rsync -azrv andreyvit-mbp.local:~/env/ ~/env

Clone Oh My Zsh:

	git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

Wait for Dropbox to finish syncing Dropbox/env, then:

	ln -s ~/Dropbox/env ~/env
    cd ~/Dropbox/env
    rake config
    rake xcode_user_data
    rake sublime
    make karabiner

Rsync the rest of the data:

	rsync -azrv andreyvit-mbp.local:~/dev/ ~/dev
	rsync -azrv andreyvit-mbp.local:~/dev/neo/r300lafayette/ ~/dev/neo/r300lafayette
	rsync -azrv andreyvit-mbp.local:/Volumes/JetDrive/ ~/JetDrive
	rsync -azrv andreyvit-mbp.local:/Volumes/JetDrive/Images.sparsebundle ~/JetDrive

After command-line tools and Homebrew installation finishes, install packages:

	make brew
	make gems
	make npm
	make cask
	make python


## Step 8. Final Configuration

Tweak notification settings (System Preferences → Notifications) — may need to wait until the first notification comes:

- FaceTime: disable “Play sound”
- Mail: disable “Badge app icon”
- Messages: alert style “None”, disable “Show in notification server”, disable “Play sound”
- Telegram: alert style “None”, disable “Show in notification server”, disable “Play sound”
- HazelHelper: alert style “None”, disable all checkboxes

Enable FileVault.

Enable Time Machine.


## TODO

- BitTorrent Sync
- Adobe Creative Cloud
- ScreenHero
