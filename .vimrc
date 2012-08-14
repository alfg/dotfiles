"Load plugins via Pathogen
call pathogen#infect()

"Basic options
syntax on
filetype plugin indent on
colorscheme slate
set t_Co=256
set nu
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set hidden

"Custom mappings
nmap <Space>d :NERDTreeToggle<CR>
nmap <Leader>d :NERDTreeToggle<CR>
map T :TaskList<CR>
map P :TlistToggle<CR> "Ctags
let g:miniBufExplMapWindowNavVim = 1      " Bind Ctrl + hjkl to switch tabs for MiniBufExpl
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"Syntax highlighting
au BufNewFile,BufRead *.{jsp,jspf} setlocal ft=jsp.html     " set .jsp files to edit like HTML

"Omnicomplete python
set ofu=pythoncomplete#Complete

"NERDTree Ignore files
let NERDTreeIgnore = ['\.pyc$']