#!/bin/sh

cp ./config/spacemacs ~/.spacemacs
cp ./config/config.fish ~/.config/fish/config.fish
cp ./config/profile ~/.profile
cp ./config/clang-format ~/.clang-format
cp ./config/init.toml ~/.SpaceVim.d/init.toml

if [ "$1" = "docker" ]; then
  sed -i 's/127.0.0.1/host.docker.internal/g' ~/.config/fish/config.fish
  sed -i -e '4d' ~/.config/fish/config.fish
fi
