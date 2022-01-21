" Mappings 

" leader
let mapleader = ","

" Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" undotree mappings
nnoremap <silent> <leader>u :UndotreeToggle<CR>

" nerdtree mappings
nnoremap <silent> <leader>t :NERDTreeToggle<CR>

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
nnoremap <C-\> :split<CR>
