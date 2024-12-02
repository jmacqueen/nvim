vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness

-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search [h]ighlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[O]pen new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to [n]ext tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to [p]revious tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current bu[f]fer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<S-l>", "<cmd>tabn<CR>", { desc = "Go to [n]ext tab" }) --  go to next tab
keymap.set("n", "<S-h>", "<cmd>tabp<CR>", { desc = "Go to [p]revious tab" }) --  go to previous tab

-- navigation
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- paste without overwriting clipboard
keymap.set("x", "<leader>p", '"_dP')

-- " move line or visually selected block - alt+j/k
keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- " open file in a text by placing text and gf
keymap.set("n", "gf", ":vert winc f<cr>")
-- " copies filepath to clipboard by pressing yp
keymap.set("n", "yp", ":let @+=expand('%:p')<CR>", { silent = true })
-- " copies pwd to clipboard: command yd
keymap.set("n", "yd", ":let @+=expand('%:p:h')<CR>", { silent = true })
