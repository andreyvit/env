desc "Install zsh config"
task :zshconfig do
    sh 'chsh -s /bin/zsh'
    sh 'rm -f ~/.zshrc ~/.zshenv'
    sh 'ln -s ~/env/config/zshenv ~/.zshenv'
    sh 'ln -s ~/env/config/zshrc ~/.zshrc'
end

desc "Install ssh config"
task :sshconfig do
    sh 'mkdir -p -m 700 ~/.ssh'
    sh 'rm -f ~/.ssh/config'
    sh 'ln -s ~/env/config/ssh-config ~/.ssh/config'
end

desc "Install global Git config"
task :gitconfig do
    sh 'rm -f ~/.gitconfig'
    sh 'ln -s ~/env/config/gitconfig ~/.gitconfig'
end

desc 'Install gem config'
task :gemconfig do
    sh 'rm -f ~/.gemrc'
    sh 'ln -s ~/env/config/gemrc ~/.gemrc'
end

desc 'Install Emacs config'
task :emacsconfig do
    sh 'rm -f ~/.emacs'
    sh 'ln -s ~/env/config/emacs ~/.emacs'
end

desc "Install Homebrew"
task :brew do
    sh '/usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"'
end

desc "Install Homebrew packages"
task :brewpkg do
    # sh 'brew install git'
    sh 'brew install node'
    sh 'brew install git-extras'
    sh 'brew install autojump'
    sh 'brew install ack'
    sh 'brew install cloc'
    sh 'brew install platypus'
    sh 'brew install rlwrap'
    sh 'brew install watch'
end

desc "Install npm packages"
task :npmpkg do
    sh 'npm install -g coffee-script iced-coffee-script express growl jade less stylus redis supervisor'
end

desc "Install iTunes Scripts"
task :itunes do
    sh 'rm -f ~/Library/iTunes/Scripts'
    sh 'ln -s ~/env/iTunesScripts ~/Library/iTunes/Scripts'
end

desc "Install all configs"
task :config => [:zshconfig, :sshconfig, :gitconfig, :gemconfig, :emacsconfig]

desc "Clone SublimePackages.git"
task :sublime do
    sh 'mkdir -p ~/"Library/Application Support/Sublime Text 2"'
    sh 'cd ~/"Library/Application Support/Sublime Text 2" && git clone --recursive git@github.com:andreyvit/SublimePackages.git Packages'
end

desc "Install everything"
task :all => [:config, :brew, :brewpkg, :npmpkg, :sublime]
