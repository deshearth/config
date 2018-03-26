"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"    let &packpath = &runtimepath
"    source ~/.vimrc
let mapleader = ";"
noremap \ ;
set nocompatible
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('~/.vim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/unite.vim')
"call dein#add('roxma/python-support.nvim')
call dein#add('roxma/nvim-completion-manager')
call dein#add('roxma/ncm-clang')
"call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
" and a lot more plugins.....
call dein#add('flazz/vim-colorschemes')
call dein#add('scrooloose/nerdtree')
call dein#add('easymotion/vim-easymotion') 
call dein#add('jiangmiao/auto-pairs')
call dein#add('majutsushi/tagbar')
"call dein#add('scrooloose/syntastic')
call dein#add('neomake/neomake')
call dein#add('tpope/vim-surround')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('JamshedVesuna/vim-markdown-preview')
call dein#add('milkypostman/vim-togglelist')

call dein#end()


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
"colorscheme molokai

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac



filetype on
set wildmenu
set cursorline
"set cursorcolumn
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
"set ignorecase
set incsearch
set showmatch
set foldmethod=indent
set nofoldenable
set foldlevel=1
"highlight Comment cterm=bold cterm=underline ctermfg=darkred
"highlight Comment cterm=bold cterm=underline
set nomodeline
"""""""""""
"imap <C-i> <Esc>:exec "normal f" . leavechar<CR>a                           
"inoremap <C-i> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
"use jk for esc
imap jk <Esc>
"nerdtreetoggle
"press ctrl+t
nnoremap <silent><F1> :NERDTreeToggle<CR>
"tagbar
"press f9
nnoremap <silent><F2> :TagbarToggle<CR>

"togglelist 
let g:toggle_list_no_mappings=1
nmap <script><silent><F3> :call ToggleLocationList()<CR>
nmap <script><silent><F4> :call ToggleQuickfixList()<CR>

" set H and L to first dnd last character of line
nnoremap H ^
nnoremap L $

nnoremap <CR> <C-f>
nnoremap <BS> <C-b>

nnoremap <leader>t H
nnoremap <leader>b L
nnoremap <leader>m M

" vim window split navigation
nnoremap ∆ <C-W>j
nnoremap ˚ <C-W>k
nnoremap ˙ <C-W>h
nnoremap ¬ <C-W>l
nnoremap ß <C-W>s
nnoremap √ <C-W>v
nnoremap <tab> <C-w>w

nnoremap <space> :noh<CR>

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

"neomake setup
"function! MyOnBattery()
"  return readfile('/sys/class/power_supply/AC/online') == ['0']
"endfunction
"
"if MyOnBattery()
"  call neomake#configure#automake('w')
"else
"  call neomake#configure#automake('nw', 1000)
"endif
" When writing a buffer.
call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)

"augroup my_neomake_highlights
"		au!
"    autocmd ColorScheme *
"      \ highlight NeomakeError … |
"      \ highlight NeomakeWarning …
"augroup END

"augroup my_neomake_signs
"    au!
"    autocmd ColorScheme *
"        \ highlight NeomakeErrorSign ctermfg=white |
"        \ highlight NeomakeWarningSign ctermfg=white 
"augroup END
hi NeomakeWarningSign ctermfg=227 ctermbg=237
hi NeomakeErrorSign ctermfg=160 ctermbg=237
let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeWarningSign'}
let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
		
"let g:neomake_highlight_lines = 1
"let g:neomake_highlight_columns = 0

"let g:neomake_open_list = 2
"syntastic checking
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
""
"let g:syntastic_always_populate_loc_list = 1
""let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0










"airline theme
let g:airline_theme='base16_solarized'          
"

"ctag 
let g:tagbar_ctags_bin='/usr/local/bin/ctags' " Proper Ctags locations
let g:tagbar_width=26						  " Default is 40
"youcompleteme
"let g:ycm_path_to_python_interpreter = '/usr/bin/python'

"ncm setting
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set shortmess+=c
"leader key use
nnoremap <Leader><Leader>w :w<CR>
nnoremap <Leader><Leader>q :q<CR>
nnoremap <Leader><Leader>wq :wq<CR>
nnoremap <Leader><Leader>t :terminal<CR>

nnoremap <C-P> :tabp<CR>
nnoremap <C-N> :tabn<CR>

