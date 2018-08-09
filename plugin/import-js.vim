command! ImportJSWord call importjs#Word()
command! ImportJSGoto call importjs#Goto()
command! ImportJSFix call importjs#Fix()

augroup loadImportJsOnHold
  au!
  au VimEnter * call importjs#FindPackageJson(getcwd())
  " call on cursorhold since package.json can be created
  " after vim was started
  au CursorHold,CursorHoldI * call importjs#FindPackageJson(getcwd())
augroup END
