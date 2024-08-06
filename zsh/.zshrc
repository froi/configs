# Initialize system requirements
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
source "$(brew --prefix asdf)/libexec/asdf.sh"
eval "$(direnv hook zsh)"

if type brew &>/dev/null; then
  #FPATH="$(brew --prefix)/share/zsh/site-functions:$ZDOTDIR/plugins/zsh-completions/src:${FPATH}"
  # FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# My custom settings
# My custom settings
source $ZDOTDIR/exports.zsh
source $ZDOTDIR/.aliases/.common.zsh

# Antigen configs
source $ZDOTDIR/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting@0.7.1
antigen bundle zsh-users/zsh-completions@0.35.0
antigen bundle zsh-users/zsh-autosuggestions@v0.7.0
antigen bundle zsh-users/zsh-history-substring-search@v1.0.2

antigen apply

# Application specific settings
eval "$(starship init zsh)"
source "$(brew --prefix asdf)/libexec/asdf.sh"
eval "$(direnv hook zsh)"
eval "$(op completion zsh)"; compdef _op op
eval "$(pyenv init -)"
source "${XDG_CONFIG_HOME}/op/plugins.sh"
source <(fzf --zsh)
eval "$(zoxide init zsh --cmd cd)"
source "${XDG_CONFIG_HOME}/zsh/funcs.zsh"

# The next line updates PATH for the Google Cloud SDK installed by ASDF
current_gcloud=$(asdf current gcloud | awk '{ print $2 }')
if [ -f "$HOME/.asdf/installs/gcloud/${current_gcloud}/path.zsh.inc" ]; then . "$HOME/.asdf/installs/gcloud/${current_gcloud}/path.zsh.inc"; fi
if [ -f "$HOME/.asdf/installs/gcloud/${current_gcloud}/completion.zsh.inc" ]; then . "$HOME/.asdf/installs/gcloud/${current_gcloud}/completion.zsh.inc"; fi

