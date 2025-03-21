" set guioptions-=r
" set guioptions-=l
set guioptions=

" Try to add cpp format

" Download solarized.vim and paste it into the
" users/user_name/vimfiles/colors
syntax enable
set background=dark 
colorscheme gruvbox     
let g:gruvbox_transparent_bg = 1

autocmd GUIEnter * set t_vb=
" Disables the error bell
set noerrorbells
set novisualbell
set t_vb=
set clipboard=unnamed
" Enable syntax highlighting
syntax on

" Set GUI font (adjust font name and size as needed)
set guifont=JetBrains\ Mono\ NL:h14:b

" Enable line numbers
set number
" Enable relative line numbers
set relativenumber

" Set tab width and indentation settings
set tabstop=4       " Number of spaces a tab counts for
set shiftwidth=4    " Number of spaces for autoindent
set expandtab       " Convert tabs to spaces
set autoindent      " Copy indent from the current line
set smartindent     " Auto-indent new lines

"Enable highlighting for the current line
set cursorline

" Enable mouse support in GVim
set mouse=a

" Enable bracket highlighting
set showmatch

" Remove GUI menu bar and toolbar for a cleaner look
" set guioptions-=m
" set guioptions-=T

" Faster update time
set updatetime=300

" Ensure UTF-8 encoding
set encoding=utf-8

" Allow backspacing over everything
set backspace=indent,eol,start

" Enable file type detection and set appropriate indenting
filetype plugin indent on

" Enable incremental search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Map F5 to compile and run C++ code (modify for your environment)
" nnoremap <F5> :w<CR>:!g++ % -o %:r && ./%:r<CR>
" nnoremap <F5> :w<CR>:!g++ % -o %:r && cmd /c %:r<CR>

autocmd FileType cpp nnoremap <buffer> <F5> :w<CR>:!g++ % -o %:r && %:r<CR>
autocmd FileType java nnoremap <buffer> <F5> :w<CR>:!javac % && java %:r<CR>
" autocmd FileType rust nnoremap <buffer> <F5> :w<CR>:!rustc % -o %:r.exe && start cmd /c %:r.exe<CR>

" The below 2 commands open 2 seperate terminals, one for compiling and another for running .exe
" autocmd FileType rust nnoremap <buffer> <F5> :w<CR>:!rustc % -o %:r.exe && start cmd /k %:r.exe<CR>
" autocmd FileType rust nnoremap <buffer> <F5> :w<CR>:!rustc % -o %:r.exe && start cmd /k %:r.exe<CR>

autocmd FileType rust nnoremap <buffer> <F5> :w<CR>:!rustc % -o %:r.exe && start /b cmd /k %:r.exe<CR>

nnoremap <F5> :w<CR>:exec 'terminal cmd /c "if exist .venv\Scripts\activate (call .venv\Scripts\activate && python ' . shellescape(expand('%:p')) . ') else (python ' . shellescape(expand('%:p')) . ')"'<CR>
" Autoload cpp template
autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpp_template.cpp

nnoremap <F8> :terminal cmd /K "cd /d %:p:h"<CR>
nnoremap <S-F8> :vsplit \| terminal cmd /K "cd /d %:p:h"<CR>

nnoremap <F9> :!wt.exe -p "Git Bash" --startingDirectory "%:p:h"<CR>

nnoremap <C-h> :wincmd h<CR> " Move left between splits
nnoremap <C-l> :wincmd l<CR> " Move right between splits
nnoremap <C-j> :wincmd j<CR> " Move down between splits
nnoremap <C-k> :wincmd k<CR> " Move up between splits

