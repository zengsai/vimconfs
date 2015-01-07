runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

let mapleader=";"

im <leader>e <esc>
cm <leader>e <C-C>
nm <leader>w :w<cr>
im <leader>w <esc>:w<cr>

"为窗口跳转重新定义键映射
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


map <C-i> <C-W>_

imap <leader>1 ()<left>
imap <leader>2 []<left>
imap <leader>3 {}<left>
imap <leader>4 {<cr>}<Esc>O
imap <leader>5 <right><BS><BS>
imap <leader>q ""<left>
imap <leader>f <right>
imap <leader>b <left>
imap <c-e> <esc>A
nmap <space> <c-f>
nmap <M-space> <c-b>

set nu
set autoread         "当正在编辑的文档在Vim之外被修改后自动加载
set incsearch        "增量搜索
set nocompatible
set nobackup
set nowritebackup
set hidden

set backspace=2 "same as "set backspace=indent,eof,start"

" tab setting
set tabstop=4        "设定tab宽度为4个字符
set shiftwidth=4     "设定自动缩进为4个字符
set expandtab        "用space替代tab的输入

syntax on
filetype plugin indent on

" for solarized theme
" set background=dark
set background=light
"colorscheme solarized

set encoding=utf-8
set fileencoding=utf-8
if has("multi_byte")
    set fileencodings=ucs-bom,utf-8,chinese
    set ambiwidth=double 
endif

" 用空格键来开关折叠      
set foldenable
"set foldmethod=manual
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"-------------------------------  
" 代码折叠  
"---------------------------  
"set foldmarker={,}
"set foldmethod=marker
set foldmethod=syntax
set foldlevel=100       " Don't autofold anything   
set foldopen-=search   " don't open folds when you search into them  
set foldopen-=undo     " don't open folds when you undo stuff  
set foldcolumn=0


"for ctags
"set tags=tags;    "   其中 ; 不能没有
"set autochdir

" for tagbar
"nmap <leader>t :TagbarToggle<cr>
"let g:tagbar_left = 1

"" for Lusty Explorer
let g:LustyExplorerDefaultMappings = 0
nmap <silent> <Leader>f :LustyFilesystemExplorer<CR>
nmap <silent> <Leader>d :LustyFilesystemExplorerFromHere<CR>
nmap <silent> <Leader>b :LustyBufferExplorer<CR>
nmap <silent> <Leader>g :LustyBufferGrep<CR>


""/* for cscope

"if filereadable("cscope.out") 
    "cs add cscope.out 
"endif 

"nmap <C-c><C-k> :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-c><C-g> :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-c><C-l> :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-c><C-t> :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-c><C-e> :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-c><C-f> :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-c><C-i> :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
"nmap <C-c><C-d> :cs find d <C-R>=expand("<cword>")<CR><CR>
""*/ for cscope end

" for mark
"let g:mwDefaultHighlightingPalette = 'maximum'
