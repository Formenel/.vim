filetype off
call pathogen#infect('bundle/{}', 'pythide/{}')
call pathogen#helptags()

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start " allow backspacing over everything in insert mode
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set laststatus=2

" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

syntax enable
set hlsearch

set t_Co=256

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set exrc
set nocp

autocmd FileType cpp set cino=g0

map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>b :buffers<CR>

set statusline=%{fugitive#statusline()}%t%m%r%y%=%c\ %l/%L\ %P

colorscheme inkpot

filetype indent plugin on

