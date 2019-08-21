#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -s ${BASEDIR}/zsh/zshrc ~/.zshrc
ln -s ${BASEDIR}/zsh/zshenv ~/.zshenv

# git
ln -s ${BASEDIR}/git/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/git/gitignore ~/.gitignore
