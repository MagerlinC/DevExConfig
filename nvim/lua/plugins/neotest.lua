return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "haydenmeade/neotest-jest",
      { "thenbe/neotest-playwright", dependencies = "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest")({
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function()
              return vim.fn.getcwd() .. "/frontend/tests"
            end,
          }),
          require("neotest-playwright").adapter({
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
              get_playwright_binary = function()
                return vim.loop.cwd() .. "tests/node_modules/.bin/playwright"
              end,

              get_playwright_config = function()
                return vim.loop.cwd() .. "tests/playwright.config.ts"
              end,
            },
          }),
        },
      })
    end,
  },
}
