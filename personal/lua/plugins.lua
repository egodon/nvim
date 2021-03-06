local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

return  require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  
  -- Color Themes
  use {'embark-theme/vim',  as = 'embark' }
  use 'folke/tokyonight.nvim'
  use 'rakr/vim-one'

  -- Which-key
  use {"folke/which-key.nvim"}

  -- Lightline
  use 'itchyny/lightline.vim'

  -- Devicons
  use 'ryanoasis/vim-devicons'

  -- Zen Mode todo: Pick one
  use 'folke/zen-mode.nvim'
  use "Pocco81/TrueZen.nvim"
  use 'junegunn/goyo.vim'

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  
  -- Terminal
  use 'akinsho/nvim-toggleterm.lua'
  
end)


  