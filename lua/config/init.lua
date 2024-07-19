require('config.remap')
require('config.set')

-- require('onedark').setup {
--     style = 'warmer',
-- }

require('tokyonight').setup {
    style = 'moon',
    transparent = true,

    on_colors = function(colors)
        colors.hint = "#ae7dff"
        colors.error = "#ff0000"
        colors.magenta = "#ae7dff"
        colors.purple = "#ff9cea"
        colors.blue5 = "#6ed6ff"
        colors.blue = "#78a2ff"
        colors.yellow = "#ffbc5e"
        colors.blue1 = "#59b7ff"

        -- for key, value in pairs(colors) do
        --     print(key, value)
        -- end
    end
}

vim.g.nvim_tree_git_hl = 0

