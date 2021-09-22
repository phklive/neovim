
" vim plug

call plug#begin("~/.config/nvim/plugged")

" themes
Plug 'dracula/vim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

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
Plug 'justinmk/vim-sneak'
Plug 'junegunn/goyo.vim'
Plug 'mbbill/undotree'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround' "done" 
Plug 'tpope/vim-commentary' "done"
Plug 'mattn/emmet-vim' "done"
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "done"
Plug 'machakann/vim-highlightedyank' "done" 
Plug 'lukas-reineke/indent-blankline.nvim' "done"
Plug 'norcalli/nvim-colorizer.lua'
Plug 'frazrepo/vim-rainbow'
Plug 'alvan/vim-closetag'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'akinsho/bufferline.nvim'

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

require("bufferline").setup{}

 require("indent_blankline").setup {
     char = "|",
     buftype_exclude = {"terminal"," "},
     filetype_exclude = {"dashboard","vim","nerdtree"}
 }


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

local nvim_lsp = require('lspconfig')

nvim_lsp.tsserver.setup{on_attach=require'completion'.on_attach}
nvim_lsp.html.setup{on_attach=require'completion'.on_attach}
nvim_lsp.cssls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.jsonls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.bashls.setup{on_attach=require'completion'.on_attach}

EOF

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" completion settings
autocmd BufEnter * lua require'completion'.on_attach()
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_chain_complete_list = [
    \{'complete_items': ['snippet', 'lsp']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]

" hiding settings
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
        set showtabline=0
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
        set showtabline=2
    endif
endfunction

"autocmd VimEnter * call ToggleHiddenAll()

nnoremap <silent> <S-h> :call ToggleHiddenAll()<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" lightline settings
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
     

" dashboard settings

autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
autocmd FileType dashboard set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2
autocmd FileType nerdtree set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
autocmd FileType nerdtree set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2

let g:dashboard_default_executive = 'telescope'
nmap <Leader>cs :<C-u>SessionSave<CR>
nmap <Leader>ls :<C-u>SessionLoad<CR>

"let g:dashboard_custom_header =[
    "\'          ▀████▀▄▄              ▄█ ',
    "\'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',   
    "\'    ▄        █          ▀▀▀▀▄  ▄▀  ',
    "\'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    "\'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    "\'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    "\'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    "\'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    "\'   █   █  █      ▄▄           ▄▀   ',
    "\'                                   ',
    "\'                                   ',
    "\'                                   ',
    "\]

let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\'                                                        ',
\'                                                        ',
\'                                                        ',
\'                                                        ',
\]

" nerdtree settings 
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.js,*.ts,*.tsx,*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'js,ts,tsx,html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

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

" vim snippets settings
" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

