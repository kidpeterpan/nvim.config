require("kidpeterpan.packer")
require("kidpeterpan.set")
require("kidpeterpan.remap")

local augroup = vim.api.nvim_create_augroup
local KidpeterpanGroup = augroup('Kidpeterpan', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = KidpeterpanGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
