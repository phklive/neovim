
" vim plug

call plug#begin("~/.config/nvim/plugged")

" themes
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'

" code highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jremmen/vim-ripgrep'

" tree
Plug 'preservim/nerdtree' "done"
Plug 'Xuyuanp/nerdtree-git-plugin' "done"
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "done"

" icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" general plugins
Plug 'glepnir/dashboard-nvim'
Plug 'akinsho/nvim-bufferline.lua' "done"
Plug 'alvan/vim-closetag' "done"
Plug 'tpope/vim-surround' "done" 
Plug 'tpope/vim-commentary' "done"
Plug 'mattn/emmet-vim' "done"
Plug 'justinmk/vim-sneak'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "done"
Plug 'Pocco81/AutoSave.nvim'
Plug 'preservim/vimux'
Plug 'machakann/vim-highlightedyank' "done" 
Plug 'lukas-reineke/indent-blankline.nvim' "done"
Plug 'norcalli/nvim-colorizer.lua'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'


call plug#end()

" Usable plugins list:
" - nerdtree -- file explorer
" - surround -- surround stuff with ysw 
" - commentary -- comment lines with gcc 
" - emmet -- faster html / snippets
" - sneak -- jump and navigate fast throug files with s
" - visual-multi -- makes visual mode better / multiplu cursor

" plugins settings 

lua << EOF

require'colorizer'.setup()


 require("indent_blankline").setup {
     char = "|",
     buftype_exclude = {"terminal"," "},
     filetype_exclude = {"dashboard","vim","nerdtree"}
 }

require'bufferline'.setup()

local configs = require'nvim-treesitter.configs'
configs.setup {
  highlight = {
    enable = true,
  },
  indent = {
          enable = false,
          disable = {},
  },
  ensure_installed = {
          "tsx",
          "json",
          "scss",
          "css",
          "html",
          "javascript",
          "python",
          "typescript",
          "vim",
  },

require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules","plugged"} } }

}

EOF
" lightline settings
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" dashboard settings
let g:dashboard_default_executive ='telescope'

" sneak settings
let g:sneak#label = 1

" nerdtree settings 
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1

" closetag settings 
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,jsx,js,tsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes =  'html,xhtml,jsx,js,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
