" vbs_movement.vim: Movement over VBScript subs / functions with ]m etc.
"
" DEPENDENCIES:
"   - CountJump.vim, CountJump/Motion.vim, CountJump/TextObjects.vim autoload
"     scripts.
"
" Copyright: (C) 2012 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"	001	03-Apr-2012	file creation from vim_movement.vim

" Avoid installing when in unsupported Vim version.
if v:version < 700
    finish
endif

let s:patternFunctionBegin = '\c^\s*\%(\%(public\|private\)\s\+\)\%(sub\|function\)\>'
let s:patternFunctionEnd = '^\c\s*end \%(sub\|function\)\>'

"			Move around VBScript subs and functions:
"]m			Go to [count] next start of a sub / function.
"]M			Go to [count] next end of a sub / function.
"[m			Go to [count] previous start of a sub / function.
"[M			Go to [count] previous end of a sub / function.

call CountJump#Motion#MakeBracketMotion('<buffer>', 'm', 'M', s:patternFunctionBegin, s:patternFunctionEnd, 0)

"im			"inner method" text object, select [count] sub / function contents.
"am			"a method" text object, select [count] sub / functions,
"			including the sub / function definition and 'end function'.
call CountJump#TextObject#MakeWithCountSearch('<buffer>', 'm', 'ai', 'V', s:patternFunctionBegin, s:patternFunctionEnd)

unlet s:patternFunctionBegin
unlet s:patternFunctionEnd

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
