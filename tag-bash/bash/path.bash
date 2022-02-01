PATH="/usr/local/sbin:${PATH}"

# Use GNU tools
if [ -d ${SYSTEM_PREFIX}/opt/coreutils/libexec/gnubin ]; then
  PATH="${SYSTEM_PREFIX}/coreutils/libexec/gnubin:${PATH}"
  MANPATH="${SYSTEM_PREFIX}/gnu-tar/libexec/gnuman:${MANPATH}"
fi

if [ -d ${SYSTEM_PREFIX}/opt/gnu-tar/libexec/gnubin ]; then
  PATH="${SYSTEM_PREFIX}/gnu-tar/libexec/gnubin:${PATH}"
  MANPATH="${SYSTEM_PREFIX}/gnu-tar/libexec/gnuman:${MANPATH}"
fi

if [ -d ${SYSTEM_PREFIX}/opt/gnu-sed/libexec/gnubin ]; then
  PATH="${SYSTEM_PREFIX}/gnu-sed/libexec/gnubin:${PATH}"
  MANPATH="${SYSTEM_PREFIX}/gnu-sed/libexec/gnuman:${MANPATH}"
fi

if [ -d ${SYSTEM_PREFIX}/opt/curl/bin ]; then
  PATH="${SYSTEM_PREFIX}/opt/curl/bin:$PATH"
  MANPATH="${SYSTEM_PREFIX}/opt/curl/share/man:${MANPATH}"
fi

PATH="${PATH}:./node_modules/.bin"
PATH="${PATH}:${HOME}/.bin"
PATH="${PATH}:${HOME}/.krew/bin"
PATH="${PATH}:${HOME}/go/bin/"
