nnoremap <buffer> <leader>t :Toc<cr>
nnoremap <buffer> <leader>r :w<cr>:!clear<cr>:!ghmd %; open -a "Google Chrome" %:r.html; rm %:r.html;<cr>

let g:vim_markdown_toc_autofit = 1
