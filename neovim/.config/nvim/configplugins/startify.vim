" startify
let g:startify_session_persistence = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0

" startify when there is no open buffer left
autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

" open startify on start
autocmd VimEnter * if argc() == 0 | Startify | endif

" open files preview on enter and provided arg is a folder
autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | Startify | endif
autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'cd' fnameescape(argv()[0])  | endif
autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | Files | endif
