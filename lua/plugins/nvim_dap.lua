return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},

	config = function()
		local dap = require("dap")
		dap.adapters.codelldb = {
			type = 'server',
			port = "${port}",
			executable = {
				command = '/home/ns/Applications/codelldb/extension/adapter/codelldb',
				args = {"--port", "${port}"},

				detached = false,
			}
		}
		local dap = require('dap')
		dap.adapters.cppdbg = {
			id = 'cppdbg',
			type = 'executable',
			command = 'C:\\codelldb\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe',

			options = {
				detached = false
			}
		}

		dap.configurations.c = {
			{
				name = "Launch",
				type = "codelldb",
				request = "launch",
				program = function()
          local is_overwrite = require('dap').is_overwrite

          local configpath = vim.fn.getcwd() .. '/nvim-dap.cfg'
          local file, error, code = io.open(configpath, 'r')

          local executable = nil

          if file == nil or is_overwrite then
            file = assert(io.open(configpath, 'w'))
            executable = vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            file:write(executable)
          else
            executable = file:read("*all")
          end
          file:close()

					return executable
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				setupCommands = {  
					{ 
						text = '-enable-pretty-printing',
						description =  'enable pretty printing',
						ignoreFailures = false 
					},
				},
			},
		}
		dap.configurations.cpp = dap.configurations.c;
		dap.configurations.rust = dap.configurations.c;
    dap.is_overwrite = false

		local dapui = require("dapui")
		dapui.setup()
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,

	keys = {
		{
			'<c-b>',
			function()
				require("dap").toggle_breakpoint()
			end,
			noremap = true,
			silent = true,
		},

		{
			'<F5>',
			function()
        local dap = require('dap')
        dap.is_overwrite = false
				dap.continue()
			end,
			noremap = true,
			silent = true,
		},
		{
			'<F6>',
			function()
        local dap = require('dap')
        dap.is_overwrite = true
				dap.continue()
			end,
			noremap = true,
			silent = true,
		},
		{
			'<F4>',
			function()
				require("dap").disconnect({ terminateDebuggee = true })
			end,
			noremap = true,
			silent = true,
		},
		
		{
			'<F10>',
			function()
				require("dap").step_over()
			end,
			noremap = true,
			silent = true,
		},
		{
			'<F11>',
			function()
				require("dap").step_into()
			end,
			noremap = true,
			silent = true,
		},
		{
			'<F12>',
			function()
				require("dap").step_out()
			end,
			noremap = true,
			silent = true,
		},

		{
			'<localleader>du',
			function()
				require("dapui").toggle()
			end,
			noremap = true,
			silent = true,
		},
	},
}
