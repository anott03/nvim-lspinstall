# nvim-lspinstall
## What is it?
Recently, neovim removed the `:LspInstall` function. It made it really easy to install language servers for its built in lsp, so I'm making a replacement!
## Installation
You can install nvim-lspinstall with any neovim package manager.
```vim
Plug 'anott03/nvim-lspinstall'
```
## Languages Currently Supported
- Bash
  - Prerequisites: [nodejs](https://nodejs.org) (and npm)
  - Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
  - `:call LspInstall('bashls')`
- Cmake
  - Prerequisites: [python](https://www.python.org/)
  - `:call LspInstall('cmake')`
- Docker
  - Prerequisites: [nodejs](https://nodejs.org) (and npm)
  - Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
  - `:call LspInstall('docker')`
- Go
  - There's nothing for us to install! As long as you have go installed on your system, you're good to go. Look [here](https://github.com/golang/tools/blob/master/gopls/doc/vim.md) for more detailed instructions on setting up LSP with go.
- HTML
  - Prerequisites: [nodejs](https://nodejs.org) (and npm)
  - Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
  - `:call LspInstall('html')`
- Lua
  - Prerequisites: [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages)
  - When configuring LSP for lua, you will need the path to your lua-langauge-server installation. Nvim-lspinstall places it at `$HOME/.local/share/nvim/lspinstall/lua-language-server/`.
  - `:call LspInstall('sumneko_lua')`
- Rust
  - `:call LspInstall('rust_analyzer')`
- Typescript/Javascript
  - A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
  - Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
  - `:call LspInstall('tsserver')`
- PHP (Intelephense)
  - A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
  - Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
  - `:call LspInstall('intelephense')`
- Python (pyls)
  - The only prerequisite is that you have python installed.
  - `:call LspInstall('pyls')`
## Languages Coming Soon
These are the languages we are actively developing support for. The plan/hope is to ultimately hit every language [listed by nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md).
- C / C++
## Where Are All the Scripts?
In order to reduce the size of the plugin on your system, all of the install scripts have been moved to a separate repository, which you can find [here](https://github.com/anott03/nvim-lspinstall-scripts). When you install a language server, the plugin will download the necessary script and execute it. By doing this, adding support for new languages won't take up additional space on your system.
#### What does this mean for contributing?
Unfortunately, this does mean contributers have a little bit of extra work. To add an installer, please make a PR with the install script itself at [anott03/nvim-lspinstall-scripts](https://github.com/anott03/nvim-lspinstall-scripts), and make another PR on this repository to update the README and to add the call to your installer.
## Contributing
Contributions would be greatly appreciated!
- Platform: I am currently only working on nvim-lspinstall for linux. If people want to help add support for windows and macOS, that would be great.
- Languages: The more people writing install scripts for languages, the more languages we can support.
