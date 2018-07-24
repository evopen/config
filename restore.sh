#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

mkdir -p ~/.config/fish
mkdir ~/.SpaceVim.d/
cp $DIR/config/spacemacs ~/.spacemacs
cp $DIR/config/config.fish ~/.config/fish/config.fish
cp $DIR/config/profile ~/.profile
cp $DIR/config/clang-format ~/.clang-format
cp $DIR/config/init.toml ~/.SpaceVim.d/init.toml
cp $DIR/config/gitconfig ~/.gitconfig

if [ "$1" = "docker" ]; then
  sed -i 's/127.0.0.1/host.docker.internal/g' ~/.config/fish/config.fish
  sed -i -e '4d' ~/.config/fish/config.fish
fi
