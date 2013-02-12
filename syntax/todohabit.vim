if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match todoHeader      /^#\+ .*/
syn match todoDue         /\d\{4}-\d\{2}-\d\{2} .*/ "contains=todoProject,todoContext
syn match todoPriorityA   /^A .*/ "contains=todoProject,todoContext
syn match todoPriorityB   /^B .*/ "contains=todoProject,todoContext
syn match todoSubList     /^- .*/ "contains=todoProject,todoContext
syn match todoContext     /@\S\+/   contained
syn match todoProject     /+\S\+/   contained
syn match todoDone        /^x .*/

hi todoHeader         ctermfg=magenta
hi todoDone            ctermfg=darkgrey
hi todoDue            ctermfg=red
hi todoPriorityA      ctermfg=green
hi todoPriorityB      ctermfg=yellow
hi todoSubList        ctermfg=white
hi todoContext        ctermfg=lightcyan
hi todoProject        ctermfg=blue

syn match habitHead /^\d\{4} .*/
syn match habitHead /^\u \d\{2}-\d\{2}/
syn match habitX  / X[$ ]/
hi habitX ctermfg=red
hi habitHead ctermfg=lightyellow
hi habitRow  ctermfg=lightyellow
