-- ======================= --
-- ===    SETTINGS     === --
-- ======================= --
 
-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Text
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Theming
vim.opt.termguicolors = true
vim.opt.showmode = false

-- ======================= --
-- ===     PLUGINS 	   === --
-- ======================= --

-- Using paq plugin
require "paq" {
    "savq/paq-nvim",

    --Themes
    "itchyny/lightline.vim",
    "AhmedAbdulrahman/vim-aylin",
    "sainnhe/sonokai",

    --Syntax highlighting
    "sheerun/vim-polyglot",
}

-- ======================= --
-- ===     THEMING     === --
-- ======================= --

-- Option: aylin or sonokai
-- Tabline
vim.g['lightline'] = {colorscheme = 'aylin'}

-- Colorscheme
-- vim.g['sonokai_style'] = 'andromeda'
-- vim.g['sonokai_better_performance'] = 1
vim.cmd("colorscheme aylin")

-- YAML Front Matter Highlighting
vim.g['vim_markdown_frontmatter'] = 1

-- ======================= --
-- ===   KEY MAPPING   === --
-- ======================= --

-- Leader key
vim.g.mapleader = ' '

-- Copy, cut & paste globally
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>d', '"+d')
vim.keymap.set('n', '<leader>p', '"+p')
