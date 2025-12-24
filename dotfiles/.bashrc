#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias logout='pkill -KILL -u $USER'
alias bye='shutdown now'
alias ll='eza -lah --icons'
alias ii='sudo pacman -Syy && sudo pacman -S --needed --noconfirm'
alias i3conf='xed ~/.config/i3/config'
alias getclass='xprop | grep CLASS'
alias refreshpkg='sudo reflector --verbose --latest 20 --protocol https --sort rate --save /etc/pacman.d'
alias bb='~/.config/i3/scripts/backlight_ddc_set.sh'



eval "$(starship init bash)"

#if [[ $(tty) == *"pts"* ]]; then
#    fastfetch --config examples/28
#fi

# For pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init - bash)"
