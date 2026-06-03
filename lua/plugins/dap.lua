return {
  -- DAP核心
  {
    "mfussenegger/nvim-dap",
  },

  -- DAP UI界面
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      -- 调试开始自动打开UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      -- 调试结束自动关闭UI
      -- dap.listeners.before.event_terminated["dapui_config"] = function()
      --   dapui.close()
      -- end
      --
      -- dap.listeners.before.event_exited["dapui_config"] = function()
      --   dapui.close()
      -- end
    end,
  },

  -- Python DAP
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },

    config = function()
      require("dap-python").setup("C:/Program Files/Python311/python.exe")

      local map = vim.keymap.set

      -- 启动调试
      map("n", "<F5>", function()
        require("dap").continue()
      end, { desc = "DAP Continue" })

      -- 停止调试
      map("n", "<F6>", function()
        require("dap").terminate()
      end, { desc = "DAP Terminate" })

      -- 单步跳过
      map("n", "<F7>", function()
        require("dap").step_over()
      end, { desc = "DAP Step Over" })

      -- 单步进入
      map("n", "<F8>", function()
        require("dap").step_into()
      end, { desc = "DAP Step Into" })

      -- 单步跳出
      map("n", "<F10>", function()
        require("dap").step_out()
      end, { desc = "DAP Step Out" })

      -- 断点
      map("n", "<leader>b", function()
        require("dap").toggle_breakpoint()
      end, { desc = "DAP Breakpoint" })

      -- 打开/关闭DAP UI
      map("n", "<leader><F5>", function()
        require("dapui").toggle()
      end, { desc = "DAP UI" })
    end,
  },
}
