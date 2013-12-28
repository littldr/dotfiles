python_version_info() {
  if (( $+commands[pyenv] ))
  then
    py_env="python "
    if [[ 0 -ne $(pyenv virtualenvs|grep '*'|wc -l) ]]
    then
      py_env=""
    fi

    echo "$py_env$(pyenv version-name)"
  fi
}