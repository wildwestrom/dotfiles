set mouse=a                                             " enable mouse scrolling
set clipboard+=unnamedplus                              " use system clipboard by default
filetype plugin indent on                               " enable indentations
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try FiraCode)
set encoding=utf-8                                      " text encoding
set relativenumber                                      " enable numbers on the left
set title                                               " tab title as file name
set noshowmode                                          " dont show current mode below statusline
set conceallevel=2                                      " set this so we wont break indentation plugin
set noruler                                             " don't show a ruler in gui vim
set splitright                                          " open vertical split to the right
set splitbelow                                          " open horizontal split to the bottom
set emoji                                               " enable emojis
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
au BufEnter * set fo-=c fo-=r fo-=o                     " stop annoying auto commenting on new lines
set history=1000                                        " history limit
set backspace=indent,eol,start                          " sensible backspacing
set undofile                                            " enable persistent undo
set undodir=/tmp                                        " undo temp file directory
set foldlevel=0                                         " open all folds by default
set inccommand=nosplit                                  " visual feedback while substituting
set autoread                                            " automatically updates the file
" let loaded_netrw = 0                                    " disable netrw
let g:omni_sql_no_default_maps = 1                      " disable sql omni completion
" set wrap linebreak nolist                               " soft wrap
set nowrap                                              " no wrap
set nospell                                             " disable spellcheck by default"
syntax on


"tab settings
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent            " tab key actions
 
" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1

" relative numbers on normal mode only
set number                                              " enable numbers on the left
augroup numbertoggle
  autocmd!
  autocmd InsertLeave * set relativenumber
  autocmd InsertEnter * set norelativenumber
augroup END
