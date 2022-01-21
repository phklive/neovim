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
Plug 'neovim/nvim-lspconfig'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

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
