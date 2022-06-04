" Maintainer:   Berend van Berkum (dev+chauvet+theme@dotmpe.com)
" Version:      0.0.1-dev
" Last Change:  April 9 2022

if exists("syntax_on")
  syntax reset
endif

hi clear

" Let Vim know we have a colorscheme loaded
let colors_name = "chauvet"

" TODO: wanto disable some backgrounds to enjoy semi-transparent terminal. 
"
" XXX: normal, statusbar, cursor, cursorline/col and colorcol configurations?
if !strlen($BG)
  let $BG="1"
endif

if &background ==# 'light'
  " TODO: fix for light backgrounds. Doing some testing.
  if version >= 700
    hi CursorLineNr                                        ctermfg=220  ctermbg=255   cterm=BOLD    term=BOLD
  endif

  if $BG == "1"
    hi Normal                                              ctermfg=236  ctermbg=254
    hi LineNr                                              ctermfg=248  ctermbg=255   cterm=NONE    term=NONE
    hi NonText                                             ctermfg=236  ctermbg=252
  else
    hi Normal                                              ctermfg=236  ctermbg=NONE
    hi LineNr                                              ctermfg=248  ctermbg=NONE  cterm=NONE    term=NONE
    hi NonText                                             ctermfg=236  ctermbg=NONE
  endif

  hi StatusLine                                          ctermfg=237  ctermbg=255
  hi StatusLineNC                                        ctermfg=250  ctermbg=255
  hi Folded                                              ctermfg=249  ctermbg=220
  hi FoldColumn                                          ctermfg=220  ctermbg=253

  hi Visual                                              ctermfg=186  ctermbg=22
  hi VisualNOS                                           ctermfg=186  ctermbg=22

  hi SignColumn                                                       ctermbg=247

  hi Function                                            ctermfg=58
  hi PreProc                                             ctermfg=139

else
  " Vim >= 7.0 specific colors
  if version >= 700
    hi CursorLine                                          ctermbg=232                cterm=NONE    term=NONE
    hi CursorColumn                                        ctermbg=232                cterm=NONE    term=NONE
    hi CursorLineNr                                        ctermfg=220  ctermbg=232   cterm=BOLD    term=BOLD
    hi MatchParen             guibg=NONE                   ctermfg=105  ctermbg=NONE cterm=REVERSE term=REVERSE
    hi Pmenu                                               ctermfg=232  ctermbg=242
    hi Pmenu                                               ctermfg=242  ctermbg=232
    hi PmenuSel                                            ctermfg=232  ctermbg=220
  endif

  " General colors
  "hi Cursor                                                           ctermbg=235
  if $BG == "1"
    hi Normal                                              ctermfg=251  ctermbg=233
    hi LineNr                                              ctermfg=239  ctermbg=232   cterm=NONE    term=NONE
    hi NonText                                             ctermfg=241  ctermbg=235
  else
    hi Normal                                              ctermfg=251  ctermbg=NONE
    hi LineNr                                              ctermfg=239  ctermbg=NONE  cterm=NONE    term=NONE
    hi NonText                                             ctermfg=241  ctermbg=NONE
  endif

  hi StatusLine                                          ctermfg=240  ctermbg=232
  hi StatusLineNC                                        ctermfg=237  ctermbg=232
  hi VertSplit                                           ctermfg=232  ctermbg=232
  hi Folded                                              ctermfg=236  ctermbg=220
  hi FoldColumn                                          ctermfg=220  ctermbg=234
  hi Title                                               ctermfg=208

  hi Visual                                              ctermfg=186  ctermbg=22
  hi VisualNOS                                           ctermfg=186  ctermbg=22

  hi ColorColumn                                                      ctermbg=166 " [DarkOrange3b]
  hi ColorColumn                                                      ctermbg=236
  hi SignColumn                                                       ctermbg=230

  hi Function                                            ctermfg=185   " [Khaki3]
  hi PreProc                                             ctermfg=186   " [LightGoldenrod2] Pale yellowish
endif

" Clear Underlined class of colors?
hi clear Underlined
hi Underlined gui=UNDERLINE cterm=UNDERLINE term=UNDERLINE

" Syntax highlighting
hi Comment                                             ctermfg=244   " [Grey50]
hi Todo                                                ctermfg=208  ctermbg=NONE  cterm=REVERSE term=REVERSE " Orange reverse
hi Constant                                            ctermfg=105   " [LightSlateBlue]
hi String                                              ctermfg=106   " [Yellow4] Green
hi Identifier                                          ctermfg=208   " [DarkOrange]
"hi Function                                            ctermfg=185   " [Khaki3]
hi Type                                                ctermfg=105
hi Statement                                           ctermfg=130   " [DarkOrange3a] Brown 1: dark brown for common repeating programming statements
hi Keyword                                             ctermfg=103   " [LightSlateGrey] Aubergine grey: mute but different for certain keywords
"hi PreProc                                             ctermfg=186   " [LightGoldenrod2] Pale yellowish
hi Number                                              ctermfg=111   " [SkyBlue2] Light blue
hi Special                                             ctermfg=172   " [Orange3] Brown 2: light brown for delimiters etc.
"hi SpecialKey
hi Search                                              ctermfg=220  ctermbg=234   cterm=REVERSE term=REVERSE " Bright yellow
hi IncSearch                                           ctermfg=208  ctermbg=234   cterm=REVERSE term=REVERSE " Orange


