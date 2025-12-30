_helpr() {
  local cur
  cur="${COMP_WORDS[COMP_CWORD]}"

  local pages
  pages=$(ls /usr/share/helpr/pages ~/.config/helpr/pages 2>/dev/null | sort -u)

  COMPREPLY=( $(compgen -W "$pages -l --list -s --search -h --help" -- "$cur") )
}

complete -F _helpr helpr
