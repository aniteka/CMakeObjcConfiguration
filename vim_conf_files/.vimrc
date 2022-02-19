" --- vim plug --- 
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'b4winckler/vim-objc'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
Plug 'shirk/vim-gas'
Plug 'cdelledonne/vim-cmake'
Plug 'tomasr/molokai'
Plug 'caglartoklu/qbcolor.vim'
"Plug 'bfrg/vim-cpp-modern'
"Plug 'rip-rip/clang_complete'
"Plug 'scrooloose/syntastic'
"Plug 'kiteco/plugins'
"Plug 'puremourning/vimspector'
call plug#end()


" --- Plugin settings ---
"let g:airline_powerline_fonts = 1
"let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
"let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
"let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 

let c_no_curly_error = 1

let g:termdebug_popup = 0
let g:termdebug_width = 50
packadd termdebug 

map <F1> :NERDTree<Enter>
map <F2> :NERDTreeClose<Enter>
map <F3> :!cmake . && make <Enter>
map <F4> :!cmake . && make && ./main <Enter>
map <F5> <F3> :Termdebug %:r<CR><c-w>2j<c-w>L40<c-w>>
map <F6> :Termdebug %:r<CR><c-w>2j<c-w>L40<c-w>>

autocmd BufReadPre *.asm let g:asmsyntax = "fasm"	"fasm
autocmd BufReadPre *.s let g:asmsyntax = "gas"		"gas
autocmd BufReadPre *.m let g:objcsyntax = "objc"	"objc
let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 0

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
set completeopt-=preview 
let g:ycm_autoclose_preview_window_after_insertion = 1 
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion=1

"let g:clang_library_path = '/usr/lib/llvm-10/lib'


" --- General Setting's --- 
colorscheme molokai
set ruler 
set number
set nocompatible
set showcmd
set incsearch 
set hlsearch
set cursorline 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

syntax on
