#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvm::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_NVM_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_NVM_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_NVM_PATH}"/pkg/linux.zsh
      ;;
    esac
}

nvm::pkg::main::factory
