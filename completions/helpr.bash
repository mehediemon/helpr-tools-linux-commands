_helpr() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local pages
  pages=$(ls /usr/share/helpr/pages ~/.config/helpr/pages 2>/dev/null)
  COMPREPLY=( $(compgen -W "$pages -l -s -e config doctor upgrade uninstall" -- "$cur") )
}
complete -F _helpr helpr
