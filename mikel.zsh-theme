username() {
   echo "%{$FG[012]%}%n%{$reset_color%}"
}


# current directory, two levels deep
directory() {
   echo "%50~"
}

PROMPT='[$(username)@$(hostname) $(directory)]$ '
