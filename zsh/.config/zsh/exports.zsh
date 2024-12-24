home_local_bin="$HOME/.local/bin"
home_bin="$HOME/bin"
postgres_bin="$(brew --prefix postgresql@16)/bin"

export PATH="$home_local_bin:$home_bin:$postgres_bin$PATH"
export POETRY_CONFIG_DIR="$XDG_CONFIG_HOME/pypoetry"
