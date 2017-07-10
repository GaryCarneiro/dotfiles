syntax on
colorscheme koehler

syntax enable
filetype indent on
" set autoindent width to 4 spaces
set et
set sw=4          "
set smarttab
set ruler          "Show cursor position in right hand corner
set ignorecase     "Ignore Search case         
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs


if v:version >= 703
        set cursorline          " Set Horizontal line
"        set cursorcolumn       " Set Vertical line
endif

" Map F5 and F6 to run ruby and python scripts respectively
nnoremap <silent> <F5> :!clear ; ruby %<CR>
nnoremap <silent> <F6> :!clear ; python %<CR>

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on     

  " Restore cursor position since last opening
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

" Powerline for VIM (Mac)
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

" MacVIM Powerline Font Config
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif
