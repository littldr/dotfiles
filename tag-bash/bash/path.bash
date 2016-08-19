PATH="/usr/local/sbin:$PATH"

# OSX needs gnu-tar to work correctly with sshrc, so add this to path if the binary is available
if [ -d /usr/local/opt/gnu-tar/libexec/gnubin ]; then
  PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
fi

if [ -d /usr/local/opt/gnu-tar/libexec/gnuman ]; then
  MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"
fi

PATH="$PATH:./node_modules/.bin"
PATH="$PATH:$HOME/.bin"

export GOPATH="$HOME/Workspace/gocode"
export PATH="$PATH:$GOPATH/bin"
