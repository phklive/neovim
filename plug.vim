" vim plug

call plug#begin("~/.config/nvim/plugged")

" theme plugins
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }


" icon plugins
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'mortepau/codicons.nvim'

" LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'kabouzeid/nvim-lspinstall'

" snippets plugins
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'mattn/emmet-vim' 

" telescope fuzzy finding plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" tree plugins
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 

" code style plugins 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'frazrepo/vim-rainbow'
Plug 'lukas-reineke/indent-blankline.nvim' 
Plug 'norcalli/nvim-colorizer.lua'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" tmux plugins
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/vimux'

" navigation plugins 
Plug 'justinmk/vim-sneak'
Plug 'karb94/neoscroll.nvim'

" Tpope plugins 
Plug 'tpope/vim-surround'  
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" information plugins
Plug 'junegunn/vim-peekaboo'
Plug 'mbbill/undotree'
Plug 'glepnir/dashboard-nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'vimwiki/vimwiki'

" Code plugins
Plug 'AndrewRadev/tagalong.vim'
Plug '907th/vim-auto-save'
Plug 'wellle/targets.vim'

call plug#end()
