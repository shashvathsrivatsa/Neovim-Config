_G.markview_preview_enabled = true

local function markview_toggle()
    local buf = vim.api.nvim_get_current_buf()
    local state = require("markview.state")
    local actions = require("markview.actions")

    if not state.buf_attached(buf) then
        actions.attach(buf)
    end

    local buf_state = state.get_buffer_state(buf, false)
    if buf_state and buf_state.enable then
        actions.disable(buf)
        _G.markview_preview_enabled = false
    else
        actions.enable(buf)
        _G.markview_preview_enabled = true
    end
end

vim.keymap.set('n', '<leader>m', markview_toggle)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        if not _G.markview_preview_enabled then
            local buf = vim.api.nvim_get_current_buf()
            vim.schedule(function()
                require("markview.actions").disable(buf)
            end)
        end
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    once = true,
    callback = markview_toggle,
})
