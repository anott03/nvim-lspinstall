local vim = vim
local runShellCommand = require('nvim-lspinstall/run-shell-command')

local function uname()
  local f = assert(io.popen('uname', 'r'))
  local s = assert(f:read('*a'))
  f:close()
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local linux_cmds = {
  ['bashls']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/bashls.sh | bash',
  ['cmake']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/cmake.sh | bash',
  ['docker']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/docker.sh | bash',
  ['html']          = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/html.sh | bash',
  ['intelephense']  = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/intelephense.sh | bash',
  ['pyls']          = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/pyls.sh | bash',
  ['rust_analyzer'] = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/rust.sh | bash',
  ['sumneko_lua']   = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/lua.sh | bash',
  ['tsserver']      = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/tsserver.sh | bash',
  ['vuels']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall-scripts/master/Linux/vuels.sh | bash',
}

local installLang = function()
  if uname() ~= 'Linux' then
    error('nvim-lspinstall currently only supports linux')
    return
  end
  local lang = vim.g["Lsp_Install_Lang"]
  if linux_cmds[lang] then
    runShellCommand(linux_cmds[lang])
  end
end

return {
  installLang = installLang
}
