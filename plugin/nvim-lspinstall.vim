fun! LspInstall(lang)
  lua for k in pairs(package.loaded) do if k:match("^nvim-lspinstall") then package.loaded[k] = nil end end
  let g:Lsp_Install_Lang = a:lang
  lua require('nvim-lspinstall').installLang()
endfun
