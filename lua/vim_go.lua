local api = vim.api
local vim_go = {}

function vim_go.go_run()
	api.nvim_command('GoRun') -- :GoRun
end

return vim_go
