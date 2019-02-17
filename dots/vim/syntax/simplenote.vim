syn match SN_Name "^.[^(]*"
syn match SN_Tags "(.*)$"

hi SN_Name cterm=bold
hi link SN_Tags Comment
