local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--if not vim.loop.fs_stat(lazypath) then
--  vim.fn.system({
--    "git", "clone", "--filter=blob:none",
--   "https://github.com/folke/lazy.nvim.git",
--    "--branch=stable", lazypath
--  })
--end
--vim.opt.rtp:prepend(lazypath)

  -- disable netrw at the very start of your init.lua

--require("lazy").setup({
-- { "lervag/vimtex" },
--})

-- Set custom packpath
vim.opt.packpath:prepend(vim.fn.stdpath("data") .. "/site")

vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/saghen/blink.lib' },
  { src = 'https://github.com/saghen/blink.cmp' },
  { src = 'https://github.com/lervag/vimtex' }
})

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
	keymap = { preset = "super-tab" },
})



  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true

  -- empty setup using defaults
  require("nvim-tree").setup()

  -- OR setup with a config

  ---@type nvim_tree.config
  local config = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
  require("nvim-tree").setup(config)

-- VimTeX configuration
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'

-- Line numbers
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Show relative line numbers
vim.opt.numberwidth = 4         -- Width = 4 before text editing

-- No swap/backup files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Text wrapping
vim.opt.wrap = false            -- Don't wrap text

-- Syntax highlighting
vim.cmd('syntax on')

-- Backspace behavior
vim.opt.backspace = 'indent,eol,start'  -- backspace=2 equivalent

-- Tab settings (4 spaces)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true        -- Convert tabs to spaces
vim.opt.softtabstop = 4         -- Delete 4 spaces with backspace if it's a tab

-- Indentation
vim.opt.autoindent = true

-- Colorscheme and transparency
vim.cmd('colorscheme vim')
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight LineNr guibg=NONE ctermbg=NONE')
