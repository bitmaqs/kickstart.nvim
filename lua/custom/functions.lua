-- ~/.config/nvim/lua/custom/functions.lua

local M = {}

-- Function to toggle transparency
M.toggle_transparency = function()
    -- Get current highlight settings for the 'Normal' group
    local normal_hl = vim.api.nvim_get_hl_by_name('Normal', true)
    
    -- Check if the background is already set to 'none' (transparent)
    if normal_hl.background == nil then
        -- Set background to a default color (e.g., black)
        vim.api.nvim_set_hl(0, 'Normal', { bg = '#1E1E2F' })
        vim.api.nvim_set_hl(0, 'NormalNC', { bg = '#1E1E2F' })
        vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#1E1E2F' })
        vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = '#1E1E2F' })
    else
        -- Set background to 'none' (transparent)
        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
    end
end

return M

