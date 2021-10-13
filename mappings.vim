" Mappings 

" leader
let mapleader = ","

" global mappings 
nnoremap <silent> <leader>p :bn<CR>
nnoremap <silent> <leader>n :bp<CR>
nnoremap <silent> <leader>c :bd<CR>

" undotree mappings
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" nerdtree mappings
nnoremap <silent> <leader>t :NERDTreeToggle<CR>

" telescope mappings
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" lspconfig mappings
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

nnoremap <leader>v :tabe ~/.config/nvim/configuration.vim <cr>
autocmd bufwritepost .vimrc source $MYVIMRC

nnoremap Y yg_     

nnoremap cm *``cgn
nnoremap cN *``cgN

nnoremap ; :
vnoremap ; :

cmap w!! %!sudo tee > /dev/null %

nnoremap n nzz
nnoremap N Nzz

nnoremap H ^
nnoremap L $

nmap <leader>' ysiw' 
nmap <leader>" ysiw" 
nmap <leader>` ysiw` 
nmap <leader>( ysiw( 
nmap <leader>) ysiw) 
nmap <leader>{ ysiw{ 
nmap <leader>} ysiw} 
nmap <leader>[ ysiw[ 
nmap <leader>] ysiw] 
nmap <leader>/ ysiw/ 

nnoremap zz :w\|bd<cr>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" imap tn <esc>
