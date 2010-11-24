" ------------------------------------------------------------------
" Filename:	 synic.vim
" Last Modified: Aug, 5 2009 (12:17)
" Maintainer:	 Adam Olsen (arolsen@gmail.com)
" Copyright:	 2008 Adam Olsen
"                This script is free software; you can redistribute it and/or 
"                modify it under the terms of the GNU General Public License as 
"                published by the Free Software Foundation; either version 2 of 
"                the License, or (at your option) any later version. 
" Description:   Vim colorscheme file.
" Install:       Put this file in the users colors directory (~/.vim/colors)
"                then load it with :colorscheme synic
" ------------------------------------------------------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""                        SPECIAL NOTE:
"" I believe this colorscheme is based off of Hans 
"" Fugal's colorscheme "desert".  
"" http://hans.fugal.net/vim/colors/desert.html
"" I might be wrong on this... if it looks like it was based off 
"" of your colorscheme, let me know so I can give you credits.
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" The 256 color terminal version of this theme was created by 
"" colorsupport.vim
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "synic"
hi Normal guifg=ivory guibg=Black ctermfg=231 ctermbg=NONE
hi SignColumn gui=NONE guifg=Cyan guibg=Grey cterm=NONE ctermfg=51 ctermbg=250
hi SpellBad gui=undercurl guifg=NONE guisp=Red cterm=undercurl ctermfg=NONE ctermbg=196
hi SpellCap gui=undercurl guifg=NONE guisp=Blue cterm=undercurl ctermfg=NONE ctermbg=21
hi SpellRare gui=undercurl guifg=NONE guisp=Magenta cterm=undercurl ctermfg=NONE ctermbg=201
hi SpellLocal gui=undercurl guifg=NONE guisp=Cyan cterm=undercurl ctermfg=NONE ctermbg=51
hi Pmenu gui=NONE guifg=NONE guibg=Magenta cterm=NONE ctermfg=NONE ctermbg=201
hi PmenuSel gui=NONE guifg=NONE guibg=DarkGrey cterm=NONE ctermfg=NONE ctermbg=248
hi PmenuSbar gui=NONE guifg=NONE guibg=Grey cterm=NONE ctermfg=NONE ctermbg=250
hi PmenuThumb gui=reverse guifg=NONE guibg=NONE cterm=reverse ctermfg=NONE ctermbg=NONE
hi CursorColumn gui=NONE guifg=NONE guibg=Grey40 cterm=NONE ctermfg=NONE ctermbg=241
hi CursorLine gui=NONE guifg=NONE guibg=Grey40 cterm=NONE ctermfg=NONE ctermbg=241
hi MatchParen gui=NONE guifg=NONE guibg=DarkCyan cterm=NONE ctermfg=NONE ctermbg=30
hi TabLineFill guifg=#272d2f guibg=#272d2f gui=None cterm=None ctermfg=236 ctermbg=236
hi TabLine guifg=MistyRose3 guibg=#272d2f gui=None cterm=None ctermfg=181 ctermbg=236
hi TabLineSel guifg=LightBlue3 guibg=#272d2f gui=None cterm=None ctermfg=110 ctermbg=236
hi ErrorMsg gui=NONE guifg=Red guibg=Linen cterm=NONE ctermfg=196 ctermbg=NONE
hi IncSearch gui=NONE guibg=LightGreen guifg=Black cterm=NONE ctermfg=16 ctermbg=120
hi ModeMsg gui=NONE guifg=fg guibg=bg cterm=NONE ctermfg=fg ctermbg=NONE
hi StatusLine       guifg=#CCCCCC     guibg=#202020     gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=black       guibg=#202020     gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE  
hi VertSplit gui=NONE guifg=LightBlue4 guibg=Black cterm=NONE ctermfg=66 ctermbg=NONE
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE
hi Cursor guibg=Lavender guifg=Black ctermfg=16 ctermbg=255
hi lCursor guibg=Lavender guifg=Black ctermfg=16 ctermbg=255
hi Directory guifg=LightGreen guibg=bg ctermfg=120 ctermbg=NONE
hi LineNr guifg=LightBlue3 guibg=bg ctermfg=110 ctermbg=NONE
hi MoreMsg gui=NONE guifg=SeaGreen guibg=bg cterm=NONE ctermfg=29 ctermbg=NONE
hi NonText gui=NONE guifg=Cyan4 guibg=Black cterm=NONE ctermfg=30 ctermbg=NONE
hi Question gui=NONE guifg=LimeGreen guibg=bg cterm=NONE ctermfg=77 ctermbg=NONE
hi Search gui=NONE guifg=Red guibg=Bisque cterm=NONE ctermfg=60 ctermbg=224
hi SpecialKey guifg=Cyan guibg=bg ctermfg=51 ctermbg=NONE
hi Title gui=NONE guifg=Yellow2 guibg=bg cterm=NONE ctermfg=226 ctermbg=NONE
hi WarningMsg guifg=Tomato3 guibg=Black ctermfg=167 ctermbg=NONE
hi WildMenu gui=NONE guifg=Black guibg=SkyBlue4 cterm=NONE ctermfg=16 ctermbg=60
hi Folded guifg=#f4aba2 guibg=bg ctermfg=217 ctermbg=NONE
hi FoldColumn guifg=DarkBlue guibg=Grey ctermfg=18 ctermbg=250

hi DiffText gui=bold guifg=NONE guibg=LightGoldenrodYellow cterm=bold ctermfg=NONE ctermbg=196
hi DiffAdd gui=NONE guifg=LightGreen guibg=gray18 cterm=NONE ctermfg=21 ctermbg=195
hi DiffChange gui=NONE guifg=white guibg=gray18 cterm=NONE ctermfg=231 ctermbg=102
hi DiffDelete gui=None guifg=LightBlue guibg=gray18 cterm=None ctermfg=152 ctermbg=195

" Syntax highlighting
hi Comment          guifg=#7C7C7C     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi String           guifg=#A8FF60     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi Number           guifg=#FF73FD     guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Keyword          guifg=#96CBFE     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi PreProc          guifg=#96CBFE     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi Conditional      guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE  " if else end

hi Todo             guifg=#8f8f8f     guibg=NONE        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
hi Constant         guifg=#99CC99     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE

hi Identifier       guifg=#C6C5FE     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function         guifg=#FFD2A7     guibg=NONE        gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
hi Type             guifg=#FFFFB6     guibg=NONE        gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi Statement        guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

hi Special          guifg=#E18964     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi Delimiter        guifg=#00A0A0     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Operator         guifg=white       guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special



" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 guifg=#6699CC      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword 
hi link rubyModule            Keyword 
hi link rubyKeyword           Keyword 
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type  


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier 
hi link javaCommentTitle      javaDocSeeTag 
hi link javaDocTags           javaDocSeeTag 
hi link javaDocParam          javaDocSeeTag 
hi link javaDocSeeTagParam    javaDocSeeTag 

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword 
hi link xmlTagName      Conditional 
hi link xmlEndTag       Identifier 


" Special for HTML
hi link htmlTag         Keyword 
hi link htmlTagName     Conditional 
hi link htmlEndTag      Identifier 


" Special for Javascript
hi link javaScriptNumber      Number 


" Special for Python
hi  link pythonEscape         Keyword      


" Special for CSharp
hi  link csXmlTag             Keyword      


" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD


if version >= 700 " Vim 7.x specific colors
    hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
    hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
    hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=white       ctermbg=darkgray    cterm=NONE
    hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
    hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
endif
