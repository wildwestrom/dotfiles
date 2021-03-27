" Coloring
" theme
set background=dark
colorscheme "solarized8"

" misc
highlight Pmenu guibg='#00010a' guifg=white             " popup menu colors
highlight Comment gui=italic cterm=italic               " bold comments
highlight Normal gui=none
highlight NonText guibg=none
highlight clear SignColumn                              " use number color for sign column color
hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE          " search string highlight color
autocmd ColorScheme * highlight VertSplit cterm=NONE    " split color
hi NonText guifg=bg                                     " mask ~ on empty lines
hi clear CursorLineNr                                   " use the theme color for relative number
hi CursorLineNr gui=bold                                " make relative number bold
hi EasyMotionMoveHL guibg=#b16286 guifg=#ebdbb2 gui=NONE

" colors for git (especially the gutter)
hi DiffAdd  guibg=#0f111a guifg=#43a047
hi DiffChange guibg=#0f111a guifg=#fdd835
hi DiffRemoved guibg=#0f111a guifg=#e53935

" indentline color
let g:indentLine_color_gui = '#363949'
