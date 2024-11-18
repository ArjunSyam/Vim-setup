--making tabs do 2 spaces basically
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")

--notes for maps
--<leader>y -> yanks a paragraph

--setting the map leader 
vim.g.mapleader = " "

--making numbers by default and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

--remaps for keymaps

--moving around highlighted lines
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")

-- J takes bottom line and adds it to the end of current line
-- this makes it so the my cursor remains in the start when doing so
vim.keymap.set("n", "J", "mzJ`z")

-- makes c-d and c-u to keep my cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search terms stay in the middle when jumping
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- basically if i paste over a value it switches the value in my clipboard
-- this retains that by using leader p
vim.keymap.set("x", "<leader>p", [["_dP]])

--first on is to quick swap words where my cursor is on
--amazing
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--does chmod for me kinda neat right
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--highlighting when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- turn of highlights on search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

