if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

PROMPT='%{$fg[$NCOLOR]%}%c [%?] ➤ %{$reset_color%}'
RPROMPT='%{$fg[$NCOLOR]%}%p [%*] $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34:ln=35:so=32;40:pi=33:ex=31:bd=31:cd=31:su=31:sg=31:tw=31:ow=31:"
