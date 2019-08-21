#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -s ${BASEDIR}/zsh/zshrc ~/.zshrc
ln -s ${BASEDIR}/zsh/zshenv ~/.zshenv

# git
ln -s ${BASEDIR}/git/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/git/gitignore ~/.gitignore

# Sublime Text
if [[ "$OSTYPE" == "linux-gnu" ]]; then # Linux
	# User Preferences
    rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
    ln -s ${BASEDIR}/sublime-text/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
    
    # Keyboard Bindings
    rm ~/.config/sublime-text-3/Packages/User/Default.sublime-keymap
    rm "~/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap"
    ln -s ${BASEDIR}/sublime-text/Default.sublime-keymap ~/.config/sublime-text-3/Packages/User/Default.sublime-keymap
elif [[ "$OSTYPE" == "darwin"* ]]; then # macOS
	# User Preferences
    rm "~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
    ln -s ${BASEDIR}/sublime-text/Preferences.sublime-settings "~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
    
    # Keyboard Bindings
    rm "~/Library/Application Support/Sublime Text 3/Packages/User/Default.sublime-keymap"
    rm "~/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
    ln -s ${BASEDIR}/sublime-text/Default.sublime-keymap "~/Library/Application Support/Sublime Text 3/Packages/User/Default.sublime-keymap"
fi
