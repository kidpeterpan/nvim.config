-- This file can be loaded by calling `require('plugins')` from init.lua 

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

--[[ 
	=== TO UPDATE PLUGINS ===
	:PackerCompile, :PackerClean, :PackerInstall, :PackerUpdate, :PackerSync, :PackerLoad 
--]]

return require('packer').startup(
function()

--[[ 
	=== Packer === 
	can manage itself
--]]  
use 'wbthomason/packer.nvim'

--[[ 
	=== Lua Line ===
--]]  
use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

--[[ 
	=== Telescope === 
	brew install rg
	brew install ripgrep
--]]
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

--[[ 
	=== Nvim Tree === 
--]]
use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
  
end
)
