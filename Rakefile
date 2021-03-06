desc "Install Homebrew"
task :brew do
    sh '/usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"'
end


desc "Install Xcode user data"
task :karabiner do
    # rm -rf ~/'Library/Application Support/Karabiner/'
    sh "ln -s ~/env/Karabiner ~/Library/Application\\ Support/Karabiner"
end

desc "Install Homebrew packages"
task :brewpkg do
    sh 'brew install node'
    sh 'brew install git-extras'
    sh 'brew install autojump'
    sh 'brew install ack'
    sh 'brew install cloc'
    sh 'brew install rlwrap'
    sh 'brew install watch'
    sh 'brew install wget'
end

desc "Install npm"
task :npm do
    sh 'curl http://npmjs.org/install.sh | sh'
end

desc "Install npm packages"
task :npmpkg do
    sh 'npm install -g coffee-script iced-coffee-script express growl jade less stylus redis supervisor'
end

desc "Install Homebrew Cask packages (aka non-Mac App Store apps)"
task :caskpkg do
    sh 'brew cask install sublime-text'
    sh 'brew cask install iterm2'

    sh 'brew cask install google-chrome'
    sh 'brew cask install firefox'
    sh 'brew cask install opera'

    sh 'brew cask install alfred'
    sh 'brew cask install transmit'
    sh 'brew cask install keyboard-cleaner'
    sh 'brew cask install airserver'
    sh 'brew cask install android-file-transfer'
    sh 'brew cask install appcode'
    sh 'brew cask install cakebrew'
    sh 'brew cask install clarify'
    sh 'brew cask install cocoadialog'
    sh 'brew cask install controlplane'
    sh 'brew cask install dash'
    sh 'brew cask install dropbox'
    sh 'brew cask install flux'
    sh 'brew cask install genymotion'
    sh 'brew cask install github'
    sh 'brew cask install hex-fiend'
    sh 'brew cask install joinme'
    sh 'brew cask install keyboard-maestro'
    sh 'brew cask install mamp'
    sh 'brew cask install minecraft'
    sh 'brew cask install mplayerx'
    sh 'brew cask install nvalt'
    sh 'brew cask install omnigraffle'
    sh 'brew cask install omnioutliner'
    sh 'brew cask install omnifocus'
    sh 'brew cask install parallels'
    sh 'brew cask install pckeyboardhack'
    sh 'brew cask install platypus'
    sh 'brew cask install postgres'
    sh 'brew cask install screenflow'
    sh 'brew cask install sourcetree'
    sh 'brew cask install sqwiggle'
    sh 'brew cask install steam'
    sh 'brew cask install transmission'
    sh 'brew cask install vagrant'
    sh 'brew cask install virtualbox'
    sh 'brew cask install vlc'
end

desc "Install iTunes Scripts"
task :itunes do
    sh 'rm -f ~/Library/iTunes/Scripts'
    sh 'mkdir -p ~/Library/iTunes'
    sh 'ln -s ~/env/iTunesScripts ~/Library/iTunes/Scripts'
end

desc "Clone SublimePackages.git"
task :sublime do
    sh 'mkdir -p ~/"Library/Application Support/Sublime Text 3/Packages"'
    sh 'rm -f ~/"Library/Application Support/Sublime Text 3/Packages/User"'
    sh 'ln -s ~/env/Sublime/User ~/"Library/Application Support/Sublime Text 3/Packages/User"'
end

desc "Link backup.conf"
task :backup do
    sh 'rm -f ~/.backup.conf'
    sh 'ln -s ~/env/config/backup.conf ~/.backup.conf'
end

desc "Install everything"
task :all => [:brewpkg, :npmpkg, :sublime, :itunes, :xcode_user_data, :backup]
