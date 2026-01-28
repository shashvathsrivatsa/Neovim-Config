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

        colors.bg = "#000000"
        colors.bg_sidebar = "#000000"
        colors.bg_popup = "#000000"
        colors.bg_dark = "#000000"
        colors.bg_statusline = "#000000"
        colors.bg_float = "#000000"

        -- colors.bg = "#0D1424"
        -- colors.bg_sidebar = "#0D1424"
        -- colors.bg_popup = "#0D1424"
        -- colors.bg_dark = "#0D1424"
        -- colors.bg_statusline = "#0D1424"
        -- colors.bg_float = "#0D1424"

        -- for key, value in pairs(colors) do
        --     print(key, value)
        -- end
    end
}

