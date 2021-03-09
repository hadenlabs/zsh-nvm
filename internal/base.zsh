#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvm::internal::nvm::install {
    message_info "Installing ${NVM_PACKAGE_NAME}"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
    nvm::internal::nvm::load
    message_success "Installed ${NVM_PACKAGE_NAME}"
}

function nvm::internal::nvm::load {
    [ -e "${YARN_PATH}/bin" ] && export PATH="${PATH}:${YARN_PATH}/bin"
    # shellcheck source=/dev/null
    [ -s "${NVM_DIR}/nvm.sh" ] && source "${NVM_DIR}/nvm.sh" # This loads nvm
}

function nvm::internal::curl::install {
    message_info "Installing curl for ${NVM_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${NVM_MESSAGE_BREW}"
    fi
    brew install curl
    message_success "Installed curl for ${NVM_PACKAGE_NAME}"
}

function nvm::internal::packages::install {
    if ! type -p yarn > /dev/null; then
        npm install --global yarn
    fi

    message_info "Installing required yarn packages"

    for package in "${NVM_PACKAGES[@]}"; do
        yarn global add "${package}"
    done
    message_success "Installed required yarn packages"
}

function nvm::internal::version::all::install {
    if ! type -p nvm > /dev/null; then
        message_warning "not found nvm"
        return
    fi

    for version in "${NVM_VERSIONS[@]}"; do
        message_info "Install version of nvm ${version}"
        nvm install "${version}"
        message_success "Installed version of nvm ${version}"
    done
    nvm use "${NVM_VERSION_GLOBAL}"
    message_success "Installed versions of nvm"

}

function nvm::internal::version::global::install {
    if ! type -p nvm > /dev/null; then
        message_warning "not found nvm"
        return
    fi
    message_info "Installing version global of nvm ${NVM_VERSION_GLOBAL}"
    nvm install "${NVM_VERSION_GLOBAL}"
    nvm use "${NVM_VERSION_GLOBAL}"
    message_success "Installed version global of nvm ${NVM_VERSION_GLOBAL}"
}

function nvm::internal::nvm::upgrade {
    message_info "command not implemented ${NVM_PACKAGE_NAME}"
}