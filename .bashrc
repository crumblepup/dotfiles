#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# By Yumiko-Gabrielle Horrorshow (2024)
#
# -----------------------------------------------------
# ~/.bashrc (--> ~/dotfiles/.bashrc)
# -----------------------------------------------------
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

#I FUCKING HATE WAYLAND
QT_QPA_PLATFORM=xcb

# Define Editor and filebrowser
export EDITOR=code
export filebrowser=thunar

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias shutdown='systemctl poweroff'
alias matrix='unimatrix'
alias wifi='nmtui'
alias rwb='~/dotfiles/waybar/launch.sh'
alias dotfiles='$filebrowser ~/dotfiles'
alias cleanup='~/dotfiles/scripts/cleanup.sh'
alias bartheme='~/dotfiles/waybar/themeswitcher.sh'
alias wallpaper='~/dotfiles/hypr/scripts/wallpaper.sh'

# -----------------------------------------------------
# Window Managers
# -----------------------------------------------------

alias Qtile='startx'
alias qtile='startx'
alias hyprland='Hyprland' #FUCK YOU WHOEVER MADE IT CAPITAL H

# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------

alias editqtile='$EDITOR ~/dotfiles/qtile/config.py'
alias editpicom='$EDITOR ~/dotfiles/picom/picom.conf'
alias editbash='$EDITOR ~/dotfiles/.bashrc'

# -----------------------------------------------------
# OPEN HYPRLAND FOLDER
# -----------------------------------------------------

alias edithypr='$filebrowser ~/dotfiles/hypr/'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update='yay -Syu'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------

eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------

cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH if on wm
# -----------------------------------------------------

echo ""
if [[ $(tty) == *"pts"* ]]; then
    pfetch
else
    if [ -f /bin/qtile ]; then
        echo "Start Qtile X11 with command Qtile"
    fi
    if [ -f /bin/hyprctl ]; then
        echo "Start Hyprland with command Hyprland"
    fi
fi

export PATH=$PATH:/home/lexi/.spicetify
