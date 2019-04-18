nnoremap <buffer> <leader>r :w<cr>:!clear; bundle exec ruby %<cr>

let g:ruby_path='$HOME/.rbenv/shims/ruby'

" ALE + Ruby brings vim to a crawl for some reason. Disabling for now.
ALEDisableBuffer

nnoremap <leader>g <ESC>:exec('tag '.expand('<cword>'))<CR>
