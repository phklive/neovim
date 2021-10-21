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

let g:auto_save = 1  " enable AutoSave on Vim startup

lua << EOF

require'colorizer'.setup()

require('plenary.reload').reload_module('lualine', true)
require('lualine').setup({
  options = {
    theme = 'dracula',
    disabled_types = { 'NvimTree' }
  },
  sections = {
    lualine_x = {},
    -- lualine_y = {},
    -- lualine_z = {},
  }
})

require("bufferline").setup{
  highlights = {
    fill = {
      guibg = "#44475a"
    },
    separator_selected = {
      guifg = "#44475a"
    },
    separator_visible = {
      guifg = "#44475a"
    },
    separator = {
      guifg = "#44475a"
    }
  },
 options = {
    modified_icon = "●",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 25,
    max_prefix_length = 25,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    show_close_icon = false,
    separator_style = "slant",
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    
    offsets = {
      {
        filetype = "nerdtree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center"
      }
    }

  }
}

 require("indent_blankline").setup {
     char = "|",
     buftype_exclude = {"terminal"," "},
     filetype_exclude = {"dashboard","vim","nerdtree"}
 }


local lsp_symbols = {
    Text = "   (Text) ",
    Method = "   (Method)",
    Function = "   (Function)",
    Constructor = "   (Constructor)",
    Field = " ﴲ  (Field)",
    Variable = "[] (Variable)",
    Class = "   (Class)",
    Interface = " ﰮ  (Interface)",
    Module = "   (Module)",
    Property = " 襁 (Property)",
    Unit = "   (Unit)",
    Value = "   (Value)",
    Enum = " 練 (Enum)",
    Keyword = "   (Keyword)",
    Snippet = "   (Snippet)",
    Color = "   (Color)",
    File = "   (File)",
    Reference = "   (Reference)",
    Folder = "   (Folder)",
    EnumMember = "   (EnumMember)",
    Constant = " ﲀ  (Constant)",
    Struct = " ﳤ  (Struct)",
    Event = "   (Event)",
    Operator = "   (Operator)",
    TypeParameter = "   (TypeParameter)",
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
          "typescript",
  },

require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules","plugged"} } }
}

local nvim_lsp = require('lspconfig')

require('gitsigns').setup()

local lspkind = require('lspkind')

lspkind.init({
  with_text = true,
  preset = 'codicons',
})

  local cmp = require('cmp')

  cmp.setup({

    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
      end,
    },

 formatting = {
        format = function(entry, item)
            item.kind = lspkind.presets.default[item.kind]
            item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                vsnip = "[Snippet]",
            })[entry.source.name]
           item.menu, item.kind = item.kind, item.menu
           return item
        end,
    },

mapping = {
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      }),
      ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
   },
  
  completion = {
    autocomplete = false,
    },
  
 sources = {
      { name = 'vsnip' },
      { name = 'nvim_lsp'},
      { name = 'buffer',
        max_item_count=3},
    }
  })

  
local servers = { 'tsserver', 'html', 'jsonls', 'cssls'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

local saga = require('lspsaga')
saga.init_lsp_saga{
 code_action_prompt = {
  enable = false,
 sign = false,
 },
}

require('neoscroll').setup()

EOF

let g:tagalong_additional_filetypes = ['javascript', 'typescript']

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-p> :TmuxNavigatePrevious<cr>
let g:tmux_navigator_save_on_switch = 1

nnoremap <silent>re <cmd>lua require('lspsaga.rename').rename()<CR>

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" lspsaga mappings
" show hover doc
nnoremap <silent> K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
imap <expr> <C-e>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" vim prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" hiding settings
let s:hidden_all = 0
function! ToggleHiddenAll()
     if s:hidden_all  == 0
         let s:hidden_all = 1
         set noshowmode
         set noruler
         set noshowcmd
         set laststatus=0
         set showtabline=0
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set showcmd
        set laststatus=2
        set showtabline=2
    endif
endfunction

autocmd VimEnter * call ToggleHiddenAll()

nnoremap <silent> <S-t> :call ToggleHiddenAll()<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" dashboard settings

autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2  | call ToggleHiddenAll()
autocmd FileType dashboard set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2
autocmd FileType nerdtree set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
autocmd FileType nerdtree set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2

let g:dashboard_default_executive = 'telescope'

" let g:dashboard_custom_header =[
"     \'          ▀████▀▄▄              ▄█ ',
"     \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',   
"     \'    ▄        █          ▀▀▀▀▄  ▄▀  ',
"     \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
"     \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
"     \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
"     \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
"     \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
"     \'   █   █  █      ▄▄           ▄▀   ',
"     \'                                   ',
"     \'                                   ',
"     \'                                   ',
"     \]


" nerdtree settings 
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1

