let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let mapleader = ";"
let maplocalleader = "\\"
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
call dein#add('roxma/ncm-clang')
" ncm2 for completion
call dein#add('ncm2/ncm2')
call dein#add('ncm2/ncm2-bufword')
call dein#add('ncm2/ncm2-path')
call dein#add('ncm2/ncm2-jedi')
call dein#add('roxma/nvim-yarp')
"
call dein#add('SirVer/ultisnips')
"call dein#add('Shougo/deoplete.nvim')
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
if !has('nvim')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
"" and a lot more plugins.....
call dein#add('flazz/vim-colorschemes')
call dein#add('scrooloose/nerdtree')
call dein#add('easymotion/vim-easymotion') 
"call dein#add('jiangmiao/auto-pairs')
call dein#add('cohama/lexima.vim')
"call dein#add('tmsvg/pear-tree')
"call dein#add('vim-scripts/auto-pairs-gentle')

""
call dein#add('majutsushi/tagbar')
call dein#add('ludovicchabant/vim-gutentags')
call dein#add('skywind3000/gutentags_plus')
call dein#add('w0rp/ale')
call dein#add('parsonsmatt/intero-neovim')
call dein#add('neovimhaskell/haskell-vim')
call dein#add('tpope/vim-surround')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('JamshedVesuna/vim-markdown-preview')
call dein#add('milkypostman/vim-togglelist')
call dein#add('tpope/vim-repeat')
call dein#add('morhetz/gruvbox')
call dein#add('godlygeek/tabular')
call dein#add('plasticboy/vim-markdown')
call dein#add('junegunn/fzf')
call dein#add('lervag/vimtex')

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
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme molokai
colorscheme gruvbox
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac



filetype on
filetype plugin indent on
set wildmenu
set cursorline
set backspace=indent,eol,start
"set cursorcolumn
set hlsearch
set laststatus=2
set tabstop=2
set shiftwidth=2
set smartindent
autocmd FileType python set expandtab
set expandtab
"autocmd vimenter * NERDTree
set autoindent
"set cindent
set ai
set si
" set nowrap
set wrap linebreak
"set ignorecase
set incsearch
set showmatch
set foldmethod=indent
set nofoldenable
set foldlevel=1
"highlight Comment cterm=bold cterm=underline ctermfg=darkred
"highlight Comment cterm=bold cterm=underline
set nomodeline


"used in latex to substitute supscript and subscript
ca subs s/\v'([^.^']+)\.([^.^']+)'/\1_{\2}/g
ca sups s/\v'([^.^']+)\.\.([^.^']+)'/\1^{\2}/g
ca subps s/\v'([^.^']+)\.([^.^']+)\.([^.^']+)'/\1_{\2}^{\3}/g

"""""""""""
"imap <C-i> <Esc>:exec "normal f" . leavechar<CR>a                           
"inoremap <C-i> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
"use jk for esc
imap jk <Esc>

"""""""""""""""""""""""""""""""""""
" plugin configure
" """""""""""""""""""""""""""""""""
"nerdtreetoggle
"press ctrl+t
nnoremap <silent><F1> :NERDTreeToggle<CR>
"tagbar
"press f9
nnoremap <silent><F2> :TagbarToggle<CR>
"
"gutentags setting
"
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

set pastetoggle=<F9>
0

" auto pair config
"let g:lexima_enable_newline_rules = 1
call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': [ 'markdown','tex' ]})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': [  'markdown','tex' ]})
call lexima#add_rule({'char': '<CR>', 'at': '\$\%#\$', 'input_after': '<CR>', 'filetype': ['markdown','tex']})

call lexima#add_rule({'char': '\[', 'input_after': '\]', 'filetype':  'tex' })
"let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
"au Filetype tex let b:AutoPairs = {"$": "$"}

