-- packer.nvim is required : https://github.com/wbthomason/packer.nvim
require('plugins')
require('lualine_config')

local api = vim.api

--[[ 
	=== Key Mapping === 
	vim.api.nvim_set_keymap([MODE],[KEY],[COMMAND],[OPTION])
	[MODE]
		n - normal mode
	[KEY]
		<Leader> - '\' key
 		<CR> - 'Return' key
--]] 	
api.nvim_set_keymap('n','<Leader>gr',':GoRun<CR>',{ noremap = true, silent = true })
api.nvim_set_keymap('n','<Leader>ff',':lua require("telescope.builtin").find_files()<CR>',{ noremap = true, silent = true })
api.nvim_set_keymap('n','<Leader>fg',':lua require("telescope.builtin").live_grep()<CR>',{ noremap = true, silent = true })
api.nvim_set_keymap('n','<Leader>fb',':lua require("telescope.builtin").buffers()<CR>',{ noremap = true, silent = true })
api.nvim_set_keymap('n','<Leader>fh',':lua require("telescope.builtin").help_tags()<CR>',{ noremap = true, silent = true })

vim.cmd([[

call plug#begin()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git    						"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'			        " git

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Golang 						"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }	" go for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'} 	" coc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki 						"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vimwiki/vimwiki'					" vimwiki 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

colorscheme gruvbox
filetype plugin on
syntax on						" syntax highlighting

set encoding=utf-8					" utf-8
set number						" add line numbers
set relativenumber					" enabled relative line numbers
set clipboard=unnamedplus   				" using system clipboard
set ignorecase						" case insensitive
set background=dark					" dark background
set nocompatible

let g:vimwiki_list = [{'path': '/path/to/my/wiki/',
	\ 'syntax': 'markdown', 'ext': '.md'}]

]])
