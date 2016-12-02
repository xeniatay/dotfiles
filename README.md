## Configurations for a fresh machine

### Install Evernote (App Store)

### Install xcode and [homebrew](http://brew.sh/)

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"; \
    brew doctor

### Install git

    brew install git

### [Generate ssh key](https://help.github.com/articles/generating-ssh-keys)

**Follow the instructions**

### dotfiles: [version controlled](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

    git clone git@github.com:xeniatay/dotfiles.git; \
    cd dotfiles; \
    ./makesymlinks.sh

### Install [Iterm 2](http://www.iterm2.com/)

**Run the installer**

### Install [Sublime Text 3](http://www.sublimetext.com/3)

**Run the installer**

**Install all tried, tested and loved packages**

*Maybe it's easier to just version control `Installed Packages`?*

    cd ~/Library/Application\ Support/Sublime\ Text\ 3/; \
    git clone git@github.com:xeniatay/st3_packages.git; \
    mv Packages Packages_orig; \
    mv st3_packages Packages

**Install customized version of Vintageous**

    cd ~/Library/Application Support/Sublime Text 3/Packages; \
    git clone git@github.com:xeniatay/Vintageous.git; \
    cd Vintageous; \
    git checkout xeniatay; \
    ./build.sh

*Enable 'subl' command in the terminal and enable press and hold for keys (like using j to scroll downnnn):*

    sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl \
    defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false

[Migrating from ST2 to ST3] (http://wesbos.com/migrating-to-sublime-text-3/)

**Install [Package Control](https://sublime.wbond.net/installation#Manual)**

### zsh

We really just need `xeniatay.zsh-theme`

*Perhaps don't version control the whole dir?*

### [JSCS](https://medium.com/@addyosmani/auto-formatting-javascript-code-style-fe0f98a923b8)

    npm install -g jscs

### [git recent](https://github.com/paulirish/git-recent)
    
    npm install --global git-recent

### Vim

**Plugins**
- [Pathogen](https://github.com/tpope/vim-pathogen)
- [Nerd Tree](https://github.com/scrooloose/nerdtree)
- [Fuzzy Finder](https://github.com/vim-scripts/FuzzyFinder) 

**Themes**
- [Molokai](https://github.com/tomasr/dotfiles/tree/master/.vim/colors)
- [ir\_black](http://toddwerth.com/2011/07/21/the-original-ir_black-for-os-x-lion/)

### Install [IE VMS](http://infoheap.com/run-ie-on-mac-virtualbox/)

:( in the name of cross-browser compatibility

### Todo: 
- Clean up .vimrc, .gvimrc, .zsh-profile, 
- Find a better way to version control Vintageous and Sublime Text 3 so it plays nice with new installs
