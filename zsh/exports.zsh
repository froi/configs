RANCHER_BIN="/Users/froi/.rd/bin"
export GPG_TTY=$TTY
export EDITOR="nvim"
export VISUAL="nvim"
export ADOTDIR="$ZDOTDIR/antigen"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH="$RANCHER_BIN:$PATH:/Users/froi/Library/Application Support/JetBrains/Toolbox/scripts"
export PATH="$(brew --prefix postgresql@16)/bin:$PATH"

[ -f "${ZDOTDIR}/secrets.zsh" ] && source "${ZDOTDIR}/secrets.zsh" 
