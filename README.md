# nvim-lspinstall
## What is it?
Recently, neovim removed the `:LspInstall` function. It made it really easy to install language servers for its built in lsp, so I'm making a replacement!
## Installation
You can install nvim-lspinstall with any neovim package manager.
```vim
Plug 'anott03/nvim-lspinstall'
```
## Languages Currently Supported
#### Bash
- Prerequisites: [nodejs](https://nodejs.org) (and npm)
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('bashls')`
#### Cmake
- Prerequisites: [python](https://www.python.org/)
- `:call LspInstall('cmake')`
#### CSS
- Prerequisites: [nodejs](https://nodejs.org) (and npm)
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('cssls')`
#### Docker
- Prerequisites: [nodejs](https://nodejs.org) (and npm)
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('docker')`
#### Go
- There's nothing for us to install! As long as you have go installed on your system, you're good to go. Look [here](https://github.com/golang/tools/blob/master/gopls/doc/vim.md) for more detailed instructions on setting up LSP with go.
#### HTML
- Prerequisites: [nodejs](https://nodejs.org) (and npm)
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('html')`
#### Lua
- Prerequisites: [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages)
- When configuring LSP for lua, you will need the path to your lua-langauge-server installation. Nvim-lspinstall places it at `$HOME/.local/share/nvim/lspinstall/lua-language-server/`.
- `:call LspInstall('sumneko_lua')`
#### Rust
- `:call LspInstall('rust_analyzer')`
#### Typescript/Javascript
- A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('tsserver')`
#### PHP (Intelephense)
- A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('intelephense')`
#### Python (pyls)
- The only prerequisite is that you have python installed.
- `:call LspInstall('pyls')`
#### Svelte
- A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('svelte')`
#### VueJS
- A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('vuels')`
#### Yaml
- A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
- Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
- `:call LspInstall('yamlls')`
## Where Are All the Scripts?
In order to reduce the size of the plugin on your system, all of the install scripts have been moved to a separate repository, which you can find [here](https://github.com/anott03/nvim-lspinstall-scripts). When you install a language server, the plugin will download the necessary script and execute it. By doing this, adding support for new languages won't take up additional space on your system.
#### What does this mean for contributing?
Unfortunately, this does mean contributers have a little bit of extra work. To add an installer, please make a PR with the install script itself at [anott03/nvim-lspinstall-scripts](https://github.com/anott03/nvim-lspinstall-scripts), and make another PR on this repository to update the README and to add the call to your installer.
## Contributing
Contributions would be greatly appreciated!
- Platform: I am currently only working on nvim-lspinstall for linux. If people want to help add support for windows and macOS, that would be great.
- Languages: The more people writing install scripts for languages, the more languages we can support.
## Ultimate Language List
These are the langauges we plan/hope support. It's the same list that was on the [lspconfig github page](https://github.com/neovim/nvim-lspconfig).
- [ ] als
- [ ] angularls
- [X] bashls
- [ ] ccls
- [ ] clangd
- [ ] clojure_lsp
- [X] cmake
- [ ] codeqlls
- [X] cssls
- [ ] dartls
- [ ] denols
- [ ] dhall_lsp_server
- [ ] diagnosticls
- [X] dockerls
- [ ] efm
- [ ] elixirls
- [ ] elmls
- [ ] flow
- [ ] fortls
- [ ] gdscript
- [ ] ghcide
- [X] gopls
- [ ] groovyls
- [ ] hie
- [ ] hls
- [X] html
- [X] intelephense
- [ ] jdtls
- [ ] jedi_language_server
- [ ] jsonls
- [ ] julials
- [ ] kotlin_language_server
- [ ] leanls
- [ ] metals
- [ ] nimls
- [ ] ocamlls
- [ ] ocamllsp
- [ ] omnisharp
- [ ] perlls
- [ ] purescriptls
- [X] pyls
- [ ] pyls_ms
- [ ] pyright
- [ ] r_language_server
- [ ] rls
- [ ] rnix
- [ ] rome
- [X] rust_analyzer
- [ ] scry
- [ ] solargraph
- [ ] sorbet
- [ ] sourcekit
- [ ] sqlls
- [X] sumneko_lua
- [X] svelte
- [ ] terraformls
- [ ] texlab
- [X] tsserver
- [ ] vimls
- [X] vuels
- [X] yamlls
- [ ] zls
