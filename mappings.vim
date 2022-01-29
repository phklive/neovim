" Mappings 

" leader
let mapleader = ","

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <space>e <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent> <space>f <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <space>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

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

nnoremap <C-v> :vsplit<CR>
nnoremap <C-q> :split<CR>

" nerdtree mappings
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
