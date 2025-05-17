vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.wildignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.opt.backspace = {'indent', 'eol', 'start'}
vim.opt.laststatus = 2
vim.opt.autochdir = true

-- todo: move fcn to a utils file
-- https://stackoverflow.com/questions/2468939/how-to-let-tab-display-only-file-name-rather-than-the-full-path-in-vim
-- local function get_tabline()
function _G.get_tabline()
  local s = ""
  for tabnr = 1, vim.fn.tabpagenr('$') do
    local winnr         = vim.fn.tabpagewinnr(tabnr)
    local buflist       = vim.fn.tabpagebuflist(tabnr)[winnr]
    local bufname       = vim.fn.bufname(buflist)
    local bufname_short = vim.fn.fnamemodify(bufname, ":t")
    if tabnr == vim.fn.tabpagenr() then
      s = s .. "%#TabLineSel#" .. " " .. tabnr .. ": " .. bufname_short .. " "
    else
      s = s .. "%#TabLine#" .. " " .. tabnr .. ": " .. bufname_short .. " "
    end
  end
  s = s .. "%#TabLineFill#"
  return s
end

vim.opt.tabline = '%!v:lua.get_tabline()'
-- vim.opt.tabline = '%!v:lua.config.basic.get_tabline()'
-- vim.opt.tabline = '%:t'
