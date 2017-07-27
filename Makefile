.PHONY: karabiner ohmyzsh brew gems npm cask python

all: zshconfig sshconfig gitconfig gemconfig emacsconfig ohmyzsh hammerspoon kwm brew gems npm cask python

all-linux: zshconfig sshconfig gitconfig gemconfig emacsconfig ohmyzsh

zshconfig:
    chsh -s /bin/zsh
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

brew:
	brew install        kylef/formulae/swiftenv
	brew install        autoenv
	brew install        git-extras
	brew install        cloc
	brew install        rlwrap
	brew install        watch
	brew install        wget
	brew install        node
	brew install        icdiff
	brew install        youtube-dl
	brew install        s3cmd
	brew install        tree
	brew install        httpie
	brew install --HEAD hub
	brew install        pt
	brew install        mongodb
	brew install        go
	brew tap caskroom/cask
	brew services start mongodb
	# brew install caskroom/cask/brew-cask

gems-mac:
	sudo gem install cocoapods
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


# which swiftenv       || 
# brew list autoenv    || 
# brew list git-extras || 
# which cloc           || 
# which rlwrap         || 
# which watch          || 
# which wget           || 
# which node           || 
# which icdiff         || 
# which youtube-dl     || 
# which s3cmd          || 
# which tree           || 
# brew list httpie     || 
# which hub            || 
# which pt             || 
