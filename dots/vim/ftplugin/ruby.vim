" Ruby's syntax highlighting is sloooowwwwww for some odd reason.
" syntax off

nnoremap <buffer> <leader>r :w<cr>:!clear; bundle exec ruby %<cr>
nnoremap <leader>g <ESC>:exec('tag '.expand('<cword>'))<CR>

" Always point to an MRI Ruby to keep JRuby from being used.
let g:ruby_path='$HOME/.rbenv/versions/2.3.1/bin/ruby'
