" vim plug

call plug#begin("~/.config/nvim/plugged")

" Themes 
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'

" Icons 
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'mortepau/codicons.nvim'

" Lsp 
Plug 'nvim-lua/plenary.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'tami5/lspsaga.nvim'

" Snippets
Plug 'mattn/emmet-vim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Syntax 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'lewis6991/gitsigns.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'frazrepo/vim-rainbow'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'lukas-reineke/indent-blankline.nvim' 

" Code navigation
Plug 'preservim/nerdtree' 
Plug 'justinmk/vim-sneak'
Plug 'nvim-telescope/telescope.nvim'
Plug 'christoomey/vim-tmux-navigator'

" Code
Plug 'tpope/vim-surround'  
Plug 'tpope/vim-commentary'  
Plug 'tpope/vim-fugitive'  
Plug 'mbbill/undotree'
Plug 'hoob3rt/lualine.nvim'
Plug 'junegunn/vim-peekaboo'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'

call plug#end()
