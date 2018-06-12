# Lazy load pyenv-virtualenv
if type pyenv-virtualenv &> /dev/null; then
  function pyenv-virtualenv() {
    unset -f pyenv-virtualenv > /dev/null 2>&1
    eval "$(command pyenv virtualenv-init -)"
    pyenv-virtualenv "$@"
  }
fi
