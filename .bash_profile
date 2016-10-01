export HISTSIZE=1000
export HISTFILESIZE=2000

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

test -r ~/.bashrc && . ~/.bashrc
