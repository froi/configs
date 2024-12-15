# Initialize system requirements
eval "$(/opt/homebrew/bin/brew shellenv)"
if type brew &>/dev/null; then
    autoload -Uz compinit
    compinit
fi

eval "$(starship init zsh)"
source "${XDG_CONFIG_HOME}/op/plugins.sh"
eval "$(op completion zsh)"; compdef _op op
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

antidote load
# eval "$(direnv hook zsh)"
# Application specific settings
# eval "$(pyenv init -)"

# source $ZDOTDIR/exports.zsh
# source $ZDOTDIR/.aliases/.common.zsh
# source "$ZDOTDIR/funcs.zsh"

# Antidote configs
# source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
# antigen use oh-my-zsh
# antigen bundle git
# antigen bundle command-not-found

# antigen bundle zsh-users/zsh-syntax-highlighting@0.7.1
# antigen bundle zsh-users/zsh-completions@0.35.0
# antigen bundle zsh-users/zsh-autosuggestions@v0.7.0
# antigen bundle zsh-users/zsh-history-substring-search@v1.0.2

# antigen apply
