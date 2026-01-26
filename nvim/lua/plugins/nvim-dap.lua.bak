return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")

        require("dap.python")

        dapui.setup()

        -- Optionally open/close automatically
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

        -- Keymaps (set inside the config block)
        vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP: Continue" })
        vim.keymap.set("n", "<F10>", dap.step_over, { desc = "DAP: Step Over" })
        vim.keymap.set("n", "<F11>", dap.step_into, { desc = "DAP: Step Into" })
        vim.keymap.set("n", "<F12>", dap.step_out, { desc = "DAP: Step Out" })

        vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "DAP: Toggle Breakpoint" })
        vim.keymap.set("n", "<leader>B", function()
            dap.set_breakpoint(vim.fn.input("Condition: "))
        end, { desc = "DAP: Conditional Breakpoint" })

        vim.keymap.set("n", "<leader>lp", function()
            dap.set_breakpoint(nil, nil, vim.fn.input("Log message: "))
        end, { desc = "DAP: Log Point" })

        vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "DAP: Open REPL" })
        vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "DAP: Run Last" })
        vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "DAP: Terminate" })
        vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "DAP: Toggle UI" })
        vim.keymap.set("n", "<leader>dc", dap.clear_breakpoints, { desc = "Clear All Breakpoints" })
        vim.keymap.set("n", "<leader>ds", function()
            print(vim.inspect(dap.session()))
        end, { desc = "Print Debug Session Info" })
    end,
}
