function ColorMyPencils(color)
    color = color or 'andromeda'
    vim.cmd('colorscheme ' .. color)

    -- Remove background color for Normal and NormalFloat
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

    -- Remove background color for line numbers
    vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })

    -- Optional: Remove background color for end-of-buffer '~' characters
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
end

-- Call the function with desired color (optional)
-- Uncomment and replace 'andromeda' with the desired color name
-- ColorMyPencils('andromeda')

