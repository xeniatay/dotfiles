# Install xcode and [homebrew](http://brew.sh/)

    `ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"`

Note: it is mandatory to agree to the xcode license before using homebrew

# [Generate ssh key](https://help.github.com/articles/generating-ssh-keys)

# Install git

    `brew install git`

# dotfiles

    ```
    git clone git@github.com:xeniatay/dotfiles.git
    ./makesymlinks.sh
    ```

- [Version controlled dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

## Vim

### List of plugins

- [Pathogen](https://github.com/tpope/vim-pathogen)
- [Nerd Tree](https://github.com/scrooloose/nerdtree): install using Pathogen
- [Fuzzy Finder](https://github.com/vim-scripts/FuzzyFinder) 

### List of themes

- [Molokai](https://github.com/tomasr/dotfiles/tree/master/.vim/colors)
- ir\_black

## Install [Iterm 2](http://www.iterm2.com/)

Run the installer

## Install [Sublime Text 3](http://www.sublimetext.com/3)

Run the installer
Install all tried, tested and loved packages
_Note/Todo:_ Try just version controlling 'Installed\ Packages'?

    ```
    cd ~/Library/Application\ Support/Sublime\ Text\ 3/; \
    git clone git@github.com:xeniatay/st3_packages.git; \
    mv Packages Packages_orig; \
    mv st3_packages Packages
    ```

Install customized version of Vintageous

    ```
    cd ~/Library/Application Support/Sublime Text 3/Packages; \
    git clone git@github.com:xeniatay/Vintageous.git; \
    cd Vintageous; \
    git checkout xeniatay
    ```

Enable 'subl' command in the terminal and work that pressnhold:

    ```
    sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /bin/subl; \
    defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false; \
    ```

[Migrating from ST2 to ST3] (http://wesbos.com/migrating-to-sublime-text-3/)

## Git, ZSH, Bash

## Todo: 
- Clean up .vimrc, .gvimrc, .zsh-profile, 
- Fill in .zsh-nocorrect (or learn how to use the damn autocorrect)
- Convert codesnippets to gists/subl snippets
