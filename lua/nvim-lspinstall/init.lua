local vim = vim

local linux_cmds = {
  'bashls',
  'cmake',
  'cssls',
  'docker',
  'elmls',
  'html',
  'intelephense',
  'jsonls',
  'purescriptls',
  'pyls',
  'rust_analyzer',
  'sumneko_lua',
  'svelte',
  'tsserver',
  'vuels',
  'yamlls',
}

local configs = require('nvim-lspinstall/configs')
local installLang = function()
  local lang = vim.g["Lsp_Install_Lang"]
  if configs[lang] == nil then
    pcall(require('nvim-lspinstall/langs/'..lang))
  end
  local config = configs[lang]
  if not config then
    return print("Invalid server name:", lang)
  end
  if not config.install then
    return print(lang, "can't be automatically installed (yet)")
  end
  if config.install_info().is_installed then
    return print(lang, "is already installed")
  end
  config.install()
end

local get_lsps = function()
  return vim.tbl_values(linux_cmds)
end

return {
  installLang = installLang,
  get_lsps = get_lsps
}
