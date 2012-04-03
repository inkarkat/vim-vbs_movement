" vbs_movement.vim: Movement over VBScript functions / properties / subs with ]m etc.
"
" DEPENDENCIES:
"   - CountJump.vim, CountJump/Motion.vim, CountJump/TextObjects.vim autoload
"     scripts
"
" Copyright: (C) 2012 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"	002	03-Apr-2012	Add special for WSH filetype to also move to
"				JavaScript functions, as in
"				javascript_movement.vim.
"	001	03-Apr-2012	file creation from vim_movement.vim

" Avoid installing when in unsupported Vim version.
if v:version < 700
    finish
endif

let s:patternFunctionBegin = '\c^\s*\%(\%(public\|private\)\s\+\)\?\%(function\|property \%(get\|set\)\|sub\)\>'
let s:patternFunctionEnd = '^\c\s*end \%(function\|property\|sub\)\>'

"			Move around VBScript functions, properties and subs:
"]m			Go to [count] next start of a function / property / sub.
"]M			Go to [count] next end of a function / property / sub.
"[m			Go to [count] previous start of a function / property / sub.
"[M			Go to [count] previous end of a function / property / sub.

let s:patternJavaScriptFunctionBegin = ''
if &l:filetype ==# 'wsh'
    let s:patternJavaScriptFunctionBegin = '\|\<function('
endif
call CountJump#Motion#MakeBracketMotion('<buffer>', 'm', 'M', s:patternFunctionBegin . s:patternJavaScriptFunctionBegin, s:patternFunctionEnd, 0)

"im			"inner method" text object, select [count] function /
"			property / sub contents.
"am			"a method" text object, select [count] function /
"			property / subs, including the function / property / sub
"			definition and 'end ...'.
call CountJump#TextObject#MakeWithCountSearch('<buffer>', 'm', 'ai', 'V', s:patternFunctionBegin, s:patternFunctionEnd)

unlet s:patternJavaScriptFunctionBegin
unlet s:patternFunctionBegin
unlet s:patternFunctionEnd

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
