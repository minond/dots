"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOAD EXTERNALS.................load external resources, start package manager
" VIM SETTINGS..................................vim built in setting overwrites
" PLUGIN SETTINGS.....................................plugin setting overwrites
" FILE TYPE SETTINGS......................file type specific setting overwrites
" MAPPINGS..................................................custom key mappings
" COMMANDS......................................................custom commands
" COLORSCHEME..................................colorscheme and color overwrites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $LOAD EXTERNALS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $VIM SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set antialias
set cursorline                           " highlight the line cursor is on
set hlsearch                             " highlight all matches
set ignorecase                           " case insensitive searches
set incsearch                            " highlight matches while typing
set list                                 " display special characters
set listchars=tab:▸\ ,eol:¬              " special characters to tabs and eols
set ls=2
set nocompatible
set nowrap
set number                               " show line numbers
set showmatch                            " jump to search result
set smartcase                            " case insensitive defaul
set smartindent                          " block indentation
set softtabstop=4                        " back character length
set tabstop=4                            " tab character length
set numberwidth=4                        " set line numbers section width
set shiftwidth=4                         " shift movement length
set wildmenu
set colorcolumn=80,120
set expandtab
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignored by vim fs access
set wildignore+=*/templates_c/*,*/bin/*
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $PLUGIN SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree = 1
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $FILE TYPE SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au Filetype * source ~/.vim/scripts/script.vim
au Filetype yaml source ~/.vim/scripts/yml.vim
au Filetype yml source ~/.vim/scripts/yml.vim

au BufNewFile,BufRead *.md set ft=mkd
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.twig set ft=htmljinja

" work shift
au BufNewFile,BufRead *.tpl set ft=smarty
au BufNewFile,BufRead *{.inc,.lan,.view,.act,.get,.controller} set ft=php

" apex shiat
au BufNewFile,BufRead *.cls set ft=java
au BufNewFile,BufRead *.page set ft=html
au BufNewFile,BufRead *.object set ft=xml
hi link javaCharacter javaString
hi link javaSpecialCharError javaString
hi link javaError None

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-k> <ESC>:GitGutterNextHunk<CR>
map <C-j> <ESC>:GitGutterPrevHunk<CR>
map <C-o> <ESC>:CtrlP<CR>
map <C-c> <ESC>:TComment<CR>
xmap <C-c> <ESC>:'<,'>TComment<CR>
map <C-f> <ESC>:NERDTreeFind<CR>
map <S-f> <ESC>:NERDTreeTabsToggle<CR>
map <leader>t :TagbarToggle<CR>

map <C-b> <ESC>:exec("tag ".expand("<cword>"))<CR>
map <C-l> <ESC>:echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
map <S-j> <ESC>:bp<CR>
map <S-k> <ESC>:bn<CR>
map <S-s> <ESC>:w<CR>
map <Tab> <C-w><C-w>
map <leader><Tab> <C-w><C-w>

nmap <leader>l :set list!<CR>
vnoremap <leader>p "_dP
nnoremap <leader> w :call <SID>StripTrailingWhitespaces()<CR>
map <C-h> :if exists("g:syntax_on") <Bar>
    \ syntax off <Bar>
    \ else <Bar>
    \syntax on <Bar>
    \ endif <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $COMMANDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Cupdate !composer update
command! -nargs=* Diff !git diff <f-args>
command! Stat !git status
command! -nargs=* Test !phpunit <f-args>
command! ViewTests !gnome-open ./bin/report/index.html
command! Ctags !if [ -f tags ]; then rm tags; fi && ctags -R --verbose
command! GccRun !gcc % -o prog.out && chmod +x prog.out && ./prog.out && rm prog.out
command! -nargs=* GccCat !gcc % -o prog.out && chmod +x prog.out && cat <f-args> | ./prog.out && rm prog.out

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORSCHEME
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme jellybeans

hi ColorColumn ctermbg=235
hi ExtraWhitespace ctermbg=161 guibg=#808080
hi IncSearch ctermfg=0 ctermbg=193 cterm=bold
hi Search ctermfg=0 ctermbg=193 cterm=bold
hi SpecialKey ctermbg=None
hi Todo ctermfg=Red ctermbg=None
hi htmlString ctermfg=Blue
hi NonText ctermfg=235 ctermbg=none
hi SpecialKey ctermfg=235 ctermbg=none
hi link phpFunctions phpRegion
hi link phpMethods phpRegion

match ExtraWhitespace /\s\+\%#\@<!$/




" todo: get function out of here
" white space
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
