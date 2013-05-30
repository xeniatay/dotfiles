# configurations

##dotfiles
``` cp vim/dotfiles/* ~/ ```
``` cp git/dotfiles/* ~/ ```
``` cp zsh/dotfiles/* ~/ ```
``` cp bash/dotfiles/* ~/ ```

## Vim
### Install [Pathogen](https://github.com/tpope/vim-pathogen)
Copypasta the following:
``` mkdir -p ~/.vim/autoload ~/.vim/bundle; \ 
        curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim > ```

``` cp -rvi vim/dotvim_directory/* ~/.vim/ ```


_Installing Plugins Separately_
- Install [Nerd Tree](https://github.com/scrooloose/nerdtree) using Pathogen
  - ``` cd ~/.vim/bundle; \ 
      git clone git://github.com/scrooloose/nerdtree.git ```
- Install [Fuzzy Finder](https://github.com/vim-scripts/FuzzyFinder) if so inclined 
- Molokai can be found [here](https://github.com/tomasr/dotfiles/tree/master/.vim/colors)
- No idea what vim-fuf-data is for

## Git, ZSH, Bash


### Todo: 
- Clean up .vimrc, .gvimrc, .zsh-profile, .zsh-nocorrect
- Todo: fill in .zsh info and work on zsh theme
- Convert codesnippets/firebird_gitconfigs to git gists/sublime snippets
- Push sublime configs as well
