local vim = vim

local linux_cmds = {
  ['bashls']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/bashls.sh | bash',
  ['cmake']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/cmake.sh | bash',
  ['cssls']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/cssls.sh | bash',
  ['docker']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/docker.sh | bash',
  ['elmls']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/elmls.sh | bash',
  ['html']          = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/html.sh | bash',
  ['intelephense']  = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/intelephense.sh | bash',
  ['jsonls']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/jsonls.sh | bash',
  ['purescriptls']  = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/purescriptls.sh | bash',
  ['pyls']          = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/pyls.sh | bash',
  ['rust_analyzer'] = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/rust.sh | bash',
  ['sumneko_lua']   = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/lua.sh | bash',
  ['svelte']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/svelte.sh | bash',
  ['tsserver']      = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/tsserver.sh | bash',
  ['vuels']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/vuels.sh | bash',
  ['yamlls']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/yamlls.sh | bash',
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
  return vim.tbl_keys(linux_cmds)
end

return {
  installLang = installLang,
  get_lsps = get_lsps
}
