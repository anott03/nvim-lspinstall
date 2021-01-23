fun! LspInstall(lang)
  lua for k in pairs(package.loaded) do if k:match("^nvim-lspinstall") then package.loaded[k] = nil end end
  let g:Lsp_Install_Lang = a:lang
  lua require('nvim-lspinstall').installLang()
endfun

command! -nargs=1 -complete=custom,ListLsps InstallLanguageServer :call LspInstall('<args>')
command! -nargs=1 -complete=custom,ListLsps InstallLS :call LspInstall('<args>')

function! ListLsps(arg, line, pos) abort
  let l:list = luaeval('require("nvim-lspinstall").get_lsps()')
  return join(list, "\n")
endfunction
