username() {
   echo "%{$FG[012]%}%n%{$reset_color%}"
}


# current directory, two levels deep
directory() {
   echo "%50~"
}

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='[$(username)@$(hostname) $(directory) $(git_prompt_info)]$ '
