print("Welcome Hunter! Let's Fucking The Whole World!!!")

vim.g.mapleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
  noremap = true,
  silent = true
}

-- 热加载配置
map("n", "<leader>ss", ":source $MYVIMRC<CR>", opt)

-- windows 窗口操作
map("n", "<leader>wv", ":vsp<CR>", opt)
map("n", "<leader>wh", ":sp<CR>", opt)
-- 关闭当前
map("n", "<leader>wc", "<C-w>c", opt)
-- 关闭其他
map("n", "<leader>wo", "<C-w>o", opt) -- close others
-- 比例控制
map("n", "<leader>ww", ":vertical resize +40 | horizontal resize +20<CR>", opt)
map("n", "<leader>wq", "<C-w>=", opt)

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G<c-o>", opt)

-- "-----------Telescope---------------- end
-- " Find files using Telescope command-line sugar.
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opt)
map("n", "<Leader>fw", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes'))<cr>", opt);
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opt)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opt)


local filename = vim.fn.expand("%")
local extension = filename:match("^.+(%..+)$")
-- 根据语言类型加载按键配置
if extension == ".php" then
    map("n", "<leader>bm", "<cmd>lua require('telescope.builtin').lsp_document_symbols({symbols = { 'Method' }})<cr>", opt)
elseif extension == ".go" then
    map("n", "<leader>bm", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", opt)
else
end
map("n", "<leader>bw", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opt)
map("n", "<leader>bf", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr><Esc>", opt)
map("n", "<leader>bb", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser({path = '%:p:h'})<cr><Esc>", opt)
--"-----------Telescope---------------- end

-- lsp
--nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR> " 跳转到函数定义
--nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR> " 跳转到函数声明
map("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", opt) --查找所有函数引用

-------------Floatterm---------------- start
vim.cmd([[
    let g:floaterm_keymap_new    = '<F9>'
    let g:floaterm_keymap_prev   = '<F10>'
    let g:floaterm_keymap_next   = '<F11>'
    let g:floaterm_keymap_toggle = '<F12>'
]])
-------------Floatterm---------------- end
