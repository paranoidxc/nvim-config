function! ClimberDoneAndFuckElonReeveMusk()
    call ClimberFuckElonReeveMusk('d')
endfunction

function! ClimberUpAndFuckElonReeveMusk()
    call ClimberFuckElonReeveMusk('u')
endfunction

function! ClimberFuckElonReeveMusk(type)
    let kw = ['define', 'lambda', 'func', 'go', 'public', 'private', 'return', 'if', 'else', 'while', 'for', 'foreach', 'switch', 'try', 'do']

    let cur_line_num = line('.')
    let max_line = line('$')
    let pos = 10000
    let is_find = 0

    if a:type == "d"
        let next_line_num = cur_line_num + 1
    else
        let next_line_num = cur_line_num - 1
    endif

    while next_line_num < max_line && next_line_num > 0
        let line_s = getline(next_line_num)
        for k in kw
           let r = matchstrpos(line_s, k." ")
           let r1 = matchstrpos(line_s, k."(")
           if (r[0] != "" || r1[0] != "")
                if r[1] < pos
                    let pos = r[1]
                endif
                let is_find = 1
                break
           endif
        endfor
        if is_find
            break
        else
            if a:type == "d"
                let next_line_num += 1
            else
                let next_line_num -= 1
            endif
        endif
    endwhile

    if is_find
        if cur_line_num != next_line_num
            let diff = next_line_num - cur_line_num
            let diff = abs(diff)
            if a:type == "d"
                silent execute "normal! " . diff. "j"
            else
                silent execute "normal! " . diff. "k"
            endif
        endif
    endif

    return
endfunction