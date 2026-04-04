#!/bin/bash
set -e

# Install plugins for pi coding agent

echo "Installing pi plugins..."

# Check for npm
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed"
    exit 1
fi

# get-shit-done - GSD workflow system
echo "Installing get-shit-done..."
npx get-shit-done-cc@latest --pi --global

# linear-cli - for linear skill
echo "Installing linear-cli..."
npm config set @dotbrains:registry https://npm.pkg.github.com
npm config set //npm.pkg.github.com/:_authToken "$(gh auth token)" 2>/dev/null || true
npm install -g @dotbrains/linear-cli

# notion-cli - for notion skill
echo "Installing notion-cli..."
npm install -g @dotbrains/notion-cli

# pi-github - GitHub extension for Pi (issues, PRs, discussions, file search)
echo "Installing pi-github..."
pi install git:github.com/maria-rcks/pi-github

# pi-dex - Codex UI theme for Pi
echo "Installing pi-dex..."
pi install git:github.com/maria-rcks/pi-dex

# superpowers - NOT AVAILABLE YET for pi
# See https://github.com/obra/superpowers for supported platforms
echo ""
echo "Note: superpowers is not yet available for pi."
echo "See https://github.com/obra/superpowers for supported platforms."
echo ""

echo "Done! Restart pi to load the plugins."
