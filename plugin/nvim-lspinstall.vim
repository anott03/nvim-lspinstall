fun! LspInstall(lang)
  let g:Lsp_Install_Lang = a:lang
  lua require('nvim-lspinstall').installLang()
endfun
