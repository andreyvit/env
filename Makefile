.PHONY: karabiner-elements brew gems npm python

help:
	@echo "make preinstall-mac mac install-mac"
	@echo "make preinstall-linux linux"
	@echo ""
	@echo "NOTE:"
	@echo ""
	@echo "* Preinstall phases will require manual intervention."
	@echo "* As soon as 1Password is installed, configure it and save ssh key."
	@echo "* See README-Setup.md for manual configuration steps."
	@echo ""

preinstall-mac: preinstall-env-symlink preinstall-brew
preinstall-linux:

mac: common sublime-symlink sublime-packages xcode hammerspoon karabiner-elements
linux: common
common: zshconfig sshconfig gitconfig gemconfig psqlrc tmuxconf emacsconfig

install-mac: install-brew install-mas install-common
install-common: install-gopkg

preinstall-env-symlink:
	test -d ~/env || ln -s ~/Library/'Mobile Documents/com~apple~CloudDocs/env' ~/

preinstall-brew:
	which brew || /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	grep /opt/homebrew/bin /etc/paths || { echo "*** Manually prepend /opt/homebrew/bin to /etc/paths (probably after /usr/local/bin but before the rest) ***"; exit 1; }

zshconfig:
	rm -f ~/.zshrc ~/.zshenv
	ln -s ~/env/config/zshenv ~/.zshenv
	ln -s ~/env/config/zshrc ~/.zshrc

sshconfig:
	mkdir -p -m 700 ~/.ssh
	mkdir -p -m 700 ~/.ssh/control
	rm -f ~/.ssh/config
	ln -s ~/env/config/ssh-config ~/.ssh/config

gitconfig:
	rm -f ~/.gitconfig
	ln -s ~/env/config/gitconfig ~/.gitconfig

gemconfig:
	rm -f ~/.gemrc
	ln -s ~/env/config/gemrc ~/.gemrc

psqlrc:
	rm -f ~/.psqlrc
	ln -s ~/env/config/psqlrc ~/.psqlrc

tmuxconf:
	rm -f ~/.tmux.conf
	ln -s ~/env/config/tmux.conf ~/.tmux.conf

emacsconfig:
	rm -f ~/.emacs
	ln -s ~/env/config/emacs ~/.emacs

xcode:
	mkdir -p ~/Library/Developer/Xcode/UserData/

	rm -rf ~/Library/Developer/Xcode/UserData/CodeSnippets
	ln -s ~/env/XcodeUserData/CodeSnippets ~/Library/Developer/Xcode/UserData/

	rm -rf ~/Library/Developer/Xcode/UserData/FontAndColorThemes
	ln -s ~/env/XcodeUserData/FontAndColorThemes ~/Library/Developer/Xcode/UserData/

	rm -rf ~/Library/Developer/Xcode/UserData/KeyBindings
	ln -s ~/env/XcodeUserData/KeyBindings ~/Library/Developer/Xcode/UserData/

sublime-symlink:
	rm -rf ~/env/bin/subl
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/env/bin/

sublime-packages:
	mkdir -p ~/"Library/Application Support/Sublime Text/Packages"
	rm -rf ~/"Library/Application Support/Sublime Text/Packages/User"
	ln -s ~/env/Sublime/User ~/"Library/Application Support/Sublime Text/Packages/User"

hammerspoon:
	rm -rf ~/.hammerspoon
	ln -s ~/env/config/hammerspoon ~/.hammerspoon

karabiner-elements:
	mkdir -p  ~/.config/karabiner/
	rm -f  ~/.config/karabiner/karabiner.json
	ln -s ~/env/config/karabiner.json ~/.config/karabiner/karabiner.json

retired-kwm:
	rm -rf ~/.kwm
	ln -s ~/env/config/kwm ~/.kwm

retired-itunes:
	rm -rf ~/Library/iTunes/Scripts
	mkdir -p ~/Library/iTunes
	ln -s ~/env/iTunesScripts ~/Library/iTunes/Scripts

