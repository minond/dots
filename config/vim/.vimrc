"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOAD EXTERNALS.................load external resources, start package manager
" VIM SETTINGS..................................vim built in setting overwrites
" PLUGIN SETTINGS.....................................plugin setting overwrites
" ENV SPECIFIC SETTINGS............settings that are specific to an environment
" FILE TYPE SETTINGS......................file type specific setting overwrites
" MAPPINGS..................................................custom key mappings
" COMMANDS......................................................custom commands
" COLORSCHEME..................................colorscheme and color overwrites
" SYNTAX...........................syntax (keyword) rebinding and configuration
" FUNCTIONS....................................................custom functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $LOAD EXTERNALS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $VIM SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden                               " best. thing. ever. no buffer closed
set antialias
set cursorline                           " highlight the line cursor is on
set hlsearch                             " highlight all matches
set ignorecase                           " case insensitive searches
set incsearch                            " highlight matches while typing
set list                                 " display special characters
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
set colorcolumn=80,120
set expandtab
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignored by vim fs access
set wildignore+=*/templates_c/*,*/bin/*
set wildignore+=*/node_modules/*
set t_Co=256
set wildmenu
set tags^=./.tags,./.TAGS,.tags,.TAGS

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $PLUGIN SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree = 1
let g:ctrlp_max_height = 30

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $ENV SPECIFIC SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !empty($WORK_ENV)
    " is.com env settings
    set listchars=tab:>\ ,eol:¬,trail:.  " special characters for special char
    let g:Powerline_loaded = 1
else
    " personal compueter settings
    set listchars=tab:▸\ ,eol:¬,trail:.  " special characters for special char
    let g:Powerline_symbols = 'fancy'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $FILE TYPE SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au Filetype * source ~/.vim/scripts/script.vim
au Filetype yaml source ~/.vim/scripts/yml.vim
au Filetype yml source ~/.vim/scripts/yml.vim
au Filetype cucumber source ~/.vim/scripts/yml.vim
au Filetype ruby source ~/.vim/scripts/yml.vim

" file type remapping for syntax highlighting
au BufNewFile,BufRead *.md set ft=mkd
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.twig set ft=htmljinja
au BufNewFile,BufRead *.dist set ft=xml
au BufNewFile,BufRead *.pp set ft=ruby
au BufNewFile,BufRead .domainconfig set ft=dosini

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
map <leader>o <ESC>:CtrlPTag<CR>
map <C-c> <ESC>:TComment<CR>
xmap <C-c> <ESC>:'<,'>TComment<CR>
map <C-f> <ESC>:NERDTreeFind<CR>
map <S-f> <ESC>:NERDTreeTabsToggle<CR>

map <C-b> <ESC>:exec("tag ".expand("<cword>"))<CR>
map <C-l> <ESC>:echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
map <S-j> <ESC>:bp<CR>
map <S-k> <ESC>:bn<CR>
map <S-s> <ESC>:w<CR>
map <C-s> <ESC>:w<CR>
map <Tab> <C-w><C-w>

" exit insert mode within insert mode
inoremap jj <Esc>

" save while in insert mode
inoremap ww <Esc>:w<CR>i

map <leader><Tab> <C-w><C-w>
map <leader>t :TagbarToggle<CR>
map <leader>g :GitGutter<CR>
nmap <leader>s :source $MYVIMRC<CR>:noh<CR>
nmap <leader>l :set list!<CR>
nmap <leader>n :set relativenumber!<CR>
map <leader>p :set paste!<CR>
map <leader>r :Run<CR>
nnoremap <leader>w :call <SID>StripTrailingWhitespaces()<CR>
nnoremap <leader>c :Copy<CR><CR>
map <leader>h :if exists("g:syntax_on") <Bar>
    \ syntax off <Bar>
    \ else <Bar>
    \syntax on <Bar>
    \ endif <CR>

" colon, semi-colon switch
nnoremap ; :

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $COMMANDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Ctags !ctags -R --verbose -f .tags
command! Copy !cat % | xclip -sel clip && echo "copied to clip board"
" gcc
command! GccRun !gcc % -o prog.out && chmod +x prog.out && ./prog.out && rm prog.out
command! -nargs=* GccCat !gcc % -o prog.out && chmod +x prog.out && cat <f-args> | ./prog.out && rm prog.out

" php
command! Cupdate !composer update
command! Cautoload !composer dumpautoload
command! -nargs=* Test !phpunit <f-args>
command! ViewTests !gnome-open ./bin/report/index.html

" git commands
command! Ann !git annotate %
command! Stat !git status
command! -nargs=* Diff !git diff <f-args>

" run scripts
command! Run !file=$(basename %);ext="${file\#\#*.}"; clear;
\ case $ext in
    \ php)
        \ php % | less
        \ ;;
    \ js)
        \ node % | less
        \ ;;
    \ py)
        \ python % | less
        \ ;;
    \ rb)
        \ ruby % | less
        \ ;;
    \ *)
        \ echo "i don't know what to do with .$ext files"
        \ ;;
\ esac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORSCHEME
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme jellybeans

hi Constant                    ctermfg=229
hi String                      ctermfg=229
hi Statement                   ctermfg=117
hi Structure                   ctermfg=111

hi ColorColumn                              ctermbg=235
hi ExtraWhitespace             ctermfg=161
hi IncSearch                   ctermfg=0    ctermbg=193  cterm=bold
hi Search                      ctermfg=0    ctermbg=193  cterm=bold
hi SpecialKey                               ctermbg=None
hi Todo                        ctermfg=Red  ctermbg=None
hi htmlString                  ctermfg=Blue
hi NonText                     ctermfg=235  ctermbg=None
hi SpecialKey                  ctermfg=235  ctermbg=None

hi javaScriptReserved          ctermfg=None

hi link phpFunctions phpRegion
hi link phpMethods phpRegion

match ExtraWhitespace /\s\+\%#\@<!$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax keyword phpException finally

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

