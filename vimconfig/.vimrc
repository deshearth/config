set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required


set background=dark
let g:solarized_termcolors=256
colorscheme solarized




set number
set wildmenu
set ruler
set cursorline
set cursorcolumn
set hlsearch
set laststatus=2
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
"autocmd FileType python set expandtab
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
"highlight Comment cterm=bold cterm=underline ctermfg=DarkRed

 
set encoding=utf-8


"map
""inoremap ( ()<Esc>i
""inoremap [ []<Esc>i
""inoremap [ []<Esc>i
""inoremap " ""<Esc>i
""inoremap ' ''<Esc>i
""inoremap < <><Esc>i
"""jump out of parenthesis
imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
map <C-t> :NERDTreeToggle<CR>
"tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:ycm_python_binary_path = 'python'
"easy motion
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>h <Plug>(easymotion-linebackward) 
"map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
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

