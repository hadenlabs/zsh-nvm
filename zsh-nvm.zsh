#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvm for osx or linux.
#
# Authors:
#   Luis Mayta <luis@hadenlabs.com>
#

# shellcheck disable=SC2034  # Unused variables left for readability
ZSH_NVM_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_NVM_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_NVM_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_NVM_PATH}"/pkg/main.zsh