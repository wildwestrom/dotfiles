"" LaTeX
let g:tex_flavor = 'latex'

let g:vimtex_latexmk_build_dir = './build/'
let g:vimtex_view_automatic = 0

if has('nvim')
  let g:vimtex_compiler_progname = 'nvr'
endif

let g:vimtex_view_general_viewer
        \ = '/Users/main/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !texclear %
