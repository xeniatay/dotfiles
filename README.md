dotfiles
==============

Vim
-------------
- ``` cp vim/dotfiles/* ~/ ```
- Install [Pathogen](https://github.com/tpope/vim-pathogen)
  - ``` mkdir -p ~/.vim/autoload ~/.vim/bundle; \ 
        curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim > ```
  - Copypasta the above to install.
- ``` cp -rvi vim/dotvim/* ~/.vim/ ```

__Todo: Clean up .vimrc and .gvimrc__

_Installing Plugins Separately_
- Install [Nerd Tree](https://github.com/scrooloose/nerdtree) using Pathogen
  - ``` cd ~/.vim/bundle; \ 
      git clone git://github.com/scrooloose/nerdtree.git ```
- Install [Fuzzy Finder](https://github.com/vim-scripts/FuzzyFinder) if so inclined 
- Molokai can be found [here](https://github.com/tomasr/dotfiles/tree/master/.vim/colors)
- No idea what vim-fuf-data is for

Git, ZSH, Bash
-------------
- Todo: fill in .zsh info and work on zsh theme

- ``` cp git/* ~/ ```
- ``` cp zsh/* ~/ ```
- ``` cp bash/* ~/ ```

