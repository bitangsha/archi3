#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# auto run startx after login
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi