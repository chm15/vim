set autoindent
filetype plugin indent on
syntax on
set ruler
colorscheme slate
set scrolloff=3 " keep three lines between the cursor and the edge of the screen
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed
set smarttab
set belloff=all
set wildmenu        " cmd completion
set noswapfile      " turn off swapfile

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

highlight LineNr ctermfg=grey

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"set smartindent
"set nocompatible
