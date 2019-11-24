# Path to your oh-my-zsh installation.
export ZSH=/Users/melancholymirth/.oh-my-zsh

 #Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arrow"
#ZSH_THEME=""
#ZSH_THEME="avit"
#ZSH_THEME=""
#ZSH_THEME="awesomepanda"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting zsh-completions)

# User configuration

source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit
# pure theme
#autoload -U promptinit; promptinit
#
## optionally define some options
#PURE_CMD_MAX_EXEC_TIME=10
#
#prompt pure

#autoload -U promptinit && promptinit
#prompt purity
#autoload -U promptinit; promptinit
## optionally define some options
#PURE_CMD_MAX_EXEC_TIME=10
##PURE_PROMPT_SYMBOL="ᘡ ᘞ  "
#prompt pure

#export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:$PATH"
#export PYTHONPATH="/Users/melancholymirth/anaconda3/bin/:/Users/melancholymirth/caffe/python"
#export PYTHONPATH="/usr/local/opt/python/bin/"
#export DYLD_LIBRARY_PATH="Developer/NVIDIA/CUDA-9.2/lib:$DYLD_LIBRARY_PATH"

#export PYTHONPATH="/Users/melancholymirth/caffe/python:$PYTHONPATH"
# export MANPATH="/usr/local/man:$MANPATH"
#export PATH="/Users/melancholymirth/miniconda3/bin:$PATH"
# added by Miniconda3 installer
export PATH="/Users/melancholymirth/miniconda3/bin:$PATH"
#export PATH="/usr/local/bin:$PATH"

export LANG="en_US.UTF-8"
export LC_ALL"=en_US.UTF-8"
export GRB_LICENSE_FILE=/Users/melancholymirth/gurobi/gurobi.lic
#export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
#export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
#export FZF_DEFAULT_COMMAND='rg --files'
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias vi='nvim'
alias vil='nvim --listen /tmp/nvimsocket'
alias zshconfig="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias tmuxconfig="vi ~/.tmux.conf"
alias nvimconfig="nvim ~/.config/nvim/init.vim" 
alias karaconfig="vi ~/.config/karabiner/karabiner.json"
alias wmconfig="vi ~/.chunkwmrc"
alias skhdconfig="vi ~/.skhdrc"
alias snipdir="cd ~/.vim/UltiSnips/"
#alias alacconfig="vi ~/.config/alacritty/alacritty.yml"
alias kittyconfig="vi ~/.config/kitty/kitty.conf"

alias brewserv='brew services'
alias start_chunkwm="brewserv start chunkwm"
alias start_skhd="brewserv start skhd"
alias stop_chunkwm="brewserv stop chunkwm"
alias stop_skhd="brewserv stop skhd"
alias restart_chunkwm="brewserv restart chunkwm"
alias restart_skhd="brewserv restart skhd"
alias linux="ssh ychu26@linux.ews.illinois.edu"
alias linuxx="ssh -Y ychu26@linux.ews.illinois.edu"
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
alias quit="exit"
#alias jupyter="jupyter notebook"
#alias python2="source activate python2"
#alias python3="source activate python3"
#alias load_conda="export PATH='/Users/melancholymirth/miniconda3/bin:$PATH'; jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88%"
alias back='cd $OLDPWD'
alias zshupdate="source ~/.zshrc"
alias vimupdate="source ~/.config/nvim/init.vim"
alias load_themes='jt -t grade3 -fs 95 -altp -tfs 11 -nfs 115 -cellw 88%'
#jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88%
# alias net="cd ~/Box\ Sync/Tarantula/txt"
alias swapdir="~/.local/share/nvim/swap"
# directory of latex macro
alias destexlib="cd ~/Library/texmf/tex/latex"
alias desmacro="vi ~/Library/texmf/tex/latex/desmacro/desmacro.sty"
alias despkg="vi ~/Library/texmf/tex/latex/despkg/despkg.tex"
# sync files between two folders
# clear file except .tex .pdf
alias tex_clean="find ~/Library/Mobile\ Documents/com~apple~CloudDocs/zoo/tarantula/data \( -name '*.log' -o -name '*.synctex.gz' -o -name '*.fls' -o -name '*.aux' -o -name '*.fdb_latexmk' -o -name '*.out' -o -name '*.blg' -o -name '*.bbl' -o -name '*.thm' \) -delete" 
alias ttt="$PWD=='tex_inbox && ls'"
alias tex_install="sudo tlmgr install"
alias clc="clear"
alias weaving="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/zoo/tarantula/data/silk"
alias config_git="cp ~/.zshrc ~/deshearthGit/config/zshconfig/.zshrc; cp ~/.config/nvim/init.vim ~/deshearthGit/config/vimconfig/init.vim; cp -r ~/.vim/UltiSnips ~/deshearthGit/config/snipconfig/UltiSnips"





#set
set -o vi





[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf config
#export FZF_DEFAULT_COMMAND='rg --files'
#export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
