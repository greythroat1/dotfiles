-- ======================= --
-- ===    VARIABLES    === --
-- ======================= --

-- Add variables for easy use
-- Setting variable
local set = vim.opt

-- Keymap variable
local bind = vim.keymap.set


-- ======================= --
-- ===    SETTINGS     === --
-- ======================= --
 
-- Line number
set.number = true
set.relativenumber = true

-- Text
set.wrap = false
set.scrolloff = 5
set.sidescrolloff = 5

-- Window
set.splitright = true
set.splitbelow = true

-- Searching
set.ignorecase = true
set.smartcase = true

-- Theming
set.termguicolors = true
set.showmode = false


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
bind('v', '<leader>y', '"+y')
bind('v', '<leader>d', '"+d')
bind('n', '<leader>p', '"+p')
