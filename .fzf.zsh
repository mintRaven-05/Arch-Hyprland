# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mintRaven/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/mintRaven/.fzf/bin"
fi

source <(fzf --zsh)
