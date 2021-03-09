#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export YARN_PATH="${HOME}"/.yarn
export NVM_DIR="${HOME}/.nvm"
export NVM_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export NVM_PACKAGE_NAME=nvm
export NVM_VERSIONS=(
    10.16.3
    12.13.0
    12.14.1
    12.14.5
)
export NVM_VERSION_GLOBAL=12.14.5
export NVM_PACKAGES=(
    lambda-pure-prompt
    pure-prompt prettier
    localtunnel typescript
    next webpack
    standardx
    javascript-typescript-langserver
    typescript-language-server
    npm-check-updates
    js-to-ts-converter
    bit-bin
    @compare/github
    codesandbox
    lerna
    commitizen
    @compare/github
    get-graphql-schema
    surge
)
