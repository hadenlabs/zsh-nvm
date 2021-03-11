#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvm::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_NVM_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_NVM_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_NVM_PATH}"/internal/linux.zsh
      ;;
    esac
}

nvm::internal::main::factory

nvm::internal::nvm::load

if ! core::exists curl; then nvm::internal::curl::install; fi
if ! core::exists nvm; then nvm::internal::nvm::install; fi
