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
" Telescope 						"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" brew install fd
" brew install ripgrep

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki 						"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vimwiki/vimwiki'					" vimwiki 

call plug#end()

let g:vimwiki_list = [{'path': '/path/to/my/wiki/',
	\ 'syntax': 'markdown', 'ext': '.md'}]

" Key Mapping
" Telescope
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>gr <cmd>lua require('lua/vim_go').go_run()<cr>
