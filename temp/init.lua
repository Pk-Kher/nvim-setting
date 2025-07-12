-- Prepend lazy.nvim to runtime path
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

-- Plugin setup
require("lazy").setup({
  -- 🌈 Theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- 🌴 File Tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
    end
  },

  -- 🔍 Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- 🌲 Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  -- 🧪 Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto',
          section_separators = '',
          component_separators = '',
        }
      })
    end
  },
  
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Example: TypeScript / JavaScript
      lspconfig.tsserver.setup({
        on_attach = function(client, bufnr)
          -- Disable tsserver formatting (we use Prettier instead)
          client.server_capabilities.documentFormattingProvider = false

          -- Keymap: Go to definition
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        end,
      })
    end,
  },


})

-- 🌲 Treesitter setup
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
}

-- 🔍 Telescope setup
require('telescope').setup{}

-- 📁 Auto-open file tree when opening folder
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
      require("nvim-tree.api").tree.open()
    end
  end
})

-- 🛠️ Editor options
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- 🎨 Color scheme
vim.cmd.colorscheme "catppuccin"

-- 🧭 Keymaps
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {
  noremap = true,
  silent = true,
  desc = "Toggle Nvim Tree"
})

vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", {
  noremap = true,
  silent = true,
  desc = "Open Find File tree"
})

vim.keymap.set("n", "<C-D>", "yyp", {
  noremap = true,
  silent = true,
  desc = "Duplicate current line"
})