"" Vim-spell colors

" In stead of reversed text that looks a lot like a diff, this uses just regular
" text color to highlight spelling issues. But still a bit darker background to
" make the spans stand out more than regular syntax.

if &background ==# 'light'

  " Normally bright but not very saturated red background.
  hi SpellBad cterm=underline term=NONE ctermul=9 ctermbg=255
  
  " Turn of capitalization suggestion since it doesn't work right for me
  " (just too simplistic). XXX: move to sep config files?
  "hi clear SpellCap
  " Use a pale yellow.
  "hi SpellCap cterm=NONE term=NONE ctermfg=186 ctermbg=255
  hi SpellCap cterm=underline term=NONE ctermul=186 ctermbg=255
  
  " Normally a bright but not very saturated light blue, and not very readable
  " with light text. Use another light blue.
  "hi clear SpellLocal 
  hi SpellLocal cterm=underline term=NONE ctermul=111 ctermbg=255
  
  " Normally purplish, use this scheme's purplish (LightSlateBlue)
  hi SpellRare cterm=NONE term=NONE ctermfg=105 ctermbg=255

else

  " Normally bright but not very saturated red background.
  hi SpellBad cterm=underline term=NONE ctermul=9 ctermbg=232
  
  " Turn of capitalization suggestion since it doesn't work right for me
  " (just too simplistic). XXX: move to sep config files?
  "hi clear SpellCap
  " Use a pale yellow.
  "hi SpellCap cterm=NONE term=NONE ctermfg=186 ctermbg=232
  hi SpellCap cterm=underline term=NONE ctermul=186 ctermbg=232
  
  " Normally a bright but not very saturated light blue, and not very readable
  " with light text. Use another light blue.
  "hi clear SpellLocal 
  hi SpellLocal cterm=underline term=NONE ctermul=111 ctermbg=232
  
  " Normally purplish, use this scheme's purplish (LightSlateBlue)
  hi SpellRare cterm=NONE term=NONE ctermfg=105 ctermbg=232

endif

" XXX: what is guiisp?


"" Vimdiff colors

" TODO: adjust vimdiff as well
"highlight DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=22
"highlight DiffDelete cterm=BOLD ctermfg=NONE ctermbg=52
"highlight DiffChange cterm=BOLD ctermfg=NONE ctermbg=23
"highlight DiffText   cterm=BOLD ctermfg=NONE ctermbg=23


"" NERDTree colors
" Most of these links are the defaults, only a few tweaks

hi def link NERDTreeBookmark          Number
hi def link NERDTreeBookmarkName      String
hi def link NERDTreeBookmarksHeader   Identifier
hi def link NERDTreeBookmarksLeader   Constant

hi def link NERDTreeCWD               String
hi def link NERDTreeClosable          Number
hi def link NERDTreeDir               Keyword
hi def link NERDTreeDirSlash          Function
hi def link NERDTreeExecFile          Title
hi def link NERDTreeFile              Normal
hi def link NERDTreeHelp              String
hi NERDTreeLinkFile                           ctermfg=220
hi def link NERDTreeLinkTarget        Comment
hi def link NERDTreeOpenable          String
hi def link NERDTreePart              Constant
hi def link NERDTreeUp                Comment


"" GitGutter colors

if &background ==# 'light'
  hi GitGutterAdd    ctermfg=106 ctermbg=255
  hi GitGutterChange ctermfg=208 ctermbg=255
  hi GitGutterDelete ctermfg=1 ctermbg=255
else
  hi GitGutterAdd    ctermfg=106 ctermbg=232
  hi GitGutterChange ctermfg=208 ctermbg=232
  hi GitGutterDelete ctermfg=1 ctermbg=232
endif


"" Tabline colors
" airline seems to keep these in sync?
"hi def link TabLine                   String
"hi def link TabLineFill               Normal
"hi def link TabLineSel                Title


"" Pandoc colors
" XXX: this is no help, pandoc will happily set everything on-load (and does a
" good job, but still). Should look into if it takes configuration.
hi def link pandocAtxHeader           Identifier
hi def link pandocDefinitionBlockTerm Keyword
hi def link pandocDelimitedCodeBlock  Statement
hi def link pandocNoFormatted         String
hi def link pandocOperator            Number
hi def link pandocReferenceDefinition Keyword
hi def link pandocReferenceLabel      Keyword
hi def link pandocReferenceURL        String
hi pandocEmphasis cterm=REVERSE term=REVERSE


"" Syntax-specific colors

" These all equal Type (along with cType) in the c syntax. Thought I'd add some
" variation.
hi def link cStorageClass Keyword
hi def link cStructure Keyword
hi def link cTypedef Number

" Python syntax makes operator a statement. I like it as more reserved and
" special than that yet not too prominet like type or number.
hi def link pythonOperator Keyword

" Ruby syntax treats its own blocks as preproc. Interesting but not very pretty.
" This makes it more like Python.
hi def link RubyDefine Statement
hi def link RubyClass Statement

" FIXME: I wish more syntaxes would use Keyword a bit more. Why is that?
" I prefer to think of if, while etc as statements.
" But class, def or return? Ie. c doesnt use Keyword class at all.
" XXX: Ruby is also a bit low...


" Id: Chauvet-vim/0.0.1-dev chauvet.vim
