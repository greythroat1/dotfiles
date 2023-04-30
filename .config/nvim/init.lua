-- ======================= --
-- ===    VARIABLES    === --
-- ======================= --

-- Add variables for easy use
-- Setting variable
local set = vim.opt

-- Command variable
local cmd = vim.cmd

-- User command variable
local user_cmd = vim.api.nvim_create_user_command 

-- Keymap variable
local bind = vim.keymap.set


-- ======================= --
-- ===    SETTINGS     === --
-- ======================= --
 
-- Line number
set.number = true
set.relativenumber = true

-- Spacing
set.tabstop = 4
set.shiftwidth = 4

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
  	"ntk148v/vim-horizon",
  	"krfl/fleetish-vim",
	"sainnhe/sonokai",

	--Floating terminal
	"voldikss/vim-floaterm",

	--Syntax highlighting
	"sheerun/vim-polyglot",
}


-- ======================= --
-- ===     THEMING     === --
-- ======================= --

-- Option: aylin, horizon, fleetish, sonokai
-- Tabline
vim.g['lightline'] = {
	colorscheme = 'sonokai'
}

-- Colorscheme
vim.g['sonokai_style'] = 'andromeda'
vim.g['sonokai_better_performance'] = 1
cmd("colorscheme sonokai")

vim.g['vim_markdown_frontmatter'] = 1

-- ======================= --
-- ===   KEY MAPPING   === --
-- ======================= --

-- Leader key
vim.g.mapleader = ' '

-- Copy & cut into clipboard
bind('v', '<leader>y', '"+y')
bind('v', '<leader>d', '"+d')

-- Paste from clipboard
bind('n', '<leader>p', '"+p')

-- Floaterm binding
vim.g['floaterm_keymap_new']			= '<A-t>' 
vim.g['floaterm_keymap_kill']			= '<A-q>'
vim.g['floaterm_keymap_prev']			= '<A-N>'
vim.g['floaterm_keymap_next']			= '<A-n>'
vim.g['floaterm_keymap_toggle']			= '<A-h>'
user_cmd('RN', 'FloatermNew ranger', {})

