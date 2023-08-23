-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
  noremap = true,
  silent = true
}


map("n", "<leader>ss", ":source $MYVIMRC<CR>", opt)



------------------------------------------------------------------
-- windows 分屏快捷键
-- map("n", "<leader>sv", ":vsp<CR>", opt)
-- map("n", "<leader>sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "<leader>sc", "<C-w>c", opt)
-- 关闭其他
map("n", "<leader>so", "<C-w>o", opt) -- close others

-- 比例控制
map("n", "<leader>s=", ":vertical resize +40<CR>", opt)
map("n", "<leader>s-", ":vertical resize -40<CR>", opt)
-- map("n", "<leader>s=", "<C-w>=", opt)
-- map("n", "<leader>sj", ":resize +10<CR>", opt)
-- map("n", "<leader>sk", ":resize -10<CR>", opt)

-- alt + hjkl  窗口间跳
--map("n", "<O-h>", "<C-w>h", opt)
--map("n", "<O-j>", "<C-w>j", opt)
--map("n", "<O-k>", "<C-w>k", opt)
--map("n", "<O-l>", "<C-w>l", opt)


-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G<c-o>", opt)



-- "-----------Telescope---------------- end
-- " Find files using Telescope command-line sugar.
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opt)
--map("n", "<Leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',widtd=0.6,winblend = 10,height=0.9, previewer = false,}))<cr>", opt);
--map("n", "<Leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',winblend = 10,height=0.9, previewer = false,}))<cr>", opt);
-- map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opt)
map("n", "<Leader>fg", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',winblend = 10, results_height = 50}))<cr>", opt);

map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opt)
--map("n", "<Leader>fb", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',winblend = 10, results_height = 50,previewer = false,}))<cr>", opt);

map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opt)
--map("n", "<leader>fl", "<cmd>Telescope lsp_references<cr>", opt)
map("n", "<leader>fw", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opt)
--map("n", "<Leader>fw", "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',winblend = 10, results_height = 50,}))<cr>", opt);
map("n", "<leader>fd", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", opt)
--map("n", "<Leader>fd", "<cmd>lua require'telescope.builtin'.lsp_document_symbols(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',winblend = 10, results_height = 50,}))<cr>", opt);

map("n", "<leader>fm", "<cmd>lua require('telescope.builtin').lsp_type_definitions()<cr>", opt)

map("n", "<leader>bf", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr><Esc>", opt)
map("n", "<leader>bb", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser({path = '%:p:h'})<cr><Esc>", opt)

--map("n", "<Leader>bf", "<cmd>lua require'telescope'.extensions.file_browser.file_browser(require('telescope.themes').get_dropdown({prompt_prefix='Fucking >',winblend = 10, results_height = 50,}))<cr>", opt);
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
--map("n", "<F7>", "<cmd>Floatterm<cr>", opt)
--[[
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
--]]
-------------Floatterm---------------- end
