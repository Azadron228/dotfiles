--NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus <CR>", opts)
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle <CR>", opts)

vim.keymap.set("n", "C-l", "TmuxNavigateLeft<CR>", opts)
vim.keymap.set("n", "C-r", "TmuxNavigateRight<CR>", opts)
vim.keymap.set("n", "C-h", "TmuxNavigateUp<CR>", opts)
vim.keymap.set("n", "C-j", "TmuxNavigateDown<CR>", opts)
-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

vim.keymap.set("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format Files" })

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>", opts)
vim.keymap.set("n", "<leader><leader>", ":Telescope buffers<CR>", opts)

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