"let g:pear_tree_pairs = {
"            \ '(': {'closer': ')'},
"            \ '[': {'closer': ']'},
"            \ '{': {'closer': '}'},
"            \ "'": {'closer': "'"},
"            \ '"': {'closer': '"'},
"            \ '$': {'closer': '$'}
"            \ }

"togglelist 
let g:toggle_list_no_mappings=1
nmap <script><silent><F3> :call ToggleLocationList()<CR>
nmap <script><silent><F4> :call ToggleQuickfixList()<CR>
nmap <leader><leader>a :ALEToggle<CR>



" move by display line
noremap j gj
noremap k gk

noremap Y y$

" set H and L to first dnd last character of line
nnoremap H ^
nnoremap L $


nnoremap <CR> <C-f>
nnoremap <BS> <C-b>
" jmp to top bottom middle
nnoremap <leader>t H
nnoremap <leader>b L
nnoremap <leader>m M

" vim window split navigation






nnoremap <Down> <C-W>j
nnoremap <Up> <C-W>k
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l
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
"call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
"call neomake#configure#automake('rw', 1000)

augroup my_neomake_highlights
		au!
    autocmd ColorScheme *
      \ highlight NeomakeError … |
      \ highlight NeomakeWarning …
augroup END

augroup my_neomake_signs
    au!
    autocmd ColorScheme *
        \ highlight NeomakeErrorSign ctermfg=white |
        \ highlight NeomakeWarningSign ctermfg=white 
augroup END
hi NeomakeWarningSign ctermfg=227 ctermbg=237
hi NeomakeErrorSign ctermfg=160 ctermbg=237
let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeWarningSign'}
let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSign'}

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
highlight ALEWarning ctermbg=237
highlight ALEError ctermbg=237

let g:ale_linters = {
\ 	'cpp': ['clang', 'cppcheck'],
\		'haskell': ['hlint', 'ghc-mod']
\}



" vim-markdown-preview config
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_pandoc=1

" vim-mardown config
let g:tex_conceal = ""
let g:vim_markdown_math = 1


" vimtex setting
let g:tex_flavor = 'latex'
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'skim'

map <localleader>r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<.pdf<CR>


"airline theme
"let g:airline_theme='base16_solarized'          
let g:airline_theme='dark'          
"

"ctag 
let g:tagbar_ctags_bin='/usr/local/bin/ctags' " Proper Ctags locations
let g:tagbar_width=26						  " Default is 40

"ncm setting (overwritten by  snippets)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

augroup NCM2
  autocmd!
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
  " uncomment this block if you use vimtex for LaTex
   autocmd Filetype tex call ncm2#register_source({
             \ 'name': 'vimtex',
             \ 'priority': 8,
             \ 'scope': ['tex'],
             \ 'mark': 'tex',
             \ 'word_pattern': '\w+',
             \ 'complete_pattern': g:vimtex#re#ncm2,
             \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
             \ })
augroup END

" snippets
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
let g:UltiSnipsExpandTrigger="»"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

set shortmess+=c
"leader key use
nnoremap <Leader><Leader>w :w<CR>
nnoremap <Leader><Leader>q :q<CR>
nnoremap <Leader><Leader>wq :wq<CR>
nnoremap <Leader><Leader>t :tabe term://zsh<CR>

nnoremap <C-P> :tabp<CR>
nnoremap <C-N> :tabn<CR>

nnoremap <leader><leader>v :vsp 
nnoremap <leader><leader>h :sp 
nnoremap <leader><leader>vt :vsp term://zsh<CR>
nnoremap <leader><leader>ht :vsp term://zsh<CR>


if has('nvim')
au TermOpen * setlocal nonumber norelativenumber
tnoremap jk <C-\><C-n>
tnoremap <leader><leader>vt <C-\><C-n>:vsp term://zsh<CR>
tnoremap <leader><leader>ht <C-\><C-n>:sp term://zsh<CR>

endif





" haskell vim conf
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords


" remember the cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif




