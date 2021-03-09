#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvm::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_NVM_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_NVM_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_NVM_PATH}"/config/linux.zsh
      ;;
    esac
}

nvm::config::main::factory