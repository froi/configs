#!/usr/bin/env zsh

# setopts CORRECT,ERR_EXIT,XTRACE
set -0ex

echo "Installing Brew"
if type brew &>/dev/null; then
    echo "Brew already installed, skipping installation"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing software from Brewfile"
brew bundle install --file brew/.config/Brewfile

echo "Installing dotfiles"
stow

echo "Sourcing new ZSH environment"
source "$HOME/.zshenv"

echo "Installing AstroNvim"
nvim_dir="$XDG_CONFIG_HOME"/nvim

if [ -d "$nvim_dir" ]; then
    echo "The directory $DIR exists."
    vared -p "Create a backup and reinstall? [y/N]" -c response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
        mv "$nvim_dir" "$nvim_dir".bk_up
        git clone --depth 1 https://github.com/AstroNvim/template "$nvim_dir"
        rm -rf "$nvim_dir/.git"
    else
        echo "Skipping NVIM installation"
    fi
else
    echo "Installing NVIM to $nvim_dir"
    git clone --depth 1 https://github.com/AstroNvim/template "$nvim_dir"
    rm -rf "$nvim_dir"/.git
fi

echo "Installing TPM"
git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"

echo "Setting up Catppuccin/tmux"
catppuccin_dir="$XDG_CONFIG_HOME/tmux/plugins/catppuccin"
mkdir -p catppuccin_dir
git clone -b v2.1.2 https://github.com/catppuccin/tmux.git $catppuccin_dir

echo "Creating ZSH completion directories"
mkdir -p "$XDG_DATA_HOME"/zsh/site-functions
mkdir -p "$XDG_CACHE_HOME"/zsh/completions

echo "Setup bat themes"
bat_config_dir="$(bat --config-dir)/themes"
if [ ! -d "$bat_config_dir" ]; then
    mkdir -p "$(bat --config-dir)/themes"
fi
curl -o "$(bat --config-dir)/themes/Catppuccin Latte.tmTheme" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
curl -o "$(bat --config-dir)/themes/Catppuccin Frappe.tmTheme" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
curl -o "$(bat --config-dir)/themes/Catppuccin Macchiato.tmTheme" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
curl -o "$(bat --config-dir)/themes/Catppuccin Mocha.tmTheme" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme

if command -v mise &> /dev/null; then
    mise install rust@latest
    mise install go@latest
    mise install node@latest
    mise install python@latest

    mise use -q -g rust@latest
    mise use -q -g go@latest
    mise use -q -g node@latest
    mise use -q -g python@latest
else
    echo "mise isn't installed! Follow the Getting Started guide https://mise.jdx.dev/getting-started.html#getting-started"
fi

if command -v rustup &> /dev/null; then
    echo "Creating Rust completions"
    rustup completions zsh rustup > "$XDG_CACHE_HOME"/zsh/completions/_rustup; compdef _rustup rustup
    rustup completions zsh cargo > "$XDG_CACHE_HOME"/zsh/completions/_cargo; compdef _cargo cargo
else
    echo "rustup not installed. You need to install Rust https://www.rust-lang.org/tools/install.
    This script should have used mise to install Rust."
fi
if command -v cargo &> /dev/null; then
    cargo install --locked tree-sitter-cli
else
    echo "cargo not installed. You need to install Rust https://www.rust-lang.org/tools/install.
    This script should have used mise to install Rust."
fi


echo "Sourcing ZSHRC"
source "$ZDOTDIR/.zshrc"
