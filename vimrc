let mapleader = "\,"

set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set fileencodings=utf-8,cp950

syntax on
set ai
set tabstop=2 shiftwidth=2 expandtab
set ruler
set ic
set hlsearch
set incsearch
set smartindent
set confirm
set history=200
set cursorline
set number
set wrap
set mouse=r
set tags=/Users/recardo/android/platform/tags


colorscheme desert

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'pangloss/vim-javascript'
"Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()            " required
filetype plugin indent on    " required



"Copy and paste between different Vim sessions
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

" tabswitch 
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" command-t
nmap <Leader>b <Plug>(CommandTBuffer)
let g:CommandTMaxHeight = 25
let g:CommandTIgnoreCase = 0
let g:CommandTMatchWindowReverse = 0
let g:CommandTWildIgnore=&wildignore
let g:CommandTAcceptSelectionTabMap = '<CR>'

" airline
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '||'
let g:airline#extensions#tabline#tab_nr_type = 1

" NerdTree
autocmd BufEnter * lcd %:p:h
nnoremap <Leader>f :NERDTreeToggle<CR>



nnoremap <Leader>s :%s/\<<C-r><C-w>\>/



