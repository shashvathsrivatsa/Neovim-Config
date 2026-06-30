require('config.remap')
require('config.set')

    -- require('onedark').setup {
    --     style = 'warmer',
    -- }

    require('tokyonight').setup {
        style = 'moon',
        transparent = true,

        on_colors = function(colors)

            -- Backgrounds
            colors.bg_root        = "#1c1c1c"
            colors.bg_dark1       = "#1e1e1e"
            colors.black          = "#181818"
            colors.border         = "#292929"
            colors.bg             = "#222222"
            colors.bg_sidebar     = "#1e1e1e"
            colors.bg_popup       = "#282828"
            colors.bg_dark        = "#1e1e1e"
            colors.bg_float       = "#292929"
            colors.bg_statusline  = "#1e1e1e"
            colors.bg_highlight   = "#444444"
            colors.bg_visual      = "#252525"
            colors.bg_search      = "#313131"

            -- Foregrounds
            colors.fg             = "#cccccc"
            colors.fg_float       = "#cccccc"
            colors.fg_dark        = "#bbbbbb"
            colors.fg_sidebar     = "#aaaaaa"

            -- Gutters / Comments
            colors.comment        = "#676767"
            colors.terminal_black = "#676767"
            colors.fg_gutter      = "#494949"
            colors.dark3          = "#3d3d3d"
            colors.dark5          = "#4d4d4d"

            -- Yellows
            colors.blue           = "#EFC000"
            colors.blue1          = "#EFC000"
            colors.blue2          = "#EFC000"
            colors.blue5          = "#EFC000"
            colors.blue6          = "#fff09a"
            colors.orange         = "#FF9B3A"

            -- Magentas
            colors.cyan           = "#C74DED"
            colors.teal           = "#C74DED"
            colors.magenta        = "#C74DED"
            colors.magenta2       = "#ff50d8"

            -- Greens
            colors.green          = "#4dd68c"
            colors.green1         = "#02E8C6"
            colors.green2         = "#1a9858"
            colors.hint           = "#38d8a0"

            -- Blues
            colors.yellow         = "#169FFF"
            colors.blue7          = "#292929"
            colors.blue0          = "#292929"

            -- Reds
            colors.purple         = "#EE5D43"
            colors.red            = "#EE5D43"
            colors.red1           = "#d84b5e"

            -- Semantic
            colors.warning        = "#EFC000"
            colors.info           = "#00FF00"
            colors.error          = "#EE5D43"
            colors.todo           = "#00FF00"

            colors.none           = "NONE"




            --  OLD COLORS
            -- colors.hint = "#ae7dff"
            -- colors.error = "#ff0000"
            -- colors.magenta = "#ae7dff"
            -- colors.purple = "#ff9cea"
            -- colors.blue5 = "#6ed6ff"
            -- colors.blue = "#78a2ff"
            -- colors.yellow = "#ffbc5e"
            -- colors.blue1 = "#59b7ff"

            -- old black bg:
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

