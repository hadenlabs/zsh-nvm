#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export YARN_PATH="${HOME}"/.yarn
export NVM_DIR="${HOME}/.nvm"
export NVM_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-core branch:develop"
export NVM_PACKAGE_NAME=nvm
export NVM_VERSIONS=(
    14.15.5
    14.16.1
)
export NVM_VERSION_GLOBAL=14.16.1
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
    markdown-link-check
    yo
    generator-code
    nativefier
    vsce
)
