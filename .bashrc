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

# Remove this is xwayland apps launched through the terminal have graphics issues
QT_QPA_PLATFORM=xcb

# Define Editor and filebrowser
export EDITOR=code
export filebrowser=thunar

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias weather='curl wttr.in'
alias pls='sudo'
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
# HYFETCH if on wm
# -----------------------------------------------------

echo ""
if [[ $(tty) == *"pts"* ]]; then
    hyfetch
else
    if [ -f /bin/qtile ]; then
        echo "Start Qtile X11 with command Qtile"
    fi
    if [ -f /bin/hyprctl ]; then
        echo "Start Hyprland with command Hyprland"
    fi
fi

export PATH=$PATH:/home/lexi/.spicetify
export PATH=/home/lexi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/rustup/bin:/home/lexi/.spicetify:/home/lexi/.spicetify
