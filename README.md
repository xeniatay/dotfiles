# configurations

##dotfiles
[Version controlled dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
`./makesymlinks.sh`

## Vim
### Install [Pathogen](https://github.com/tpope/vim-pathogen)
Copypasta the following:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim >


### Plugins and themes
Install plugins by copypasting contents of `dotvim_directory`

    cp -rvi vim/dotvim_directory/* ~/.vim/


### List of plugins
[Nerd Tree](https://github.com/scrooloose/nerdtree): install using Pathogen

    cd ~/.vim/bundle; \ 
    git clone git://github.com/scrooloose/nerdtree.git 

[Fuzzy Finder](https://github.com/vim-scripts/FuzzyFinder) 

### List of themes
[Molokai](https://github.com/tomasr/dotfiles/tree/master/.vim/colors)


## Migrating from ST2 to ST3
http://wesbos.com/migrating-to-sublime-text-3/
- Map terminal command to subl 
- Move packages

``` 
> defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
```

### Installing Package Manager
Git Install

Since Sublime Text 3 no longer extracts the contents of .sublime-package files by default, and the fact that Package Control needs to read CA cert files from disk for SSL certificate verification, the only viable install method right now is via Git.

Please note, the Packages/ folder listed below refers to the folder that opens when you use the Preferences > Browse Packages… menu.

cd Packages/
git clone https://github.com/wbond/sublime_package_control.git "Package Control"
cd "Package Control"
git checkout python3

## Git, ZSH, Bash

## Todo: 
- Clean up .vimrc, .gvimrc, .zsh-profile, .zsh-nocorrect
- Fill in .zsh info and work on zsh theme
- Convert codesnippets/firebird_gitconfigs to git gists/sublime snippets
- No idea what vim-fuf-data is for: remove if possible
- Push sublime configs as well
- Remove/configure .md and go [here](https://github.com/plasticboy/vim-markdown) and add that
- git clone git://github.com/jtratner/vim-flavored-markdown.git
- markdown syntaax highlighting for sublime: Markdown.tmTheme, MarkdownEditing, Byword
- Vintage Default.sublime-keymap "u"
- Vintage 'gv' https://github.com/sublimehq/Vintage/pull/97/files
- Changelist https://github.com/randy3k/ChangeList in Vintage Defaukt.keymap and user prefs keys
