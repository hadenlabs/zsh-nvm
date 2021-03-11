<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `README.yaml`
  ** 2) Run`make readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

# zsh-nvm

[![Lint](https://github.com/hadenlabs/zsh-nvm/actions/workflows/lint.yml/badge.svg?branch=develop)](https://github.com/hadenlabs/zsh-nvm/actions) [![Issues](https://img.shields.io/github/issues/hadenlabs/zsh-nvm.svg)](https://github.com/hadenlabs/zsh-nvm/issues) [![Latest Release](https://img.shields.io/github/release/hadenlabs/zsh-nvm.svg)](https://github.com/hadenlabs/zsh-nvm/releases)

zsh-nvm plugin for zsh.

## :page_facing_up: License

zsh-nvm is an open-sourced software licensed under the [MIT license](LICENSE.md).

## Requirements

This is a list of plugins that need to be installed previously to enjoy all the goodies of this configuration:

```{bash}
https://github.com/hadenlabs/zsh-core
```

## Installation

### [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) users

If you're using [oh-my-zsh](https://gitub.com/robbyrussell/oh-my-zsh), install this plugin by doing the following:

1.  Go to your oh-my-zsh custom plugins directory -`cd ~/.oh-my-zsh/custom/plugins`
2.  Clone the plugin `bash git clone https://github.com/hadenlabs/zsh-nvm`bash
3.  Edit your `.zshrc` and add `plugins=( ... zsh-nvm )` to your list of plugins
4.  Open a new terminal and enjoy!

### [antigen](https://github.com/zsh-users/antigen) users

If you're using [Antigen](https://github.com/zsh-lovers/antigen), install this plugin by doing the following:

1.  Add `antigen bundle hadenlabs/zsh-nvm` to your `.zshrc` where you're adding your other plugins.
2.  Either open a new terminal to force zsh to load the new plugin, or run `antigen bundle hadenlabs/zsh-nvm` in a running zsh session.
3.  Enjoy!

### [antibody](https://github.com/getantibody/antibody) users

If you're using [Antigen](https://github.com/getantibody/antibody), install this plugin by doing the following:

1.  Add :

```{.sourceCode .bash}
     antibody bundle hadenlabs/zsh-nvm
```

to your `.zshrc` where you're adding your other plugins.

2.  Either open a new terminal to force zsh to load the new plugin, or run `antibody bundle hadenlabs/zsh-nvm` in a running zsh session.
3.  Enjoy!

## Functions

zsh nvm includes a small utility `nvm` to fetch and install new packages.

#### `nvm::install`

Install nvm.

#### `nvm::load`

Load path nvm.

#### `nvm::upgrade`

Upgrade version nvm.

#### `nvm::package::all::install`

Install all package of nvm.

#### `nvm::install::versions`

Install versions of config for nvm.

#### `nvm::install::version::global`

Install a version global of nvm.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/zsh-nvm/issues), send us an [email](email) or join our [Slack Community](slack).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/hadenlabs/zsh-nvm/issues) to report any bugs or file feature requests.

### Developing

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork
5.  Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to rebase the latest changes from "upstream" before making a pull request!

### Versioning

Releases are managed using github release feature. We use [Semantic Versioning](http://semver.org) for all the releases. Every change made to the code base will be referred to in the release notes (except for cleanups and refactorings).

## Copyright

Copyright © 2018-2021 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## Don't forget to 🌟 Star 🌟 the repo if you like zsh-nvm

[Your feedback is appreciated](https://github.com/hadenlabs/zsh-nvm/issues)
