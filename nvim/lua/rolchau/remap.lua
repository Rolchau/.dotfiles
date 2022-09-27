local Remap = require("rolchau.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local keymap = vim.keymap

nnoremap("<leader>pv", ":Ex<CR>")

-- TODO - Make these up and down thingies work...
--vnoremap("J", ":m '>+1<CR>gv=gv")
--vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)

nnoremap("<leader>fb", function()
    require('telescope.builtin').buffers()
end)

nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)

-- Don't yank with X
keymap.set('n', 'x', '"_x');

-- Increment/decrement
keymap.set('n', '+', '<C-a>');
keymap.set('n', '-', '<C-x>');

-- Diagnostics
nnoremap("<leader>dd", 
  function()
    require('telescope.builtin').diagnostics()
  end
)
nnoremap("<leader>do", '<cmd>lua vim.diagnostic.open_float({border = "double"})<CR>')
