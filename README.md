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
## Langauges Coming Soon
These are the languages we are actively developing support for. The plan/hope is to ultimately hit every language [listed by nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md).
- C / C++
## Where Are All the Scripts?
In order to reduce the size of the plugin on your system, all of the install scripts have been moved to a seperate repository, which you can find [here](https://github.com/anott03/nvim-lspinstall-scripts). When you install a language server, the plugin will download the necessary script and execupte it. By doing this, adding support for new langauges won't take up additional space on your system.
## Contributing
Contributions would be greatly appreciated!
- Platform: I am currently only working on nvim-lspinstall for linux. If people want to help add support for windows and macOS, that would be great.
- Langauges: The more people writing install scripts for languages, the more languages we can support.
