call plug#begin()
    Plug 'ellisonleao/gruvbox.nvim'    
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

    Plug 'voldikss/vim-floaterm'            
    Plug 'junegunn/vim-easy-align'              "文本对齐
    Plug 't9md/vim-choosewin'                   "使用不同窗口/标签上显示 A/B/C 等编号，然后字母直接跳转
call plug#end()


let g:python3_host_prog = '/usr/bin/python3'

set shortmess+=c
set termguicolors

lua << EOF

require("gruvbox").setup({
    contrast = "hard",
    palette_overrides = {
        gray = "#2ea542", -- 注释颜色 绿色
    }
})
vim.cmd("colorscheme gruvbox")

require('plugin-lua-cf/basic')
require('plugin-lua-cf/keybindings')
require('plugin-lua-cf/lspconfig')
require('plugin-lua-cf/telescope')
require('plugin-lua-cf/colorscheme')
require('plugin-lua-cf/treesitter')
require('plugin-lua-cf/todo')
require("symbols-outline").setup({
    preview_bg_highlight = 'Comment',
    wrap = true,
    keymaps = {
        hover_symbol = "<space>",
    },
})

EOF

let g:coc_borderchars = ['─', '│', '─', '│', '╭', '╮', '╯', '╰']
let g:coc_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" t9md/vim-choosewin
" 使用 - 键盘 来选择窗口
let g:choosewin_overlay_enable = 1
nmap - <Plug>(choosewin)
nnoremap <silent> <C-x> <Plug>(choosewin)

nnoremap H ^
nnoremap L $

"-----------my_custom_short_cut ---------------- start
" 命令行 %% 会自动扩展成当前buffer文件的路径
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'
"-----------my_custom_short_cut ---------------- end

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