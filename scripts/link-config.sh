#!/usr/bin/env bash
set -euo pipefail

echo "Linking config files..."

TARGET_CONFIG_DIR="$HOME/.config"
SOURCE_CONFIG_DIR="$(realpath ../configs)"

mkdir -p "$TARGET_CONFIG_DIR"

# Loop through every item in source config directory
for item in "$SOURCE_CONFIG_DIR"/*; do
    name="$(basename "$item")"
    target="$TARGET_CONFIG_DIR/$name"

    # If target exists and is not a symlink, skip or back it up
    if [[ -e "$target" && ! -L "$target" ]]; then
        echo "⚠️  Skipping $name: exists and is not a symlink (backup manually if needed)"
        continue
    fi

    # Remove existing symlink to replace it
    if [[ -L "$target" ]]; then
        rm "$target"
    fi

    # Create symbolic link
    ln -s "$item" "$target"
    echo "✔ Linked $name"
done

echo "Done!"
