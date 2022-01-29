" vim plug

call plug#begin("~/.config/nvim/plugged")


" lsp / completion / snippets
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip' 
Plug 'L3MON4D3/LuaSnip' 

Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-lualine/lualine.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
Plug 'preservim/nerdtree' 
Plug 'joshdick/onedark.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'itchyny/lightline.vim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'frazrepo/vim-rainbow'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'lukas-reineke/indent-blankline.nvim' 
Plug 'justinmk/vim-sneak'
Plug 'nvim-telescope/telescope.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'  
Plug 'tpope/vim-commentary'  
Plug 'tpope/vim-fugitive'  
Plug 'junegunn/vim-peekaboo'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'

call plug#end()
