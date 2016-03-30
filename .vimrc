set nu
set ruler           " 显示标尺 
colorscheme desert
syntax on           " 语法高亮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行
set foldmethod=indent

au FileType php call AddPHPFuncList()
function AddPHPFuncList()
    set dictionary-=~/.vim/php_funclist.txt dictionary+=~/.vim//php_funclist.txt
    set complete-=k complete+=k
endfunction

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

set tabstop=4
set expandtab
 
set shiftwidth=4
set softtabstop=4
set autoindent

" NERDtree keybinds
nmap <silent> <F5> :NERDTree<CR>

let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1 
nmap <silent> <F6> :TlistToggle<CR>
