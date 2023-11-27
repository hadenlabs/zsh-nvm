#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvm::internal::nvm::install {
    message_info "Installing ${NVM_PACKAGE_NAME}"
    curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh" | bash
    nvm::internal::nvm::load
    message_success "Installed ${NVM_PACKAGE_NAME}"
}

function nvm::internal::nvm::load {

  # shellcheck source=/dev/null
  [ -s "${NVM_DIR}/nvm.sh" ] && source "${NVM_DIR}/nvm.sh"
}

function nvm::internal::packages::install {
    if ! core::exists yarn; then
        npm install --global yarn
    fi

    message_info "Installing required yarn packages"
    yarn global add "${NVM_PACKAGES[@]}"
    message_success "Installed required yarn packages"
}

function nvm::internal::version::all::install {
    if ! core::exists nvm; then
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
    if ! core::exists nvm; then
        message_warning "not found nvm"
        return
    fi
    message_info "Installing version global of nvm ${NVM_VERSION_GLOBAL}"
    nvm install "${NVM_VERSION_GLOBAL}"
    nvm alias default "${NVM_VERSION_GLOBAL}"
    message_success "Installed version global of nvm ${NVM_VERSION_GLOBAL}"
}

function nvm::internal::nvm::upgrade {
    message_info "command not implemented ${NVM_PACKAGE_NAME}"
}