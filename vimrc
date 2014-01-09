set shiftwidth=2 softtabstop=2
set autoindent

set sta
set si
set et

set nu
set sw=4
set ts=4
set is
set expandtab

:filetype on

call pathogen#infect()
syntax on
filetype plugin indent on

nnoremap T :NumbersToggle<CR>
onoremap <C-CR> i<CR><C-c>

:imap jk <Esc> 

autocmd BufNewFile,BufRead *.json set ft=javascript

" fix meta-keys which generate <Esc>a .. <Esc>z
":imap ç c 
:imap ˙ <Left>
:imap ∆ <Down>
:imap ˚ <Up>
:imap ¬ <Right>
:imap ´ <S-Right>
:imap ∫ <S-Left>
:imap ≈ <Del> 

" Show line numbers only in active window 
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set number
  autocmd WinLeave * set nonumber
augroup END

colorscheme molokai

set gfn=Menlo:h12

" autocmd vimenter * NERDTree

map <Leader>n <plug>NERDTreeTabsToggle<CR>

set wildmenu
set wildmode=list:longest,full

let disable_lint = 1

" Automatically refresh Vim buffers when git branch changes
fun! PullAndRefresh()
  set noconfirm
  !git pull
  bufdo e!
  set confirm
endfun

nmap <leader>gr call PullAndRefresh()

command WQ wq
command Wq wq
command W w
command Q q

" Disable folding for .md files
let g:vim_markdown_folding_disabled=1