install-brew:
	# most important
	brew install rsync
	brew install syncthing
	brew services start syncthing
	brew install --cask 1password
	brew install --cask 1password-cli
	brew install mas
	brew install --cask hammerspoon
	brew install --cask secretive
	brew install --cask maestral
	brew install --cask keyboard-maestro
	brew install --cask sublime-text
	brew install --cask sublime-merge
	brew install --cask iterm2
	brew install --cask hey
	brew install --cask rectangle-pro
	brew install --cask setapp
	brew install --cask transmit
	brew install --cask mullvadvpn
	brew install --cask zoom
	brew install --cask telegram
	brew install --cask dash
	brew install --cask nvalt
	brew install --cask workflowy
	brew install --cask loom
	brew install --cask vivaldi
	brew install --cask battery
	brew install --cask mullvad-browser
	brew install --cask kindle
	brew install raycast
	# core dev tools
	brew install atuin
	brew install fzf
	brew install zoxide
	brew install mosh
	brew install go
	brew install node
	brew install direnv
	brew install pt
	brew install watch
	# various tools
	brew install wget
	brew install autojump
	brew install figlet
	brew install up
	brew install cloc
	brew install rlwrap
	brew install icdiff
	brew install s3cmd
	brew install tree
	brew install awscli
	brew install virtualenv
	brew install cocoapods
	# brew install jq
	# brew install hub
	# brew install swiftlint
	# brew install heroku/brew/heroku
	# casks
	brew install --cask arq
	brew install --cask asana
	brew install --cask daisydisk
	brew install --cask keyboard-cleaner
	brew install --cask hex-fiend
	# brew install --cask visual-studio-code
	brew install --cask hazel
	brew install --cask ngrok
	brew install --cask sketch
	brew install --cask textexpander
	brew install --cask sf-symbols
	brew install --cask transmission
	brew install --cask optimage
	brew install --cask trezor-suite
	brew install --cask omnioutliner
	# brew install --cask krisp

	# run last because this requires ssh key when accessing GitHub
	brew install --cask homebrew/cask-fonts/font-jetbrains-mono
	brew install --cask homebrew/cask-fonts/font-ia-writer-duo
	brew install --cask homebrew/cask-fonts/font-ia-writer-mono
	brew install --cask homebrew/cask-fonts/font-ia-writer-quattro

	# large downloads
	brew install --cask android-studio

	brew tap tinygo-org/tools
	brew install tinygo

install-mas:
	mas install 803453959      # Slack
	mas install 406056744      # Evernote
	mas install 1388020431     # DevCleaner
	mas install 1006087419     # SnippetsLab
	mas install 775737590      # iA Writer
	mas install 488764545      # The Clock
	mas install 412155298      # Nag

	mas install 1365531024     # 1Blocker
	mas install 1188020834     # OverPicture
	mas install 1160374471     # PiPifier
	mas install 1376402589     # StopTheMadness
	mas install 1569813296     # 1Password for Safari

	mas install 1489816366     # Mic Drop — mute
	mas install 1508732804     # Soulver

	# mas install 1278508951     # Trello
	# mas install 904280696      # Things
	# mas install 961632517      # Be Focused Pro
	## apple
	mas install 497799835      # Xcode
	mas install 1289583905     # Pixelmator Pro
	mas install 409201541      # Pages
	# mas install 409183695      # Keynote
	# mas install 408981434      # iMovie
	# mas install 682658836      # GarageBand
	# mas install 634148309      # Logic Pro X
	## microsoft
	# mas install 823766827      # OneDrive
	mas install 1295203466     # Microsoft Remote Desktop
	# mas install 462054704      # Microsoft Word
	# mas install 462058435      # Microsoft Excel
	# mas install 462062816      # Microsoft PowerPoint
	# mas install 784801555      # Microsoft OneNote
	## games/entertainment
	# mas install 1141323850     # C. Anatomy 2021
	# mas install 1464649839     # Butter Royale
	# mas install 1489275350     # Crossy Road Castle
	mas install 1541482816     # PSWD
	mas install 482898991      # LiveReload
	mas install 1388020431     # DevCleaner
	mas install 1057705278     # ColorSquid — mix colors
	mas install 960391457      # BayIcons
	mas install 1296180121     # Iris
	# mas install 1176895641     # Spark
	mas install 556381974      # IconFly
	mas install 867814185      # Acana QR Code Generator
	mas install 1485436674     # A Companion for SwiftUI
	mas install 640199958      # Developer
	mas install 929960914      # Red Hot Timer
	# mas install 1380446739     # InjectionIII
	mas install 452840086      # Receigen
	mas install 409203825      # Numbers
	mas install 539188678      # Unique Code Generator
	mas install 1091189122     # Bear
	mas install 1153157709     # Speedtest
	mas install 905953485      # NordVPN

install-gopkg:
	go install github.com/cortesi/modd/cmd/modd@latest
	go install golang.org/x/tools/gopls@latest
