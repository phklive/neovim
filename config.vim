
lua << EOF

require('gitsigns').setup()

require'colorizer'.setup()

require('lualine').setup({
  options = {
    theme = 'onedark',
    disabled_types = { 'NvimTree' }
  },
  sections = {
    lualine_x = {},
  }
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
 indent = {
          enable = true,
  },
 ensure_installed = {
          "tsx",
          "json",
          "scss",
          "css",
          "html",
          "javascript",
          "typescript",
          "bash",
          "fish",
          "graphql",
          "prisma",
          "python",
          "vim",
          "svelte",
          "lua"
  },
}

 require("indent_blankline").setup {
     char = "|",
     buftype_exclude = {"terminal"," "},
     filetype_exclude = {"dashboard","vim","nerdtree"}
 }   

require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules","plugged/",".git/"} }, pickers = {
find_files = {
hidden = true
    }
  }
}


EOF

let g:tagalong_additional_filetypes = ['javascript', 'typescript']

let g:UltiSnipsExpandTrigger="<C-q>"

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" nerdtree settings 
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

