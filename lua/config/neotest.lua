require('neotest').setup {
  adapters = {
    require('neotest-haskell') {
      build_tools = { 'stack' },
      frameworks = { 'hspec' }
    }
  }
}

local keymap = vim.keymap
keymap.set("n", "<leader>ta", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", { desc = "Run all tests in this file" })
keymap.set("n", "<leader>tr", "<cmd>lua require('neotest').run.run()<cr>", { desc = "Run nearest test" })
keymap.set("n", "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>", { desc = "Toggle test summary" })
