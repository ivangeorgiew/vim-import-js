command! ImportJSWord call importjs#Word()
command! ImportJSGoto call importjs#Goto()
command! ImportJSFix call importjs#Fix()

"call it when entering vim in order to have no lag at all
call importjs#FindPackageJson(getcwd())

" call on cursorhold since package.json can be created
" after vim was started
augroup loadImportJsOnHold
  au!
  au CursorHold,CursorHoldI * call importjs#FindPackageJson(getcwd())
augroup END
