if [ $(uname) == 'Darwin' ]; then
  # OSX aliases
  alias ls='ls -G'
  alias ll='ls -al'
else
  # For everything else (== Linux)
  alias ls='ls --color=auto'
  alias ll='ls -la'
fi

man() {
  # Source: http://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized
  env \
    LESS_TERMCAP_md=$(printf "\e[1;34m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;36;31m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
      man "$@"
}
