#!/bin/sh

set -e  # Exit on any error

DOTFILES_DIR="$HOME/dotfiles"
FISH_DIR="$HOME/.config/fish"

echo "Linking fish config files..."

mkdir -p "$FISH_DIR"

# Files to link individually
FILES="config.fish"

# Link top-level files
for file in $FILES; do
  src="$DOTFILES_DIR/fish/$file"
  dest="$FISH_DIR/$file"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up existing $dest to $dest.bak"
    mv "$dest" "$dest.bak"
  fi

  ln -sf "$src" "$dest"
  echo "Linked $file"
done

# Link directories (conf.d, functions, fishline)
DIRS="conf.d functions fishline"

for dir in $DIRS; do
  src="$DOTFILES_DIR/fish/$dir"
  dest="$FISH_DIR/$dir"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up existing $dest to $dest.bak"
    mv "$dest" "$dest.bak"
  fi

  ln -sfn "$src" "$dest"
  echo "Linked $dir/"
done

echo "✅ All fish configs linked!"
