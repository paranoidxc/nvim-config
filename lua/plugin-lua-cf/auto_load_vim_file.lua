vim.cmd([[
for f in split(glob('~/.config/nvim/lua/plugin-config/*.vim'), '\n')
    exe 'source' f
endfor
]])
