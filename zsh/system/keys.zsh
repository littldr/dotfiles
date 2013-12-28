# Pipe my public key to my clipboard.
# Source https://raw.github.com/pgolm/dotfiles/master/zsh/system/keys.zsh
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"