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
hi Pmenu                                               ctermbg=242
hi PmenuSel                                            ctermfg=0    ctermbg=185
endif

" General colors
hi Cursor                                                           ctermbg=241
hi Normal                                              ctermfg=253  ctermbg=233
hi NonText                                             ctermfg=242  ctermbg=237
hi LineNr                                              ctermfg=239  ctermbg=232     cterm=NONE    term=NONE
hi StatusLine                                          ctermfg=237  ctermbg=232
hi StatusLineNC                                        ctermfg=237  ctermbg=232
hi VertSplit                                           ctermfg=232  ctermbg=232
hi Folded                                              ctermfg=236  ctermbg=220
"hi Title
hi Visual                                              ctermfg=186  ctermbg=238
"hi SpecialKey
hi ColorColumn                                                      ctermbg=166
hi ColorColumn                                                      ctermbg=234
hi SignColumn                                                       ctermbg=232

" Syntax highlighting
hi Comment                                             ctermfg=244   " Grey
hi Todo                                                ctermfg=208  ctermbg=NONE  cterm=REVERSE term=REVERSE " Orange reverse
hi Constant                                            ctermfg=111   " Light blue
hi String                                              ctermfg=106   " Pale green 
hi Identifier                                          ctermfg=208   " Orange
hi Function                                            ctermfg=185   " Pale greenish yellow
hi Type                                                ctermfg=111
hi Statement                                           ctermfg=130   " Brown 1 l
hi Keyword                                             ctermfg=103   " Aubergine dark
hi PreProc                                             ctermfg=186   " Pale yellowish
hi Number                                              ctermfg=111
hi Special                                             ctermfg=172   " Brown 2 d
hi Search                                              ctermfg=220  ctermbg=234   cterm=REVERSE term=REVERSE
hi IncSearch                                           ctermfg=208  ctermbg=234   cterm=REVERSE term=REVERSE

"hi def link Todo Identifier
"hi IncSearch cterm=REVERSE

" Code-specific colors
hi pythonOperator                           gui=NONE   ctermfg=103


" NERDTree colors
hi NERDTreeFile                                        ctermfg=250
hi NERDTreeDir                                         ctermfg=111
hi NERDTreeUp                                          ctermfg=62

hi def link NERDTreeOpenable     String
hi def link NERDTreeCloseable    NERDTreeOpenable
hi def link NERDTreeCWD          String
hi def link NERDTreePart         String


"hi GitGutterAdd    guifg=#009900                       ctermfg=2
"hi GitGutterChange guifg=#bbbb00                       ctermfg=3
"hi GitGutterDelete guifg=#ff2222                       ctermfg=1

hi def link GitGutterAdd     String
hi def link GitGutterChange  Identifier


" Id: Chauvet-vim/0.0.1-dev chauvet.vim
