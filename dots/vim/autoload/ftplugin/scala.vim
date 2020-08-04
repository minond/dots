" This function has to be defined here because it's changing the filetype,
" which is needed in order for Slime to _not_ use its default text-formatting
" for Scala code. If there's a better way of getting Slime to not do this,
" then this function can move into `dots/vim/ftplugin/scala.vim`
function! ftplugin#scala#SendSlimeNoScala(command)
  set ft=none
  SlimeSend0 a:command
  SlimeSend0 "\n"
  set ft=scala
endfun
