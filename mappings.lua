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
        ["<leader>gg"] = {func.lazygit, "Open Lazygit"}
    }
}

-- more keybinds!

return M
