setlocal nosmartindent

autocmd bufenter *.rkt :call UpdateRacketSyntax()
autocmd filetype *.rkt :call UpdateRacketSyntax()

nnoremap <buffer> <leader>r :w<cr>:call RacketStartOrReloadRepl(expand("%"))<cr>:redraw!<cr>
nnoremap <buffer> <leader>r :w<cr>:call RacketStartOrReloadRepl(expand("%"))<cr>:redraw!<cr>
nnoremap <buffer> <leader>e :w<cr>:call RacketKillRepl()<cr>:redraw!<cr>
nnoremap <buffer> <leader>t :Dispatch raco test "%"<CR>

nnoremap <buffer> <leader>D :silent !raco docs <cword><cr>:redraw!<cr>

command! -nargs=* RacoDoc execute ':silent !raco doc <f-args>' | execute ':redraw!'

let g:no_racket_maps = 1
let g:racket_hash_lang_dict =
      \ {
      \   'racket/base': 'racket',
      \   'typed/racket': 'racket',
      \   'typed/racket/base': 'racket',
      \   'br': 'racket',
      \   'br/quicklang': 'racket',
      \   'slideshow': 'racket',
      \   'info': 'racket',
      \   'scribble/base': 'scribble',
      \   'scribble/manual': 'scribble',
      \ }

let g:racket_repl_id = getpid() . "_vim"

function! RacketReplRunning()
  let match_count = system("ps aux | grep racket | grep " . g:racket_repl_id . " | wc -l | xargs -n1 echo -n")
  return match_count == "2" ? 0 : 1
endfunction

function! IsTypedRacket()
  return match(getline(1), "typed/racket") != -1
endfunction

function! RacketStartOrReloadRepl(context)
  if RacketReplRunning() == 0
    let pane_count = system("tmux list-panes | wc -l | xargs -n1 echo -n")
    if pane_count == "1"
      silent !tmux split-window
      silent !tmux last-pane
    endif

    if IsTypedRacket()
      SlimeSend0 "clear; racket -Z " . g:racket_repl_id . " -I typed/racket\n"
    else
      SlimeSend0 "clear; racket -Z " . g:racket_repl_id . "\n"
    endif

    redraw
    sleep 1000m
  endif

  if IsTypedRacket()
    SlimeSend0 "(require/typed racket/enter [dynamic-enter! (-> String Void)])\n"
  endif
  SlimeSend0 "(dynamic-enter\! \"" . a:context . "\")\n"
endfunction

function! RacketKillRepl()
  if RacketReplRunning() == 1
    SlimeSend0 "(exit)\n"
    SlimeSend0 "exit\n"
  endif
endfunction

function! UpdateRacketSyntax()
  syn keyword racketSyntax struct test-suite test-case
  syn match racketSyntax /define-\w\+/
  syn match racketStruc /^#lang .\+$/
  syn keyword racketStruc format else
  hi racketSyntax cterm=bold
endfunction
