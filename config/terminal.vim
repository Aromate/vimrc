" Terminal popup configuration
" t, 打开 popup terminal

function! s:OpenPopupTerminal()
    let buf = term_start(&shell, #{
        \ hidden: 1,
        \ term_finish: 'close'
        \ })

    let width = float2nr(&columns * 0.6)
    let height = float2nr(&lines * 0.6)
    call popup_create(buf, #{
        \ minwidth: width,
        \ minheight: height,
        \ maxwidth: width,
        \ maxheight: height,
        \ pos: 'topright',
        \ line: 1,
        \ col: &columns,
        \ border: [],
        \ borderchars: ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
        \ padding: [0,1,0,1],
        \ zindex: 200
        \ })
endfunction

command! Terminal call s:OpenPopupTerminal()
cabbrev terminal Terminal

nnoremap <silent> t, :Terminal<CR>
