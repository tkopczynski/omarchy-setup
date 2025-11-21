# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a dotfiles repository for Arch Linux using GNU Stow for symlink management. Configuration packages are stored in `dotfiles/` with each subdirectory representing a stow package.

## Stow Structure

Each package in `dotfiles/` mirrors the home directory structure:
```
dotfiles/<package>/.config/<app>/...  →  ~/.config/<app>/...
```

Current packages: `alacritty`, `hypr`, `starship`

## Commands

Install stow:
```bash
./install/install-stow.sh
```

Deploy a package (run from `dotfiles/` directory):
```bash
cd dotfiles && stow <package>
```

Simulate deployment (dry run):
```bash
cd dotfiles && stow --no -v <package>
```

## Package Notes

- **hypr**: Hyprland window manager configs (input settings, monitor scaling)
- **alacritty**: Terminal emulator config; imports theme from `~/.config/omarchy/current/theme/alacritty.toml`
- **starship**: Shell prompt configuration
