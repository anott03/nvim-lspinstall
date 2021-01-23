fun! LspInstall(lang)
  lua for k in pairs(package.loaded) do if k:match("^nvim-lspinstall") then package.loaded[k] = nil end end
  let g:Lsp_Install_Lang = a:lang
  lua require('nvim-lspinstall').installLang()
endfun

command! -nargs=1 -complete=custom,ListLsps InstallLsp :call LspInstall('<args>')

function! ListLsps(A, L, P) abort
  let l:langs = luaeval('require("nvim-lspinstall").get_lsps()')
  return l:langs
endfunctio
