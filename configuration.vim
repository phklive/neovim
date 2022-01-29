" tagalong 
let g:tagalong_additional_filetypes = ['javascript', 'typescript']

" highlight_yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" vim sneak 
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
