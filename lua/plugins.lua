return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = {
          "c", "lua", "vim", "vimdoc", "query",
          "elixir", "heex", "javascript", "html",
          "terraform", "hcl", "dart", "hjson"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      -- Import your custom on_attach function
      local my_on_attach = require("nvim-tree-attach").my_on_attach

      require("nvim-tree").setup {
        on_attach = my_on_attach,
        -- other options...
      }
    end,
  },
  -- flutter
  -- {
  --   'akinsho/flutter-tools.nvim',
  --   lazy = false,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'stevearc/dressing.nvim',
  --   },
  --   config = function()
  --     require("flutter-tools").setup {
  --       lsp = {
  --         cmd = {"dart", "language-server", "--protocol=lsp"},
  --         -- explicitly set SDK path (if needed)
  --         -- TODO: set sdk_path = "<dart sdk path>"
  --       }
  --     }
  --   end
  -- },
  {
    'numToStr/Comment.nvim',
    lazy = false,
  },
}
