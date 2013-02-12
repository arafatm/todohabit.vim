"if exists("b:did_ftplugin")
"  finish
"endif
"let b:did_ftplugin = 1

function! s:TodoDone(...)
  let when = 3600 * 24 * a:0
  let format = "%Y-%m-%d "
  let doneDate = strftime(format, localtime() - when)

  execute "normal 0I" . "x " . doneDate
endfunction 

map ,x :call <SID>TodoDone()<CR>
