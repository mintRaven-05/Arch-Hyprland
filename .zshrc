# set ZSH to oh-my-zsh base folder
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# fetch script using Nerdfonts
nerdfetch
bindkey -s "^e" "yazi\n"

# keybinds for extra tools
alias geminux='python ~/.Geminux/main.py'
bindkey -s '^ ' 'geminux^M' # Ctrl + spacebar to activate gemini assistant in terminal
bindkey -s '^g' 'lazygit^M' # Ctrl + G to activate lazygit while inside a local git repo

# Aliases for common commands
alias c='clear' # clear terminal
alias l='eza -lh --icons=auto' # long list
alias ls='eza -1 --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list available package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# fzf and Powerlevel10K
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
