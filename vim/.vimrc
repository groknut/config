
" === МЕНЕДЖЕР ПЛАГИНОВ ===
call plug#begin('~/.vim/plugged')

" Файловый менеджер
Plug 'preservim/nerdtree'

" Иконки для файлов
Plug 'ryanoasis/vim-devicons'

" Статусная строка
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" LSP и автодополнение как в IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Автоматическое закрытие скобок
Plug 'jiangmiao/auto-pairs'

" Комментирование кода
Plug 'tpope/vim-commentary'

" Git изменения
Plug 'airblade/vim-gitgutter'

" Цветовая схема
Plug 'joshdick/onedark.vim'

call plug#end()

" === ИСПРАВЛЕНИЕ БАГОВ ПЕРЕРИСОВКИ ===
set ttyfast
set lazyredraw  
set encoding=utf-8
set term=screen-256color
set t_ut=
set t_Co=256

" Быстрая перерисовка при ресайзе
autocmd VimResized * redraw!

" Убираем мигание курсора
set guicursor=

" === ОСНОВНЫЕ НАСТРОЙКИ ===
syntax enable
colorscheme onedark
set termguicolors
set number
set relativenumber
set showcmd
set laststatus=2
set noshowmode

" === НАСТРОЙКИ ПЛАГИНОВ ===

" NERDTree (файловое дерево слева)
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1

" Airline (статусная строка)
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1

" Auto-pairs (автозакрытие скобок)
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`'}

" === COC.NVIM (LSP - АВТОДОПОЛНЕНИЕ КАК В IDE) ===

" Используй Tab для автодополнения
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enter подтверждает автодополнение
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" === ДОПОЛНИТЕЛЬНЫЕ НАСТРОЙКИ ===
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Поиск
set incsearch
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<CR>

" Автоопределение типов файлов
filetype plugin on
autocmd BufRead,BufNewFile *.cpp,*.c,*.h set filetype=cpp
autocmd BufRead,BufNewFile *.py set filetype=python
