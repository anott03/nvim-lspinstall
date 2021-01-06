local vim = vim

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
    local res = os.capture("npm install -g typescript typescript-language-server")
    if (res.find("permission denied")) then
      error("you need sudo priveledges to install the server")
    end
  end
end

return {
  installLang = installLang
}

