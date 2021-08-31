"PaulHK neovim configuration

:set number
:set relativenumber
:set autoindent
:set nohls
:set hidden
:set smartcase
:set ignorecase
:set tabstop=4 softtabstop=4
:set noerrorbells
:set shiftwidth=4
:set expandtab
:set smartindent
:set incsearch
:set scrolloff=8
:set noshowmode 
:set updatetime=200
:set termguicolors

call plug#begin("~/.config/nvim/plugged")

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Surround
Plug 'tpope/vim-surround'

" Commentary
Plug 'tpope/vim-commentary'

" Emmet
Plug 'mattn/emmet-vim'

" Pairs
Plug 'docunext/closetag.vim'

" Tags
Plug 'alvan/vim-closetag'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Git
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'

" Undotree
Plug 'mbbill/undotree'

" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

let mapleader = " "

" Undotree mappings
nnoremap <leader>u :UndotreeToggle<CR>

" Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" NerdTree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {}
        },
    indent = {
        enable = true,
        disable = {}
        },
    ensure_installed = {
        "tsx",
        "typescript",
        "javascript",
        "css",
        "html",
        "json",
        }
}
EOF

