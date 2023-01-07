vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n','<Leader>ff',':lua require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n','<Leader>fg',':lua require("telescope.builtin").live_grep()<CR>')
vim.keymap.set('n','<Leader>fb',':lua require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n','<Leader>fh',':lua require("telescope.builtin").help_tags()<CR>')
vim.keymap.set('','<C-c>','"*y :let @+=@*<CR>',{ noremap = true, silent = true })
vim.keymap.set('','<C-v>','"+p',{ noremap = true, silent = true })
