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
  ['bashls']        = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall/master/scripts/Linux/bashls.sh | bash',
  ['cmake']         = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall/master/scripts/Linux/cmake.sh | bash',
  ['html']          = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall/master/scripts/Linux/html.sh | bash',
  ['rust_analyzer'] = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall/master/scripts/Linux/rust.sh | bash',
  ['sumneko_lua']   = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall/master/scripts/Linux/lua.sh | bash',
  ['tsserver']      = 'curl https://raw.githubusercontent.com/anott03/nvim-lspinstall/master/scripts/Linux/tsserver.sh | bash',
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
