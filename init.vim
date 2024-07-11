call plug#begin()
    Plug 'olical/conjure'
    Plug 'wlangstroth/vim-racket'
    Plug 'github/copilot.vim'
    Plug 'voldikss/vim-translator'
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'olical/conjure'
    Plug 'wlangstroth/vim-racket'
    "Plug 'rafamadriz/gruvbox'


    Plug 'romgrk/barbar.nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'branch': 'release' }
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'BurntSushi/ripgrep'
    Plug 'sharkdp/fd'
    Plug 'JoosepAlviste/nvim-ts-context-commentstring'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-context'

    Plug 'fatih/vim-go'
    Plug 'neovim/nvim-lspconfig'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'simrat39/symbols-outline.nvim'

    "for git graph
    Plug 'tpope/vim-fugitive'
    Plug 'rbong/vim-flog'

    Plug 'akinsho/toggleterm.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'junegunn/vim-easy-align'              "文本对齐
    Plug 't9md/vim-choosewin'                   "使用不同窗口/标签上显示 A/B/C 等编号，然后字母直接跳转
    Plug 'tpope/vim-surround'
call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
<<<<<<< HEAD
let g:conjure#client#racket#stdio#command='racket'
=======
let g:translator_window_max_width = 80
>>>>>>> aee7214fd2b302d31f76ca16725fa16c045baeff

tnoremap <c-q> <c-\><c-n>
lua << EOF
-- TERMINAL SETUP
require("toggleterm").setup{
	direction = "horizontal",
	size = 20,
    open_mapping = [[<c-\>]],
}
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    contrast = "hard",
    -- contrast = "soft",
    undercurl = true,
    underline = true,
    bold = true,
    palette_overrides = {
        gray = "#2ea542", -- 注释颜色 绿色
    },
    italic = {
<<<<<<< HEAD
        strings = false,
        comments = false,
        operators = true,
        keywords = true,
        --functions = true,
        --methods = true,
        folds = true,
=======
            strings = false,
            comments = false,
            operators = false,
            keywords = true,
            folds = true,
>>>>>>> aee7214fd2b302d31f76ca16725fa16c045baeff
    },
})
vim.cmd("colorscheme gruvbox")

require('plugin-lua-cf/basic')
require('plugin-lua-cf/keybindings')
require('plugin-lua-cf/lspconfig')
require('plugin-lua-cf/telescope')
require('plugin-lua-cf/treesitter')
require('plugin-lua-cf/auto_load_vim_file')
require("symbols-outline").setup({
    preview_bg_highlight = 'Comment',
    wrap = true,
    keymaps = {
        hover_symbol = "<space>",
    },
})

EOF


" 文本对齐Start interactive EasyAlign in visual mode (e.g. vipga) (e.g. gaip)
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" t9md/vim-choosewin
" 使用 - 键盘 来选择窗口
let g:choosewin_overlay_enable = 1
nmap - <Plug>(choosewin)
nnoremap <silent> <C-x> <Plug>(choosewin)
" TAB 键跳转移动
nnoremap <silent><TAB> <cmd>wincmd w<CR>

" auto pair
inoremap <silent> { <C-R>=InsertAutoPair('{', '}')<CR>
inoremap <silent> [ <C-R>=InsertAutoPair('[', ']')<CR>
inoremap <silent> ( <C-R>=InsertAutoPair('(', ')')<CR>
inoremap <silent> ' <C-R>=InsertAutoPair("'", "'")<CR>
inoremap <silent> " <C-R>=InsertAutoPair('"', '"')<CR>
"inoremap <silent> `` <C-R>=InsertAutoPair('`', '`')<CR>
function! InsertAutoPair(type, next)
    if getline('.')[col('.')] == ""
        "return a:type.a:next
        let cmd = "normal! i".a:type.a:next
        "let cmd = "normal! i".a:next
        execute cmd
        return ''
    else
        return a:type
    endif
endfunction

" auto pair
inoremap <silent> ] <C-R>=InsertAutoPairAppend(']',"[]")<CR><Right>
function! InsertAutoPairAppend(type, next)
    if getline('.')[col('.')] == ""
        let cmd = "normal! i".a:next
        execute cmd
        return ''
    else
        return a:type
    endif
endfunction



"inoremap <expr> a getline('.')[col('.')-1:col('.')]==' ' ? "\<BS>\<Right>a" : ' '
"inoremap <expr> a getline('.')[col('.')-1:col('.')]==' ' ? "aa\<Right>a" : 'bb\<Right>a'

nnoremap <silent> <leader>rd :set modifiable!<cr>
"nnoremap <leader>j :ToggleTerm<cr>

nnoremap H ^
nnoremap L $
inoremap <C-o> <Esc>o

cnoreabbrev vt vs \| term
cnoreabbrev st sp \| term

"末尾空格显示红色
match WhitespaceEOL /\s\+$/
highlight WhitespaceEOL ctermbg=darkred guibg=#800000
" 删除末尾空格
function! RemoveTailWhiteSpace()
    %s/\s*$//
    ''
endfunction
command! Cls call RemoveTailWhiteSpace()
nnoremap <leader>d :call RemoveTailWhiteSpace()<CR>
nnoremap <leader>fr :Format<CR>
command! Fun :lua require('telescope.builtin').lsp_document_symbols({symbols = { 'Method' }})


" 高亮 光标停留的单词 和 其他一样的单词
highlight CocHighlightText term=underline cterm=underline gui=underline,bold guibg=#d33682 guifg=#FFFFFF


" 函数关键字移动
nnoremap <silent> <C-f> :call ClimberDoneAndFuckElonReeveMusk()<cr>
nnoremap <silent> <C-j> :call ClimberUpAndFuckElonReeveMusk()<cr>


" 命令行 %% 会自动扩展成当前buffer文件的路径
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

cnoremap <expr> fmt '%!/Applications/Racket\ v8.8/bin/raco fmt --width 80 '.expand('%:t')
 



function! SayFormat()
    let nn = bufnr()
    if getbufvar(nn, '&filetype') == "scheme"
        execute 'Format'    
    endif    
endfunction

augroup AutoSave
    autocmd!
    autocmd BufWritePost * call SayFormat()
augroup END


" go语言 回到普通模式自动格式化
function AutoFormatGo()
        if getline('.')[col('.')-1] != "}"
                "execute "silent! execute 'GoFmt' | :silent! write"
                execute "silent! execute 'GoFmt'"
        endif
endfunction
"autocmd InsertLeave *.go call AutoFormatGo()
"autocmd InsertLeave *.go :silent! execute 'GoFmt' | :silent! write

" 快速打开错误列表
command! -nargs=0 Err CocDiagnostics
nnoremap <silent> <leader>rr :CocDiagnostics<cr>

"-----------neovide的配置 ---------------- start
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=DejaVuSansMono\ Nerd\ Font:h18
endif

lua << EOF
    vim.keymap.set('n', '<D-s>', ':w<CR>')
    vim.keymap.set('v', '<D-c>', '"+y')
    vim.keymap.set('n', '<D-v>', '"+P')
    vim.keymap.set('v', '<D-v>', '"+P')
    vim.keymap.set('c', '<D-v>', '<C-R>+')
    vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')
    -- Allow clipboard copy paste in neovim
    vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
EOF
"-----------neovide的配置 ---------------- end
