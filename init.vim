" 基本配置
set nocompatible "关闭与vi的兼容模式
set encoding=utf-8  "通用的 utf8 编码，避免乱码
set fenc=utf-8      "编码
set mouse=a        "支持使用鼠标
" 缩进
set tabstop=4    " Tab = 4 空格
set expandtab   " Tab 键在不同的编辑器缩进不一致，自动将 Tab 转为空格
" 外观
set cursorline  " 光标所在的当前行高亮
set number  "显示绝对行号
"set rnu  "显示相对行号
set nowrap    "不自动折行
set showmatch   " 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一半
set cc=80 "标尺线
set scrolloff=5        "垂直滚动时，光标距离顶部/底部的行数
" 搜索
set hlsearch        " 搜索时，高亮显示匹配结果
set foldmethod=indent  " 代码折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码

" ----- settings ----
if exists('g:vscode')
    " 切换行注释    
    nnoremap gc <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>
    " 切换块注释
    nnoremap gC <Cmd>call VSCodeNotify('editor.action.blockComment')<CR>
    " 展开所有折叠
    nnoremap zR <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
    " 关闭所有折叠
    nnoremap zM <Cmd>call VSCodeNotify('editor.foldAll')<CR>
    " 展开当下折叠
    nnoremap zo <Cmd>call VSCodeNotify('editor.unfold')<CR>
    " 关闭当下折叠
    nnoremap zc <Cmd>call VSCodeNotify('editor.fold')<CR>
    " 切换当下折叠
    nnoremap zz <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
endif

syntax on    "语法高亮
" 开启自动识别文件类型，并根据文件类型加载不同的插件和缩进规则
filetype plugin indent on
set clipboard=unnamed  " yy直接复制到系统剪切板（For macvim）

cmap w!! w !sudo tee >/dev/null %  " w!!写入只读文件

" 标签页操作
" 打开新的标签页 tabe new
map tn :tabe
" 在标签页跳转 h/l 和 vim 控制键一样
map th :-tabnext
map tl :+tabnext

" 关闭标签页 tabe close
map tq :tabclose
" 移动标签页 tabe move h/j
map tmh :-tabmove
map tml :+tabmove


" 根据不同模式，改变光标样式
" Neovim 自带功能
" let &t_SI = "\]50;CursorShape=1\x7"
" let &t_SR = "\]50;CursorShape=2\x7"
" let &t_EI = "\]50;CursorShape=0\x7"

" 彩虹括号
" Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" 缩进指示线颜色
" Plug 'Yggdroot/indentLine'
let g:indentLine_color_term = 238

" 状态栏增强
" Plug 'vim-airline/vim-airline'
" 打开后可以美化显示窗口 tab 和 buffer，比 NeoVim 自带好看
let g:airline#extensions#tabline#enabled = 1
" tabline 中 buffer 显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
