return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  keys = {
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find Symbols" },
    { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Find References" },
  },
}
