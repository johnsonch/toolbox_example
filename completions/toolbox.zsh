if [[ ! -o interactive ]]; then
    return
fi

compctl -K _toolbox toolbox

_toolbox() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(toolbox commands)"
  else
    completions="$(toolbox completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
