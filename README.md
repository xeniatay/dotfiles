## Configurations for a fresh machine

### Install [Spectacle](https://www.spectacleapp.com/)

### Install Evernote (App Store)

### Install [1Password](https://1password.com/downloads/mac/)

### Install [Visual Studio Code](https://code.visualstudio.com/)

### Install [Iterm 2](http://www.iterm2.com/)

### Install [Dropbox](https://dropbox.com/install)

### Install xcode and [homebrew](http://brew.sh/)

    # Go to the homebrew link
    # After installing:
    brew doctor

### Install git

    brew install git; \
    npm install -g diff-so-fancy; \
    npm install --global git-recent

### [Generate ssh key](https://help.github.com/articles/generating-ssh-keys)

**Follow the instructions**

### dotfiles: [version controlled](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

    git clone git@github.com:xeniatay/dotfiles.git; \
    cd dotfiles; \
    ./makesymlinks.sh

### Clone the zsh autosuggestions plugin into the zsh plugins directory

[git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

### Install diff-so-fancy
    npm i -g diff-so-fancy

### Disable two-finger swipe back-and-forth on Chrome

    defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

### Install [Sublime Text 3](http://www.sublimetext.com/3)

**Run the installer**

**Install all tried, tested and loved packages**

_Maybe it's easier to just version control `Installed Packages`?_

    cd ~/Library/Application\ Support/Sublime\ Text\ 3/; \
    git clone git@github.com:xeniatay/st3_packages.git; \
    mv Packages Packages_orig; \
    mv st3_packages Packages

**Install customized version of Vintageous**

    cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages"; \
    git clone git@github.com:xeniatay/Vintageous.git; \
    cd Vintageous; \
    git checkout xeniatay; \
    ./build.sh

_Enable 'subl' command in the terminal and enable press and hold for keys (like using j to scroll downnnn):_

    sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

_Enable press and hold for keys (Vintageous) -- e.g. holding down j to scroll down:_

    defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

_Settings > Keyboard_

    Key Repeat: fast
    Delay Until Repeat: Short

**Install [Package Control](https://sublime.wbond.net/installation#Manual)**

**Install Prettifier**
`npm install -g prettifier`

-   Already installed in Sublime via Package Control

### zsh

Definitely need .oh-my-zsh (contains all the super important plugins, and my custom theme xeniatay.zsh-theme)

### Vim

**Plugins**

-   [Pathogen](https://github.com/tpope/vim-pathogen)
-   [Nerd Tree](https://github.com/scrooloose/nerdtree)
-   [Fuzzy Finder](https://github.com/vim-scripts/FuzzyFinder)

**Themes**

-   [Molokai](https://github.com/tomasr/dotfiles/tree/master/.vim/colors)
-   [ir_black](http://toddwerth.com/2011/07/21/the-original-ir_black-for-os-x-lion/)

### Install [IE VMS](http://infoheap.com/run-ie-on-mac-virtualbox/)

:( in the name of cross-browser compatibility

### Todo:

-   Clean up .vimrc, .gvimrc, .zsh-profile,
-   Find a better way to version control Vintageous and Sublime Text 3 so it plays nice with new installs
