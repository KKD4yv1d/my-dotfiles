package.cpath = package.cpath .. ";" .. "/data/data/com.termux/files/home/.local/lib/?.so"
require('packer').startup(function (use)
  use({
    'wbthomason/packer.nvim',
    { 'neoclide/coc.nvim', branch = 'release' },
    'ellisonleao/gruvbox.nvim',
    'Yggdroot/indentLine',
    'nvim-treesitter/nvim-treesitter',
    'ayu-theme/ayu-vim'
  })
end)

vim.g.indentLine_char = '│'

vim.opt.encoding = "utf-8"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.showtabline = 2
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 16
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.opt.background = "dark"
-- let ayucolor="dark"
vim.cmd([[
  colorscheme gruvbox
]])

require('nvim-treesitter.configs').setup({
  highlight = { enable = true }
})

vim.cmd('source ' .. vim.fn.expand('~/.config/nvim/vim') .. '/coc-configs.vim')

vim.fn.setenv("C_INCLUDE_PATH", vim.fn.getcwd() .. "/include")
