M = {}

M.opttoggle = function(k) 
   vim.opt[k] = not vim.opt[k]._value
end

return M
