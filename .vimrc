" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

"Load plugins via Pathogen
call pathogen#infect()

"Basic options
syntax on
filetype plugin indent on
colorscheme slate 
set nu
set autoindent
set shiftwidth=4
set smartindent
set expandtab
set tabstop=4
set hidden
let NERDTreeIgnore = ['\.pyc$']
set nofoldenable

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

"Custom mappings
nmap <Space>d :NERDTreeToggle<CR>
nmap <Leader>d :NERDTreeToggle<CR>
map T :TaskList<CR>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"Omnicomplete Python
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"set ofu=pythoncomplete#Complete

"jsbeautify
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"osx hacks
set backspace=indent,eol,start "backspace trick
