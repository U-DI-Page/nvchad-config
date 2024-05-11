local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettierd", "prettier" } },
    python = function(buffnr)
      if require("conform").get_formatter_info("ruff_format", buffnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    css = { "prettier" },
    html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
