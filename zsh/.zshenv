#!/usr/bin/env zsh

export TERM='xterm-256color'

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export DOTFILES="$XDG_CONFIG_HOME/.dotfiles"
export POETRY_CONFIG_DIR="$XDG_CONFIG_HOME/pypoetry"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

