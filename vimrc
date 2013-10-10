syntax on
colorscheme koehler

syntax enable
filetype indent on
" set autoindent width to 4 spaces
set et
set sw=4
set smarttab
set ruler
set ignorecase
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs


if v:version >= 703
        set cursorline
endif


set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
