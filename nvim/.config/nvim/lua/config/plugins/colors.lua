local schemeurl  = 'rose-pine/neovim'
local schemename = 'rose-pine'
myschemebg = nil

local fn = vim.fn
local function get_color(group, attr)
    return fn.synIDattr(fn.synIDtrans(fn.hlID(group)), attr)
end

local function togglebg()
    frombg = get_color('Normal', 'bg')
    if frombg == '' then
        tobg = myschemebg
    else
        myschemebg = frombg
        tobg = 'none'
    end
    vim.api.nvim_set_hl(0, 'Normal',      { bg = tobg})
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = tobg})
end

local M = {schemeurl, name = schemename}

M.config = function()
    vim.cmd.colorscheme(schemename)
    vim.keymap.set('n', ',b', function() togglebg() end)
end

return M
