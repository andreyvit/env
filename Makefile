.PHONY: karabiner ohmyzsh brew gems npm cask python

all: zshconfig sshconfig gitconfig gemconfig emacsconfig ohmyzsh sublime xcode itunes hammerspoon kwm brew gems gems-mac npm cask python

all-linux: zshconfig sshconfig gitconfig gemconfig emacsconfig ohmyzsh

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
	# brew install kylef/formulae/swiftenv
	brew install go
	brew install direnv
	brew install cloc
	brew install rlwrap
	brew install pt
	brew install watch
	brew install wget
	brew install node
	brew install mongodb
	brew install autojump
	brew install icdiff
	brew install youtube-dl
	brew install s3cmd
	brew install tree
	brew install --HEAD hub
	brew install direnv
	brew tap caskroom/cask
	# brew services start mongodb
	# brew install caskroom/cask/brew-cask

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
	npm install -g supervisor
	npm install -g json
	npm install -g bower
	npm install -g grunt-cli
	npm install -g gulp-cli
	npm install -g http-server

cask:
	brew cask install keyboard-cleaner
	brew cask install android-file-transfer
	brew cask install cocoadialog
	brew cask install hex-fiend
	brew cask install platypus
	brew cask install provisionql

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
