local keymap = vim.keymap.set

local opts = {silent = true}

keymap("n", "no", ":nohlsearch<cr>", opts)
keymap("n", "<C-a>", "gg<S-v>G")
