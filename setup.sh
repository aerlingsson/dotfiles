#!/usr/bin/env bash

sudo pacman -Syu --noconfirm \
  stow \
  ansible \
  zsh \
  tmux \
  hyprlauncher \
  hyprlock \
  hyprpaper \
  hyprpolkitagent \
  waybar \
  neovim \
  git \
  make \
  unzip \
  gcc \
  ttf-jetbrains-mono-nerd \
  otf-firamono-nerd \
  dotnet-sdk \
  dotnet-runtime \
  dotnet-host \
  dotnet-targeting-pack \
  tree-sitter-cli \
  luarocks \
  npm \
  pavucontrol

cd "$HOME/dotfiles" || exit 1

mkdir -p "$HOME/.config"

for dir in */; do
    dir=${dir%/}
    if [ "$dir" != ".git" ]; then
        echo "Linking: $dir"
        stow -R "$dir"
    fi
done

echo "Setup complete!"
