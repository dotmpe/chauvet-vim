" This is a coy of powerlineish, with colors adjusted to Chauvet Vim theme

" TODO: fix all 24bit hex values (for gvim)

" XXX: is there an inactive/active mode?

if &background == 'light'

  " Normal mode                                    " fg - bg
  let s:N1 = [ '#ededed' , '#ff8700' , 255 , 208 ] "
  let s:N2 = [ '#616161' , '#cfcfcf' , 238 , 252 ] "
  let s:N3 = [ '#000000' , '#ededed' , 243 , 255 ] "

  " Insert mode
  let s:I1 = [ '#005f5f' , '#ffffff' , 254 , 105 ] " - purple blue
  let s:I2 = [ '#5fafd7' , '#0087af' , 240 , 251 ] "
  let s:I3 = [ '#87d7ff' , '#005f87' , 105 , 231 ] "

  " Visual mode
  let s:V1 = [ '#080808' , '#ffd700' , 232 , 220 ] " - yellow

  " Replace mode
  let s:RE = [ '#ffffff' , '#d70000' , 231 , 160 ] " white - red

else

  " Normal mode                                    " fg - bg
  let s:N1 = [ '#121212' , '#ff8700' , 232 , 208 ] " grey - orange
  let s:N2 = [ '#9e9e9e' , '#303030' , 247 , 234 ] " gray8 - gray2
  let s:N3 = [ '#ffffff' , '#121212' , 252 , 232 ] " white - gray4

  " Insert mode
  let s:I1 = [ '#005f5f' , '#ffffff' , 233 , 105 ] " grey - purple blue
  let s:I2 = [ '#5fafd7' , '#0087af' , 247 , 236 ] "
  let s:I3 = [ '#87d7ff' , '#005f87' , 233 , 252 ] "

  " Visual mode
  let s:V1 = [ '#080808' , '#ffd700' , 232 , 220 ] " grey - yellow

  " Replace mode
  let s:RE = [ '#ffffff' , '#d70000' , 231 , 160 ] " white - red

endif

" Paste mode
"let s:PA = [ '#ab3e5d' , 161 ]

" Info modified
"let s:IM = [ '#242321' , 235 ]

let g:airline#themes#chauvet#palette = {}

let g:airline#themes#chauvet#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#chauvet#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#chauvet#palette.insert_replace = {
      \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ],
      \ 'airline_z': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#chauvet#palette.visual = {
      \ 'airline_a': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ],
      \ 'airline_z': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#chauvet#palette.replace = copy(airline#themes#chauvet#palette.normal)
let g:airline#themes#chauvet#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]
let g:airline#themes#chauvet#palette.replace.airline_z = g:airline#themes#chauvet#palette.replace.airline_a

let s:IA = [ s:N2[0] , s:N3[1] , s:N2[2] , s:N3[3] , '' ]
let g:airline#themes#chauvet#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" XXX: above does not set warning/error areas but Airline seems to pick sensible
" values from colorschem..
"
if &background ==# 'light'
  " Change warning area to bright yellow
  let g:airline#themes#chauvet#palette.normal.airline_warning =
        \ ['#000000', '#8700df', 232, 220, '']
  let g:airline#themes#chauvet#palette.insert.airline_warning =
        \ ['#000000', '#8700df', 232, 220, '']
  let g:airline#themes#chauvet#palette.visual.airline_warning =
        \ ['#000000', '#8700df', 232, 220, '']
  let g:airline#themes#chauvet#palette.replace.airline_warning =
        \ ['#000000', '#8700df', 232, 220, '']
endif

"" Change error red
if &background ==# 'light'
  let g:airline#themes#chauvet#palette.normal.airline_error =
        \ ['#000000', '#8700df', 255, 9, '']
  let g:airline#themes#chauvet#palette.insert.airline_error =
        \ ['#000000', '#8700df', 255, 9, '']
  let g:airline#themes#chauvet#palette.visual.airline_error =
        \ ['#000000', '#8700df', 255, 9, '']
  let g:airline#themes#chauvet#palette.replace.airline_error =
        \ ['#000000', '#8700df', 255, 9, '']
else
  let g:airline#themes#chauvet#palette.normal.airline_error =
        \ ['#000000', '#8700df', 232, 9, '']
  let g:airline#themes#chauvet#palette.insert.airline_error =
        \ ['#000000', '#8700df', 232, 9, '']
  let g:airline#themes#chauvet#palette.visual.airline_error =
        \ ['#000000', '#8700df', 232, 9, '']
  let g:airline#themes#chauvet#palette.replace.airline_error =
        \ ['#000000', '#8700df', 232, 9, '']
endif
"
