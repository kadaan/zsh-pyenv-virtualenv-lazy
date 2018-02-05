# Lazy load pyenv-virtualenv
if type pyenv-virtualenv &> /dev/null; then
  function pyenv-virtualenv() {
    unset pyenv-virtualenv
    eval "$(command pyenv virtualenv-init -)"
    pyenv-virtualenv "$@"
  }
fi
