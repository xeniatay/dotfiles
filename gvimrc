set shiftwidth=2 softtabstop=2
set autoindent

set sta
set si
set et

set nu
set sw=2
set ts=2
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

" colorscheme torte 

set background=dark 
colorscheme ir_black 
syntax on

set gfn=Menlo:h12

" autocmd vimenter * NERDTree

map <Leader>n <plug>NERDTreeTabsToggle<CR>

set wildmenu
set wildmode=list:longest,full

" Automatically refresh Vim buffers when git branch changes
fun! PullAndRefresh()
  set noconfirm
  !git pull
  bufdo e!
  set confirm
endfun

nmap <leader>gr call PullAndRefresh()

" Make NERDTree directory path follow current buffer
let NERDTreeChDirMode=2

" Turn off line numbers for NERDtree
autocmd FileType nerdtree setlocal norelativenumber
autocmd FileType taglist setlocal norelativenumber

"FuzzyFinder
nmap // :FufCoverageFile<CR>
let fuf_keyOpenTabpage = '<CR>' 
let fuf_keyOpen = '<C-l>' 
