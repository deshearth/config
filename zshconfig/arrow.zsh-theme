if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="gray"; fi

#PROMPT='%{$fg[$NCOLOR]%}%c ➤ %{$reset_color%}'
#RPROMPT='%{$fg[$NCOLOR]%}%p $(git_prompt_info)%{$reset_color%}'
PROMPT='%{$fg[$NCOLOR]%}%c $(git_prompt_info) ᘡ ᘞ  %{$reset_color%}'

#ZSH_THEME_GIT_PROMPT_PREFIX="git:("
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}git:%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%} %{$fg[red]%}♯"
#ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
#export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LSCOLORS="Hxfxcxdxbxbxbxbxbxbxbx"
#export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
export LS_COLORS="di=1;37;40:ln=37;40:so=32;40:pi=1;73;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"



