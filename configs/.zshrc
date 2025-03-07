###############
##### ZSH #####
###############

### Path to Oh My Zsh.

export ZSH="$HOME/.oh-my-zsh"

###----------------------------------------------------------------
### Uses theme, See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes.

ZSH_THEME="candy"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

###---------------
### Remind update.

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

####--------------------------------------------------------------------------
#### Uncomment the following line if pasting URLs and other text is messed up.

# DISABLE_MAGIC_FUNCTIONS="true"

###-----------------
### Auto Correction.

ENABLE_CORRECTION="true"

###------------------
### Standard plugins.
plugins=(git)

source $ZSH/oh-my-zsh.sh

###--------------------
### User configuration.

# Language
export LANG=en_US.UTF-8

# Puro
export PATH="$PATH:$HOME/.puro/bin"
export PATH="$PATH:$HOME/.puro/shared/pub_cache/bin"
export PATH="$PATH:$HOME/.puro/envs/default/flutter/bin"
export PURO_ROOT="/home/bruno/.puro"

# System
alias pac="sudo pacman -Syy"
alias pacup="sudo pacman -Syu"
alias pacin="sudo pacman -S"

# Grub
alias grubconf="sudo nano /etc/default/grub"

# Sddm
alias sddmconf="sudo nano /usr/lib/sddm/sddm.conf.d/default.conf"

# Zsh
alias zshconf="sudo nano ~/.zshrc"
alias ohmyconf="sudo nano ~/.oh-my-zsh"

# Hyprland
alias hyinput="sudo nano ~/.config/hypr/hyprinput.conf"
alias hypr="sudo nano ~/.config/hypr/hyprland.conf"
alias hypaper="sudo nano ~/.config/hypr/hyprpaper.conf"
alias hykey="sudo nano ~/.config/hypr/hyprkeybindings.conf"
alias hymonitors-conf="sudo nano ~/.config/hypr/hyprmonitors.conf"
alias hyvisual="sudo nano ~/.config/hypr/hyprvisual.conf"

# Extras
alias fastconf="sudo nano ~/.config/fastfetch/config.jsonc"
alias i="fastfetch"

alias wvrf="cd ~/Workspace/vr/flutter"
alias wvrj="cd ~/Workspace/vr/java"
alias wvrg="cd ~/Workspace/vr/go"

alias wbtf="cd ~/Workspace/bt/flutter"
alias wbtg="cd ~/Workspace/bt/go"
alias wbtp="cd ~/Workspace/bt/python"
alias wbtc="cd ~/Workspace/bt/c"

