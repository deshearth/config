# Path to your oh-my-zsh installation.
export ZSH=/Users/melancholymirth/.oh-my-zsh

 #Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arrow"
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
plugins=(zsh-syntax-highlighting)

# User configuration

source $ZSH/oh-my-zsh.sh



#autoload -U promptinit && promptinit
#prompt purity
#autoload -U promptinit; promptinit
## optionally define some options
#PURE_CMD_MAX_EXEC_TIME=10
##PURE_PROMPT_SYMBOL="ᘡ ᘞ  "
#prompt pure

#export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/Users/melancholymirth/.local/bin:/Developer/NVIDIA/CUDA-9.2/:/usr/local/Cellar/caffe:/usr/local/cuda/include:$PATH"
#export PYTHONPATH="/Users/melancholymirth/anaconda3/bin/:/Users/melancholymirth/caffe/python"
#export PYTHONPATH="/usr/local/opt/python/bin/"
#export DYLD_LIBRARY_PATH="Developer/NVIDIA/CUDA-9.2/lib:$DYLD_LIBRARY_PATH"

#export PYTHONPATH="/Users/melancholymirth/caffe/python:$PYTHONPATH"
export PYTHONPATH="/usr/local/Cellar/caffe/python:$PYTHONPATH"
# export MANPATH="/usr/local/man:$MANPATH"
#export PATH="/Users/melancholymirth/miniconda3/bin:$PATH"
export LANG="en_US.UTF-8"
export LC_ALL"=en_US.UTF-8"
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
alias zshconfig="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias tmuxconfig="vi ~/.tmux.conf"
alias nvimconfig="nvim ~/.config/nvim/init.vim" 
alias karaconfig="vi ~/.config/karabiner/karabiner.json"
alias wmconfig="vi ~/.chunkwmrc"
alias khdconfig="vi ~/.khdrc"
alias brewserv='brew services'
alias start_chunkwm="brewserv start chunkwm"
alias start_khd="brewserv start khd"
alias linux="ssh ychu26@linux.ews.illinois.edu"
alias linuxx="ssh -Y ychu26@linux.ews.illinois.edu"
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
alias quit="exit"
#alias jupyter="jupyter notebook"
#alias python2="source activate python2"
alias python2="python2.7"
#alias python3="source activate python3"
#alias load_conda="export PATH='/Users/melancholymirth/miniconda3/bin:$PATH'; jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88%"
alias load_conda="export PATH='/Users/melancholymirth/anaconda3/bin:$PATH'"
alias quit_conda="export PATH='/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin'" 
alias deactivate="source deactivate"
alias back='cd $OLDPWD'
alias zshupdate="source ~/.zshrc"
alias load_themes='jt -t grade3 -fs 95 -altp -tfs 11 -nfs 115 -cellw 88%'
alias byword_dir="cd '/Users/melancholymirth/Library/Mobile Documents/N39PJFAFEV~com~metaclassy~byword/Documents/'"
#jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88%





#set
set -o vi




