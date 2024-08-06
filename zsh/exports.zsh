export PATH="$PATH:/Users/froi/Library/Application Support/JetBrains/Toolbox/scripts"
export GPG_TTY=$TTY
export EDITOR="nvim"
export VISUAL="nvim"
export ADOTDIR="$ZDOTDIR/antigen"
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/froi/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH="$(brew --prefix postgresql@16)/bin:$PATH"

[ -f "${ZDOTDIR}/secrets.zsh" ] && source "${ZDOTDIR}/secrets.zsh" 
