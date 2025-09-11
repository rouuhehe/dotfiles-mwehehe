return {
  -- Theme Gruvbox Flat
  {
    'eddyekofo94/gruvbox-flat.nvim',
    priority = 1000,
    enabled = true,
    config = function()
      vim.cmd([[colorscheme gruvbox-flat]])
    end,
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "gruvbox-flat",
          component_separators = "|",
          section_separators = "",
        },
      })
    end,
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          show_buffer_close_icons = false,
          show_close_icon = false,
          separator_style = "thin",
          diagnostics = "nvim_lsp",
          offsets = {
            { filetype = "neo-tree", text = "Neo-tree", highlight = "Directory", text_align = "left" },
            { filetype = "snacks_layout_box" },
          },
          custom_filter = function(bufnr)
            return vim.bo[bufnr].buftype == "" or vim.bo[bufnr].buftype == "acwrite"
          end,
        },
      })
      vim.keymap.set("n", "<leader><Right>", ":BufferLineCycleNext<CR>", { desc = "next buffer" })
      vim.keymap.set("n", "<leader><Left>", ":BufferLineCyclePrev<CR>", { desc = "last buffer" })
    end,
  },

  -- Indent guides
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}

