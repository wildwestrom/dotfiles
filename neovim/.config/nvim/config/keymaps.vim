"" the essentials
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap ; :
nmap \ <leader>q
map <F6> :Startify <CR>
map <F4> :Vista!!<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>q :bd<CR>
map <leader>v :Vista finder<CR>
nnoremap <silent> <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commands<CR>
map <leader>/ :Rg<CR>
nmap <leader>w :w<CR>
map <leader>s :Format<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
noremap <leader>e :PlugInstall<CR>
noremap <C-q> :q<CR>
inoremap fd <ESC>

" copy and paste to clipboard


" switch between splits using ctrl + {h,j,k,l}
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
noremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" easy motion stuff
" search behavior
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" quick navigation
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" fugitive mappings
map <leader>d :Gdiffsplit<CR>

" disable hl with 2 esc
noremap <silent><esc> <esc>:noh<CR><esc>

" bandaid for lf
cnoremap 3636 <c-u>undo<CR>

" Turn on goyo
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" use default keys for vim-iced
let g:iced_enable_default_key_mappings = v:true

"}}} 
