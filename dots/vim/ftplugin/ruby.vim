" Ruby's syntax highlighting is sloooowwwwww for some odd reason.
" syntax off

nnoremap <buffer> <leader>r :w<cr>:!clear; [ % == Gemfile ] && bundle \|\| ruby %<cr>

" Always point to an MRI Ruby to keep JRuby from being used.
let g:ruby_path='$HOME/.rbenv/versions/2.3.1/bin/ruby'

command! Ctags !git ls-files | ctags -R --verbose -f .tags && rtags
