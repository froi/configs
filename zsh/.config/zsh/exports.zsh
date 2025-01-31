home_local_bin="$HOME/.local/bin"
home_bin="$HOME/bin"
postgres_bin="$(brew --prefix postgresql@17)/bin"
# export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/postgresql@17/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@17/include"
export PATH="$home_local_bin:$home_bin:$postgres_bin$PATH"
export POETRY_CONFIG_DIR="$XDG_CONFIG_HOME/pypoetry"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

