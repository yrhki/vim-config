" Mappings

" {{{ Normal mode
" fzf commands
nnoremap <leader>ll :BLines<CR>
nnoremap <leader>lh :Helptags<CR>
nnoremap <leader>lf :Files<CR>

" fugitive commands
nnoremap <leader>g :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>ga :Git add -p %:p<CR>

" coc
nmap <leader>cD <Plug>(coc-definition)
nmap <leader>cr <Plug>(coc-references-used)
nmap <leader>cR <Plug>(coc-rename)
nmap <leader>cR <Plug>(coc-rename)
nnoremap <silent> <leader>d :call CocActionAsync('doHover')<CR>
nnoremap <silent> <leader>cf :CocFix<CR>

" clear and execute current file
noremap <F4>  :! clear && %:p 

" execute commands
noremap <F3> :! 

" show NERDTree
noremap <C-F2> :NERDTreeToggle<CR>
" }}}

" {{{ Visual mode
" move selection to command-line
vnoremap <C-F> y :! <C-R>" <HOME><Right>

" copy selection to system clipboard
if getenv("XDG_SESSION_TYPE") == "wayland"
    vnoremap <C-C> y :call system('wl-copy', @0)<CR>
else
    vnoremap <C-C> y :call system('xclip -selection clipboard', @0)<CR>
endif
" }}}

" {{{ Insert mode
" move line with shift + up/down
inoremap <S-Up>   <Esc>:m-2<CR> i
inoremap <S-Down> <Esc>:m+<CR> i
" Move popup menu by C-j and C-k
inoremap <expr> <C-j>     pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k>     pumvisible() ? "\<C-p>" : "\<C-k>"
" }}}
