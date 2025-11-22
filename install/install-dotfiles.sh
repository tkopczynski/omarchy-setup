#!/bin/bash

cd "$(dirname "$0")/../dotfiles" || exit 1

for dir in */; do
    package="${dir%/}"
    echo "Stowing $package..."
    stow -t "$HOME" "$package"
done

echo "Done!"
