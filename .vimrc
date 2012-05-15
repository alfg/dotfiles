call pathogen#infect()
syntax on
filetype plugin indent on
:colorscheme aldmeris
let g:aldmeris_termcolors = "tango"
set nu
set t_Co=256
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
au BufNewFile,BufRead *.{jsp,jspf} setlocal ft=jsp.html     " set .jsp files to edit like HTML
nmap <Space>d :NERDTreeToggle<CR>
nmap <Leader>d :NERDTreeToggle<CR>
