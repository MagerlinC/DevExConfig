return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  enabled = true,
  config = function()
    local colors = require("tokyonight.colors").setup()
    require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = { guibg = "#6a6fb1", guifg = colors.black },
          InclineNormalNC = { guifg = "#6a6fb1", guibg = colors.black },
        },
      },
      window = { margin = { vertical = 0, horizontal = 1 } },
      render = function(props)
        local filename = vim.api.nvim_buf_get_name(props.buf)
        local filePath = vim.fn.fnamemodify(filename, ":p:h:t") .. "/" .. vim.fn.fnamemodify(filename, ":t")
        local icon, color = require("nvim-web-devicons").get_icon_color(filename)
        return { { icon, guifg = color }, { " " }, { filePath } }
      end,
    })
  end,
}
