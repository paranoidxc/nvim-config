function! TrimSpace()
    let c = getline('.')[charcol('.') - 1]
    if c == ' '
        execute "normal! x"
        call TrimSpace()
    endif
endfunction

function! NewLine()
    let file = expand('%:t')
    let r = matchstrpos(file, ".php")
    let r1 = matchstrpos(file, ".c")
    if (r[0] != "" || r1[0] != "")
        execute "normal! $"
        call TrimSpace()
        let c = getline('.')[charcol('.') - 1]
        let cmd = "normal! A;\<cr> "

        if c == '['
            let cmd = "normal! A\<cr> "
        endif

        if c == ';'
             let cmd = "normal! A\<cr> "
        endif

        if c == '{'
            let cmd = "normal! A\<cr> "
        endif

        if c == '}'
            let cmd = "normal! A\<cr> "
        endif

        execute cmd
        execute ":star"
    endif
endfunction
