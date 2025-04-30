M = {}

local term_size = 90
local term_direction = "float"
local cmd_base = string.format(
    'RUNEWIDTH_EASTASIAN=0 LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 LF_ICONS="%s" lf',
    os.getenv("LF_ICONS")
)

local file_exists = function(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end

local read_file = function(...)
  local nargs = select('#', ...)
  local file, idx = ...
  if nargs < 2 then idx = 0 end

  if not file_exists(file) then
    if idx > 0 then return "" end
    return {}
  end

  local lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  if idx > 0 then
    lines = lines[idx] -- todo: check idx < len(lines)
  end

  return lines
end

local  write_file = function(file, txt)
  -- todo: add optional flag for w / a
  f = io.open(file, 'w')
  f:write(txt)
  f:close()
end

local open_term = function(lf_path, cmd, callback)
    local Terminal = require("toggleterm.terminal").Terminal

    local term = Terminal:new({
        cmd = cmd,
        hidden = true,
        count = 12,
        on_exit = function(_, _, _, _)
            local path = read_file(lf_path, 1)
            if path == nil or path == "" then
                return
            end

            vim.defer_fn(function()
                callback(path)
            end, 10)

            write_file(lf_path, '')
        end,
    })
    term:toggle(term_size, term_direction)
end

M.open_file = function()
    local lf_path = "/dev/shm/lf_file"
    local cmd = string.format(
        "%s -selection-path  %s %s",
        cmd_base,
        lf_path,
        vim.fn.expand("%:p")
    )

    open_term(lf_path, cmd, function(path)
        vim.cmd("e " .. path)
    end)
end

M.change_workdir = function()
    local lf_path = "/dev/shm/lf_workdir"
    local cmd =
        string.format("%s -last-dir-path %s %s", cmd_base, lf_path, "~/workspaces")
    open_term(lf_path, cmd, function(path)
        local uv = (vim.loop or vim.uv)
        if path == uv.os_homedir() or path == uv.os_homedir() .. "/workspaces" then
            return
        end

        require("user.commands.venv").deactivate()
        vim.cmd("cd " .. path)
        require("user.commands.venv").activate()

        local Session = require("projections.session")
        vim.cmd("bufdo! bdelete!")
        Session.restore(path)
    end)
end

return M
