# Configurations

> [!IMPORTANT]
> This repo has a new home <https://codeberg.org/froi/configs> and will be deleted in the future

After spending way to long on my dotfiles and going over quite a few iterations of how to manage them over the years
I've landed on this repo.

The goal is to keep config management as simple and clean as possible.

I've standardized on the [XDG base directory specification][xdg-base-dir-spec], using [GNU Stow][gnu-stow] to manage symlinks. You'll
notice that this is a pretty common approach on managing dotfiles (just seach for dotfiles on YouTube to see all the vids).

## Directory structure

The directory structure was picked to work with [GNU Stow][gnu-stow] and the [XDG base directory specification][xdg-base-dir-spec].

## What's managed here

| Config                      |                                                                                                                     |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [bat][bat]                  | Awesome drop in replacement for cat                                                                                 |
| [brewfile][brewfiles]       | I've included my Brewfile here and treat it like any other config file                                              |
| [git][git-config-files]     | Global git configs for commit message format, ignore, and configs                                                   |
| [nvim][astronvim]           | I'm using [AstroNvim][astronvim] as my main editor. Plugins sourced from [AstroNvim community][astronvim-community] |
| [Starship][starship-prompt] | Shell prompt written in Rust                                                                                        |
| [TMUX][tmux]                | Multiplexer of choice using a [custom config][tmux-catppuccin-config] by [Valentin Uveges (@89iuv)][89iuv]          |
| [WezTerm][wezterm]          | Terminal emmulator of choice for it's support of [image rendering][wez-term-img]                                    |
| [Yazi][yazi]                | Terminal based file browser using Catppuccin as it's theme.                                                         |
| [ZSH][zsh]                  | Shell of choice and the default on MacOS. I make use of .zshenv and .zshrc in this repo.                            |

> [!IMPORTANT]
> It's important to note that the [XDG base directory spec][xdg-base-dir-spec] is not supported by default and needs to be configured.
> I use the _.zshenv_ file to ensure that these configs are always set for every ZSH shell invocation.
> I recommend understanding how [ZSH's startup files][zsh-startup-files] work.

[xdg-base-dir-spec]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
[gnu-stow]: https://www.gnu.org/software/stow/
[tmux-catppuccin-config]: https://github.com/catppuccin/tmux/discussions/317#discussioncomment-11064512
[89iuv]: https://github.com/89iuv
[zsh-startup-files]: https://zsh.sourceforge.io/Intro/intro_3.html
[wezterm]: https://wezfurlong.org/wezterm/
[wez-term-img]: https://wezfurlong.org/wezterm/imgcat.html
[yazi]: https://yazi-rs.github.io
[tmux]: https://github.com/tmux/tmux/wiki
[astronvim]: https://astronvim.com
[starship-prompt]: https://starship.rs
[bat]: https://github.com/sharkdp/bat
[brewfiles]: https://github.com/Homebrew/homebrew-bundle
[git-config-files]: https://git-scm.com/docs/git-config#SCOPES
[zsh]: https://zsh.sourceforge.io
[astronvim-community]: https://astronvim.github.io/astrocommunity/
