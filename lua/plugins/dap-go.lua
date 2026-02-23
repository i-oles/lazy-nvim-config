return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
    },
    config = function()
      local dap_go = require("dap-go")
      require("dap-go").setup()

      -- KEYMAPY
      vim.keymap.set("n", "<leader>dt", dap_go.debug_test, { desc = "Debug Go Test" })
      vim.keymap.set("n", "<leader>dl", dap_go.debug_last_test, { desc = "Debug Last Go Test" })
    end,
  },
}
