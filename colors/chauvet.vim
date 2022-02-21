" Maintainer:   Berend van Berkum (dev+chauvet+theme@dotmpe.com)
" Version:      0.0.1
" Last Change:  Februari 19 2022

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "chauvet"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine                                          ctermbg=232                cterm=NONE    term=NONE
  hi CursorColumn                                        ctermbg=232                cterm=NONE    term=NONE
  hi CursorLineNr                                        ctermfg=220                cterm=BOLD    term=BOLD
  hi MatchParen             guibg=NONE                                ctermbg=NONE  cterm=REVERSE term=REVERSE
  hi Pmenu                                               ctermfg=232  ctermbg=242
  hi PmenuSel                                            ctermfg=232  ctermbg=220
endif

" General colors
"hi Cursor                                                           ctermbg=235
hi Normal                                              ctermfg=253  ctermbg=234
hi NonText                                             ctermfg=241  ctermbg=235
hi LineNr                                              ctermfg=239  ctermbg=232   cterm=NONE    term=NONE
hi StatusLine                                          ctermfg=237  ctermbg=232
hi StatusLineNC                                        ctermfg=237  ctermbg=232
hi VertSplit                                           ctermfg=232  ctermbg=232
hi Folded                                              ctermfg=236  ctermbg=220
hi Title                                               ctermfg=208
hi Visual                                              ctermfg=186  ctermbg=238
"hi SpecialKey
hi ColorColumn                                                      ctermbg=166
hi ColorColumn                                                      ctermbg=236
hi SignColumn                                                       ctermbg=230

" Syntax highlighting
hi Comment                                             ctermfg=244   " Grey50
hi Todo                                                ctermfg=208  ctermbg=NONE  cterm=REVERSE term=REVERSE " Orange reverse
hi Constant                                            ctermfg=105   " LightSlateBlue
hi String                                              ctermfg=106   " Green (Yellow4)
hi Identifier                                          ctermfg=208   " DarkOrange
hi Function                                            ctermfg=185   " Khaki3
hi Type                                                ctermfg=105
hi Statement                                           ctermfg=130   " Brown 1 l
hi Keyword                                             ctermfg=103   " Aubergine dark
hi PreProc                                             ctermfg=186   " Pale yellowish
hi Number                                              ctermfg=111   " Light blue
hi Special                                             ctermfg=172   " Brown 2 d
hi Search                                              ctermfg=220  ctermbg=234   cterm=REVERSE term=REVERSE " Bright yellow
hi IncSearch                                           ctermfg=208  ctermbg=234   cterm=REVERSE term=REVERSE " Orange

" airline seems to keep these in sync?
"hi def link TabLine                   String
"hi def link TabLineFill               Normal
"hi def link TabLineSel                Title


" Code-specific colors

hi pythonOperator                           gui=NONE   ctermfg=103


" NERDTree colors

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


" GitGutter colors

"hi GitGutterAdd    guifg=#009900                       ctermfg=2
hi def link GitGutterAdd     String
"hi GitGutterChange guifg=#bbbb00                       ctermfg=3
hi def link GitGutterChange  Identifier
"hi GitGutterDelete guifg=#ff2222                       ctermfg=1

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

" Id: Chauvet-vim/0.0.1-dev chauvet.vim
