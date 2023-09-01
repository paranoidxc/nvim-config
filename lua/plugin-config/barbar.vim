"-----------barbar---------------- end
" Move to previous/next
nnoremap <silent>    [b <Cmd>BufferPrevious<CR>
nnoremap <silent>    ]b <Cmd>BufferNext<CR>
nnoremap <silent>    [B <Cmd>BufferGoto 1<CR>
nnoremap <silent>    ]B <Cmd>BufferLast<CR>

"noremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
"noremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
"noremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
"noremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    [1 <Cmd>BufferGoto 1<CR>
nnoremap <silent>    [2 <Cmd>BufferGoto 2<CR>
nnoremap <silent>    [3 <Cmd>BufferGoto 3<CR>
nnoremap <silent>    [4 <Cmd>BufferGoto 4<CR>
nnoremap <silent>    [5 <Cmd>BufferGoto 5<CR>
nnoremap <silent>    [6 <Cmd>BufferGoto 6<CR>
"nnoremap <silent>    A-7> <Cmd>BufferGoto 7<CR>
"nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
"nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    [0 <Cmd>BufferLast<CR>
nnoremap <silent>    [l <Cmd>BufferLast<CR>

"nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
"nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
"nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
"noremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
"noremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
"noremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
"noremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
"noremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
"noremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
"noremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
"noremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
"noremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bs <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"-----------barbar---------------- end


" Enable/disable current/total tabpages indicator (top right corner)
"let bufferline.tabpages = v:true

"let g:bufferline.auto_hide = v:true
"let g:bufferline.icons = "both"

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline

nnoremap <silent> gb :BufferPick<CR>


"let g:diagnostics = "nvim_lsp"
