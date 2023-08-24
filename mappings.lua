---@type MappingsTable
local M = {}

local func = require "custom.func"

M.general = {
  n = {
    [";"] = {
      ":",
      "enter command mode",
      opts = {
        nowait = true
      }
    },
    ["<leader>gg"] = { "<cmd> LazyGit<CR>", "Open Lazygit" }
  }
}

-- more keybinds!

return M
