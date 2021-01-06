local vim = vim
local runShellCommand = require('nvim-lspinstall/run-shell-command')

function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local installLang = function()
  local lang = vim.g["Lsp_Install_Lang"]
  if lang == 'tsserver' or lang == 'typescript' then
    local cmd = "npm install -g typescript typescript-language-server"
    runShellCommand(cmd)
  end
end

return {
  installLang = installLang
}

