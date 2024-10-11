# ~/.zshrc
# Created by @mintRaven-05
# Dated: 10th October 2024
# Modified: 11th October 2024
#
#===============================================================================================
# set ZSH to oh-my-zsh base folder
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git zsh-syntax-highlighting)
EDITOR='nvim'
source $ZSH/oh-my-zsh.sh
nerdfetch
#===============================================================================================
# Detect AUR wrapper
if pacman -Qi yay &>/dev/null; then
   aurhelper="yay"
elif pacman -Qi paru &>/dev/null; then
   aurhelper="paru"
fi
#===============================================================================================
# Install packages using pacman or AUR helper
function in {
    local -a inPkg=("$@")
    local -a arch=()
    local -a aur=()
    for pkg in "${inPkg[@]}"; do
        if pacman -Si "${pkg}" &>/dev/null; then
            arch+=("${pkg}")
        else
            aur+=("${pkg}")
        fi
    done
    if [[ ${#arch[@]} -gt 0 ]]; then
        sudo pacman -S "${arch[@]}"
    fi
    if [[ ${#aur[@]} -gt 0 ]]; then
        ${aurhelper} -S "${aur[@]}"
    fi
}
#===============================================================================================
# Aliases for common commands
alias c='clear'
alias l='eza -lh --icons=auto' # long list
alias ls='eza -1 --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
#==============================================================================================
# Aliases for AUR helper (yay or paru)
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list available package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages
#==============================================================================================
# Aliases for Extras
alias mkdir = 'mkdir -p'
alias sleep = 'sudo shutdown now'
alias clear = 'clear && nerdfetch'
alias reboot = 'sudo shutdown -r now'
alias geminux='python ~/.Geminux/main.py'
#==============================================================================================
# Aliases for navigation
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
#==============================================================================================
# keybinds for extra tools
bindkey -s "^e" "yazi\n"
bindkey -s '^ ' 'geminux^M' # Ctrl + spacebar to activate gemini assistant in terminal
bindkey -s '^g' 'lazygit^M' # Ctrl + G to activate lazygit while inside a local git repo
#==============================================================================================
# fzf and Powerlevel10K
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#==============================================================================================
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#ffffff,bg:-1,bg+:#443b68
  --color=hl:#6b5fb0,hl+:#ac48fd,info:#5d90ff,marker:#ff0073
  --color=prompt:#65f48e,spinner:#f56b6b,pointer:#cc41ff,header:#f352a5
  --color=gutter:#443b68,border:#5d4fa1,label:#f25282,query:#ffb647
  --border="bold" --border-label=" mintRaven " --preview-window="border-rounded" --padding="1"
  --prompt="> " --marker="" --pointer="󰁕" --separator="═"
  --scrollbar="█"'
#===============================================================================================
