local vim = vim

-- run a shell command and view the output in a floating window
-- this function was copied (and slightly modified) from my other
-- neovim extension, termight.nvim (github.com/anott03/termight.nvim)
local function runShellCommand(cmd)
  -- getting the current window width and height
  -- as well as defining the factor size the floating
  -- window on
  local stats = vim.api.nvim_list_uis()[1]
  local width = stats.width;
  local height = stats.height;
  local factor = 0.9;

  -- creating a new buffer
  local bufh = vim.api.nvim_create_buf(false, true)
  -- creating the window
  vim.api.nvim_open_win(bufh, true, {
    relative = "editor",
    width    = math.floor(width * factor),
    height   = math.floor(height * factor),
    col      = math.floor(width * (1 - factor) / 2),
    row      = math.floor(height * (1 - factor) / 2)
  })
  vim.api.nvim_exec("set nonu norelativenumber signcolumn=no colorcolumn=", nil)

  vim.cmd(":term")
  -- definitions of some key sequences
  local carriage_return = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
  local exit_term = vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true)

  -- a super hacky way to remove the prompt from the window
  -- vim.api.nvim_feedkeys("aexport PS1='' && clear", "n", {})
  -- vim.api.nvim_feedkeys(carriage_return, "n", {})
  vim.api.nvim_feedkeys(exit_term, "n", {})

  -- insert the command into the terminal
  vim.api.nvim_feedkeys("a" .. cmd, "n", {})
  vim.api.nvim_feedkeys(carriage_return, "n", {})

  -- exit insert mode
  vim.api.nvim_feedkeys(exit_term, "n", {})
end

return runShellCommand
