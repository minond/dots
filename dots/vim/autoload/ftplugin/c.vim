" https://vim.fandom.com/wiki/Easily_switch_between_source_and_header_file
function! ftplugin#c#SwitchSourceHeader()
  if (expand("%:e") == "c" || expand("%:e") == "cpp")
    exec 'find' expand("%:h") . "/" . expand("%:t:r") . ".h"
  else
    exec 'find' expand("%:h") . "/" . expand("%:t:r") . ".c*"
  endif
endfun
