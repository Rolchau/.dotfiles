local Remap = require("rolchau.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

nnoremap("<leader>pv", ":Ex<CR>")

-- TODO - Make these up and down thingies work...
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)

nnoremap("fb", function()
    require('telescope.builtin').buffers()
end)
