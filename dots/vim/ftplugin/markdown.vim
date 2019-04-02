setlocal wrap
setlocal colorcolumn=0

nnoremap <buffer> <leader>t :Toc<cr>
nnoremap <buffer> <leader>r :w<cr>:!clear; ghmd "%"; open "%:r.html"; rm "%:r.html";<cr><cr>

let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_toc_autofit = 1
