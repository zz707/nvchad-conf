local F = {}

F.lazygit = function()
    local nvterm = require "nvterm.terminal"
    local terminal = nvterm.new "float"
    local id = terminal.job_id

    -- The previous id was not always right for some reason so I made a fallback, 
    -- as you can only have one floating terminal
    for _, term in pairs(nvterm.list_terms()) do
        if term.type == "float" then
            id = term.job_id
        end
    end

    if vim.api.nvim_buf_is_valid(id) then
        vim.api.nvim_chan_send(id, "lazygit && exit\n")
    end
end

return F
