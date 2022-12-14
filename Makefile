.PHONY: karabiner ohmyzsh brew gems npm cask python

help:
	@echo "make config-mac"
	@echo "make config-linux"

all: config-mac install-mac
all-linux: config-linux

config-mac: config-all xcode itunes

config-linux: config-all

config-all: zshconfig sshconfig gitconfig gemconfig psqlrc emacsconfig ohmyzsh tmuxconf

install-mac: brew cask mas gems-mac install-all

install-all: gems npm python gopkg

zshconfig:
	rm -f ~/.zshrc ~/.zshenv
	ln -s ~/env/config/zshenv ~/.zshenv
	ln -s ~/env/config/zshrc ~/.zshrc

sshconfig:
	mkdir -p -m 700 ~/.ssh
	rm -f ~/.ssh/config
	ln -s ~/env/config/ssh-config ~/.ssh/config

gitconfig:
	rm -f ~/.gitconfig
	ln -s ~/env/config/gitconfig ~/.gitconfig

gemconfig:
	rm -f ~/.gemrc
	ln -s ~/env/config/gemrc ~/.gemrc

tmuxconf:
	rm -f ~/.tmux.conf
	ln -s ~/env/config/tmux.conf ~/.tmux.conf

psqlrc:
	rm -f ~/.psqlrc
	ln -s ~/env/config/psqlrc ~/.psqlrc

emacsconfig:
	rm -f ~/.emacs
	ln -s ~/env/config/emacs ~/.emacs

karabiner:
	rm -rf  ~/Library/'Application Support'/Karabiner
	ln -s ~/env/Karabiner ~/Library/'Application Support'/

ohmyzsh:
	mkdir -p ~/.oh-my-zsh
	rm -rf ~/.oh-my-zsh/custom
	ln -s ~/env/config/oh-my-zsh-custom ~/.oh-my-zsh/custom

hammerspoon:
	rm -rf ~/.hammerspoon
	ln -s ~/env/config/hammerspoon ~/.hammerspoon

kwm:
	rm -rf ~/.kwm
	ln -s ~/env/config/kwm ~/.kwm

subl:
	rm -rf /usr/local/bin/subl
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/

sublime-packages:
	mkdir -p ~/"Library/Application Support/Sublime Text 3/Packages"
	rm -rf ~/"Library/Application Support/Sublime Text 3/Packages/User"
	ln -s ~/env/Sublime/User ~/"Library/Application Support/Sublime Text 3/Packages/User"

sublime: subl sublime-packages

brew:
	brew install mas
	brew install direnv
	brew install cloc
	brew install rlwrap
	brew install pt
	brew install watch
	brew install wget
	brew install autojump
	brew install icdiff
	brew install s3cmd
	brew install tree
	brew install rsync
	brew install go
	brew install modd
	brew install node
	brew install jq
	brew install hub
	brew install swiftlint
	brew install heroku/brew/heroku
	brew install figlet

gems-mac:
	sudo gem install cocoapods

gems:
	sudo gem install jekyll
	sudo gem install kramdown
	sudo gem install rake
	sudo gem install s3_website
	sudo gem install htty
	sudo gem install activesupport

npm:
	npm install -g coffee-script
	npm install -g iced-coffee-script
	npm install -g express
	npm install -g jade
	npm install -g less
	npm install -g stylus
	npm install -g bower
	npm install -g grunt-cli
	npm install -g gulp-cli

cask:
	brew cask install keyboard-cleaner
	brew cask install hex-fiend
	brew cask install visual-studio-code
	brew cask install iterm2
	brew cask install hazel
	brew cask install homebrew/cask-fonts/font-jetbrains-mono
	brew cask install sublime-merge
	brew cask install ngrok
	brew cask install sketch
	brew cask install textexpander
	brew cask install dash
	brew cask install sf-symbols
	brew cask install transmission
	brew cask install cakebrew

mas:
	mas install 1278508951     # Trello
	mas install 904280696      # Things
	mas install 1141323850     # C. Anatomy 2021
	mas install 1468584562     # Password Generator
	mas install 406056744      # Evernote
	mas install 462058435      # Microsoft Excel
	mas install 1456462087     # All-in-One Messenger
	mas install 1464649839     # Butter Royale
	mas install 682658836      # GarageBand
	mas install 634148309      # Logic Pro X
	mas install 497799835      # Xcode
	mas install 462054704      # Microsoft Word	mas install 482898991      # LiveReload
	mas install 961632517      # Be Focused Pro
	mas install 1388020431     # DevCleaner
	mas install 496437906      # Shush
	mas install 1160374471     # PiPifier
	mas install 1296180121     # Iris
	mas install 1176895641     # Spark
	mas install 1489275350     # Crossy Road Castle
	mas install 823766827      # OneDrive
	mas install 462062816      # Microsoft PowerPoint
	mas install 1006087419     # SnippetsLab
	mas install 556381974      # IconFly
	mas install 867814185      # Acana QR Code Generator
	mas install 1295203466     # Microsoft Remote Desktop
	mas install 1485436674     # A Companion for SwiftUI
	mas install 413965349      # Soulver
	mas install 409201541      # Pages
	mas install 803453959      # Slack
	mas install 640199958      # Developer
	mas install 929960914      # Red Hot Timer
	mas install 784801555      # Microsoft OneNote
	mas install 1380446739     # InjectionIII
	mas install 452840086      # Receigen
	mas install 409203825      # Numbers
	mas install 488764545      # The Clock
	mas install 539188678      # Unique Code Generator
	mas install 1091189122     # Bear
	mas install 408981434      # iMovie
	mas install 409183694      # Keynote
	mas install 1107421413     # 1Blocker

gopkg:
	go get github.com/go-bindata/go-bindata/...

python:
	which pip || sudo easy_install pip
	which virtualenv || sudo pip install virtualenv
	which aws || sudo pip install awscli --ignore-installed six

xcode:
	mkdir -p ~/Library/Developer/Xcode/UserData/

	rm -rf ~/Library/Developer/Xcode/UserData/CodeSnippets
	ln -s ~/env/XcodeUserData/CodeSnippets ~/Library/Developer/Xcode/UserData/

	rm -rf ~/Library/Developer/Xcode/UserData/FontAndColorThemes
	ln -s ~/env/XcodeUserData/FontAndColorThemes ~/Library/Developer/Xcode/UserData/

	rm -rf ~/Library/Developer/Xcode/UserData/KeyBindings
	ln -s ~/env/XcodeUserData/KeyBindings ~/Library/Developer/Xcode/UserData/

itunes:
	rm -rf ~/Library/iTunes/Scripts
	mkdir -p ~/Library/iTunes
	ln -s ~/env/iTunesScripts ~/Library/iTunes/Scripts
