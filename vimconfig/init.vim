let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let mapleader = ";"
let maplocalleader = "\\"
noremap \| ;





call plug#begin('~/.local/share/nvim/vim-plug')

Plug 'roxma/ncm-clang'
" ncm2 for completion
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'roxma/nvim-yarp'
Plug 'SirVer/ultisnips'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'flazz/vim-colorschemes'
"Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'cohama/lexima.vim'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'skywind3000/gutentags_plus'
Plug 'w0rp/ale'
Plug 'parsonsmatt/intero-neovim'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-surround'
"Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'itspriddle/vim-marked'
Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-repeat'
Plug 'morhetz/gruvbox'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'justinmk/vim-sneak'

call plug#end()













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
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
set autoread



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
set textwidth=0
autocmd FileType markdown setlocal tabstop=4
autocmd FileType markdown setlocal shiftwidth=4
set expandtab

set pastetoggle=<F9>

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
set scrolloff=5

"highlight Comment cterm=bold cterm=underline ctermfg=darkred
"highlight Comment cterm=bold cterm=underline
set nomodeline

inoremap jk <Esc>
"inoremap ze = too common
inoremap zd =
inoremap zp +

imap zh ^{
inoremap zc ^
inoremap zs *
inoremap zn #
inoremap zv \|
inoremap zb %
imap zl _{
inoremap zu _
inoremap zm -
inoremap zo ^*
inoremap jj \
imap kk (
imap hk {
imap z<space> $
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

"F key map
noremap <F1> :LeaderfFile<CR>
noremap <F2> :LeaderfFunction!<CR>
"togglelist 
let g:toggle_list_no_mappings=1
nmap <script><silent><F3> :call ToggleLocationList()<CR>
nmap <script><silent><F4> :call ToggleQuickfixList()<CR>
nmap <leader><leader>a :ALEToggle<CR>

"autosave
"autocmd filetype markdown,tex let g:auto_save = 1
"autocmd filetype markdown,tex let g:auto_save_silent = 1


" move by display line
noremap j gj
noremap k gk

noremap Y y$

" set H and L to first dnd last character of line
nnoremap H ^
nnoremap L $

nnoremap K 10k
nnoremap J 10j

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
map  / <Plug>(easymotion-sn)

let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

"sneak 
let g:sneak#s_next = 1
let g:sneak#label = 1
let g:sneak#target_labels = "abcdeghijklmnopq"
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T

xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T

omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
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
"let vim_markdown_preview_hotkey='<C-m>'
"let vim_markdown_preview_pandoc=1
noremap <C-m> :MarkedToggle!<CR>

" vim-mardown config
let g:tex_conceal = ""
let g:vim_markdown_math = 1


" vimtex setting
let g:tex_flavor = 'latex'
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'skim'

"map <localleader>r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -b <C-r>=line('.')<CR> %<.pdf<CR>
nmap <localleader>r <plug>(vimtex-view)


"airline theme
"let g:airline_theme='base16_solarized'          
let g:airline_theme='dark'          
"

"ctag 

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
nnoremap <leader><leader>ht :sp term://zsh<CR>


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




