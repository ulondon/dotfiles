return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "matlab",
                               "c",
                               "lua",
                               "vim",
                               "vimdoc",
                               "query",
                               "markdown",
                               "bash",
                               "python",
                               "javascript",
                               "json",
                               "html" },

          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
          incremental_selection = {
              enable = true,
              keymaps = {
                  init_selection    = "<C-space>",
                  node_incremental  = "<C-space>",
                  scope_incremental = false,
                  node_decremental  = "<bs>",
              }
          }
        })
    end
}
