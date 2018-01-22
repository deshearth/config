let mapleader = ";"
set nocompatible              " be iMproved, required
filetype off" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'JamshedVesuna/vim-markdown-preview'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"Always show current position
set ruler

"Set line number
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"colors molokai

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac



filetype on
set wildmenu
set cursorline
set cursorcolumn
set hlsearch
set laststatus=2
set tabstop=2
set shiftwidth=2
set smartindent
autocmd FileType python set expandtab
"autocmd vimenter * NERDTree
set autoindent
set cindent
set ai
set si
set nowrap
set ignorecase
set incsearch
set showmatch
set foldmethod=indent
set nofoldenable
set foldlevel=1
"highlight Comment cterm=bold cterm=underline ctermfg=darkred
"highlight Comment cterm=bold cterm=underline

"""""""""""
"imap <C-i> <Esc>:exec "normal f" . leavechar<CR>a                           
"inoremap <C-i> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
"use jk for esc
imap jk <Esc>
"nerdtreetoggle
"press ctrl+t
map <C-t> :NERDTreeToggle<CR>
"tagbar
"press f9
nnoremap <silent> <F9> :TagbarToggle<CR>

" set H and L to first and last character of line
nnoremap H ^
nnoremap L $

" vim window split navigation
nnoremap ∆ <C-W>j
nnoremap ˚ <C-W>k
nnoremap ˙ <C-W>h
nnoremap ¬ <C-W>l
nnoremap ß <C-W>s
nnoremap √ <C-W>v
nnoremap <tab> <C-w>w

"nnoremap <M-h> <C-W>h
"easy motion
"trigger key is ;   then followed by hjkl
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

map <Leader>w <Plug>(easymotion-bd-w)

map <Leader>f <Plug>(easymotion-bd-f)
let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'




"syntastic checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"airline theme
let g:airline_theme='base16_solarized'          
"






"ctag 
let g:tagbar_ctags_bin='/usr/local/bin/ctags' " Proper Ctags locations
let g:tagbar_width=26						  " Default is 40
"youcompleteme
"let g:ycm_python_binary_path = 'python'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:loaded_youcompleteme = 1

"leader key use
nnoremap <Leader><Leader>w :w<CR>
nnoremap <Leader><Leader>q :q<CR>
nnoremap <Leader><Leader>wq :wq<CR>
