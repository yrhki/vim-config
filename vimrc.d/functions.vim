
function! s:Cm()
    let input = input("CM: ")
    if input != ""
        execute "!cm '" . shellescape(input) . "'"
    endif
endfunction

function s:Format()
    let ext = expand("%:e")
    let nline = line(".")
    if ext == "xml"
        if executable("xmllint")
            exe "%!xmllint --format -"
        endif
    elseif ext == "json"
        if executable("jq")
            exe "%!jq"
        endif
    else
        call CocActionAsync('format')
    endif

    if nline != line(".")
        exe nline
    endif
endfunction


command Cm call <SID>Cm()

noremap <C-c><C-m> :Cm<CR>
nnoremap <leader>f :call <SID>Format()<CR>

