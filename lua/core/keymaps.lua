vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd> w <CR>", opts)
-- Guardar sin formato con espacio sn
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- Cerrar con control q
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)
--Vertical scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
-- Find and center
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

vim.keymap.set({ "n", "v" }, "x", '"_x', opts)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>xb", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts) -- Mueve línea arriba
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts) -- Mueve línea abajo
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts) -- Mueve bloque arriba
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts) -- Mueve bloque abajo
-- Abrir una nueva terminal abajo
vim.keymap.set("n", "<leader>tt", ":belowright split | resize 10 | terminal<CR>", opts)
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { noremap = true, silent = true })
