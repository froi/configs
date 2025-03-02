# Initialize system requirements
eval "$(/opt/homebrew/bin/brew shellenv)"
if type brew &>/dev/null; then
    autoload -Uz compinit
    compinit
fi

fpath=(
    /opt/homebrew/share/zsh/site-functions
    "$XDG_CACHE_HOME"/zsh/completions
    "$XDG_DATA_HOME"/zsh/site-functions
    $fpath
)
eval "$(starship init zsh)"
source "${XDG_CONFIG_HOME}/op/plugins.sh"
eval "$(op completion zsh)"; compdef _op op
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
eval "$(mise activate zsh)"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

source "$ZDOTDIR/exports.zsh"
source "$ZDOTDIR/.aliases/.common.zsh"
source "$ZDOTDIR/funcs.zsh"
eval "$(pyenv init -)"
antidote load
