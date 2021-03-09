#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvm::install {
    nvm::internal::nvm::install
}

function nvm::load {
    nvm::internal::nvm::load
}

function nvm::post_install {
    message_info "Post Install ${NVM_PACKAGE_NAME}"
    message_success "Success Install ${NVM_PACKAGE_NAME}"
}

function nvm::upgrade {
    nvm::internal::nvm::upgrade
}

function nvm::package::all::install {
    nvm::internal::packages::install
}

function nvm::install::versions {
    nvm::internal::version::all::install
}

function nvm::install::version::global {
    nvm::internal::version::global::install
}
