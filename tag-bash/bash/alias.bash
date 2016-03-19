if [ $(uname) == 'Darwin'  ]; then
  # OSX aliases
  alias ls='ls -G'
  alias ll='ls -al'
else
  # For everything else (== Linux)
  alias ls='ls --color=auto'
  alias ll='ls -la'
fi
