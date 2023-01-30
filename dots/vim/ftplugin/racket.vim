setlocal nosmartindent

autocmd bufenter *.rkt :call UpdateRacketSyntax()
autocmd filetype *.rkt :call UpdateRacketSyntax()

nnoremap <buffer> <leader>r :w<cr>:call RacketStartOrReloadRepl(expand("%"))<cr>
nnoremap <buffer> <leader><S-r> :w<cr>:call RacketKillRepl()<cr>
nnoremap <buffer> <leader>t :Dispatch raco test "%"<CR>

nnoremap <buffer> <leader>D :silent !raco docs <cword><cr>:redraw!<cr>

let g:racket_hash_lang_dict =
      \ {
      \   'racket/base': 'racket',
      \   'typed/racket': 'racket',
      \   'typed/racket/base': 'racket',
      \   'br': 'racket',
      \   'br/quicklang': 'racket',
      \   'slideshow': 'racket',
      \   'scribble/base': 'scribble',
      \   'scribble/manual': 'scribble',
      \ }

" If Slime has a way to scope a tmux pane to a buffer, then this repl instance
" could also be scoped to a buffer (b:racket_repl_id).
" let g:racket_repl_id = str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
let g:racket_repl_id = "e6c6c1023f703c01fd1d9442facd716f"

function! RacketReplRunning()
  let match_count = system("ps aux | grep racket | grep " . g:racket_repl_id . " | wc -l | xargs -n1 echo -n")
  return match_count == "2" ? 0 : 1
endfunction

function! RacketStartOrReloadRepl(context)
  if RacketReplRunning() == 0
    let pane_count = system("tmux list-panes | wc -l | xargs -n1 echo -n")
    if pane_count == "1"
      silent !tmux split-window
      silent !tmux last-pane
    endif

    SlimeSend0 "clear; racket -Z " . g:racket_repl_id . "\n"

    redraw
    sleep 1000m
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
  syn keyword racketSyntax struct         " Treat struct as a keyword
  syn match racketSyntax /define-\w\+/    " Treat anything that starts with define-* as a keyword
  hi racketSyntax cterm=bold
endfunction
