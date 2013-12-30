if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Todos
syn match todoHeader      /^#\+ .*/
syn match todoDue   /\d\{4}-\d\{2}-\d\{2} .*/ "contains=todoProject,todoContext
syn match todoPriorityA   /^A .*/ "contains=todoProject,todoContext
syn match todoPriorityB   /^B .*/ "contains=todoProject,todoContext
syn match todoSubList     /^- .*/ "contains=todoProject,todoContext
syn match todoContext     /@\S\+/   contained
syn match todoProject     /+\S\+/   contained
syn match todoDone        /^x .*/
syn match todoNotDone     /^z .*/

hi todoHeader         ctermfg=magenta
hi todoDone           ctermfg=darkgrey
hi todoNotDone        ctermfg=darkgrey
hi todoDue            ctermfg=red
hi todoPriorityA      ctermfg=darkgreen
hi todoPriorityB      ctermfg=darkyellow
hi todoSubList        ctermfg=white
hi todoContext        ctermfg=lightcyan
hi todoProject        ctermfg=blue

" Habit
syn match habitHead   /^| \d\{4} .*/
syn match habitHead   /^| \u \d\{2}-\d\{2}/ms=s+2
syn match habitDone   /|  x  |/ms=s+2,me=e-2
syn match habitSkip   /|  -  |/ms=s+2,me=e-2
syn match habitMiss   /|     |/ms=s+2,me=e-2
hi habitDone    ctermfg=black ctermbg=darkgreen
hi habitSkip    ctermfg=black ctermbg=yellow
hi habitMiss    ctermfg=black ctermbg=darkred
hi habitHead    ctermfg=lightyellow
hi habitRow     ctermfg=lightyellow
