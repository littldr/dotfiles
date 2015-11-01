set -gx DOTFILES $HOME/.dotfiles
set -gx PATH /usr/local/sbin $PATH

status --is-interactive; and . (rbenv init -|psub)
