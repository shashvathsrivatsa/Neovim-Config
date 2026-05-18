require('config.remap')
require('config.set')

-- require('onedark').setup {
    --     style = 'warmer',
    -- }

    require('tokyonight').setup {
        style = 'moon',
        transparent = true,

        on_colors = function(colors)

            -- Backgrounds (but bg is turned off)
            colors.bg_root        = "#181c27"
            colors.bg_dark1       = "#1b1f2e"
            colors.black          = "#16191f"
            colors.border         = "#2d364f"
            colors.bg             = "#212630"
            colors.bg_sidebar     = "#1d2130"
            colors.bg_popup       = "#262d3e"
            colors.bg_dark        = "#1c2030"
            colors.bg_float       = "#262d3e"
            colors.bg_statusline  = "#1d2130"
            colors.bg_highlight   = "#3A4355"
            colors.bg_visual      = "#301828"
            colors.bg_search      = "#3a3608"

            -- Foregrounds
            colors.fg             = "#ccd6f0"
            colors.fg_float       = "#ccd6f0"
            colors.fg_dark        = "#a5b4d0"
            colors.fg_sidebar     = "#8898bc"

            -- Gutters / Comments
            colors.comment        = "#6275A0"
            colors.terminal_black = "#6275A0"
            colors.fg_gutter      = "#4E6482"
            colors.dark3          = "#3d5272"
            colors.dark5          = "#506884"

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
            colors.blue7          = "#2e2a00"
            colors.blue0          = "#252200"

            -- Reds
            colors.purple         = "#EE5D43"
            colors.red            = "#EE5D43"
            colors.red1           = "#d84b5e"

            -- Semantic
            colors.warning        = "#3A8AF6"
            colors.info           = "#FFD701"
            colors.error          = "#EE5D43"
            colors.todo           = "#FFD701"

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
            -- colors.bg = "#000000"
            -- colors.bg_sidebar = "#000000"
            -- colors.bg_popup = "#000000"
            -- colors.bg_dark = "#000000"
            -- colors.bg_statusline = "#000000"
            -- colors.bg_float = "#000000"

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

