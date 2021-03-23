"" spell
let g:SpellCheck_DeineAuxiliaryCommands = 0
let g:SpellCheck_DefineQuickfixMappings = 0
let g:SpellCheck_ErrorContextNum = 99
let g:SpellCheck_OnNospell = function('SpellCheck#AutoEnableSpell')

" enable spell only if file type is normal text
let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid']
autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif
