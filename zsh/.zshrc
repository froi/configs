# Added by Toolbox App
eval "$(starship init zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  #FPATH="$(brew --prefix)/share/zsh/site-functions:$ZDOTDIR/plugins/zsh-completions/src:${FPATH}"
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source "$(brew --prefix)/opt/asdf/libexec/asdf.sh"
source $ZDOTDIR/exports.zsh
source $ZDOTDIR/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting@0.7.1
antigen bundle zsh-users/zsh-completions@0.34.0
antigen bundle zsh-users/zsh-autosuggestions@v0.7.0
antigen bundle zsh-users/zsh-history-substring-search@v1.0.2

#source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source $ZDOTDIR/.aliases/.git.zsh
source $ZDOTDIR/.aliases/.common.zsh

# This needs to come after the exports are sourced
eval "$(pyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/froi/.google-cloud-sdk/path.zsh.inc' ]; then . '/Users/froi/.google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/froi/.google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/froi/.google-cloud-sdk/completion.zsh.inc'; fi

antigen apply
