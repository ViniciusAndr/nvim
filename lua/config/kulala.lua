local kulala = require("kulala")
local map = LazyVim.safe_keymap_set

kulala.setup({
  highlight = {
    enable = false,
  },
  diagnostics = {
    enable = false,
  },
  always_show_headers = true,

  -- Formatters (prettier output)
  formatters = {
    json = { "jq" },
  },

  ui = {
    use_float = true,
    border = "rounded",
    winhighlight = "Normal:Normal,FloatBorder:Normal",
  },

  -- 🌱 Load environment variables like Postman
  env_file = ".env",
  env_pattern = "^[A-Z_][A-Z0-9_]*=%S+",
})

-- ▶ Run HTTP request under cursor
map("n", "<leader>rr", function()
  require("kulala").run()
end, { desc = "Run HTTP request under cursor" })

-- ▶ Show last response
map("n", "<leader>rl", function()
  require("kulala").last()
end, { desc = "Show last response" })

-- ▶ Insert POST snippet
map("n", "<leader>sp", function()
  local tpl = [[
POST {{url}}
Content-Type: application/json

{
  "key": "value"
}
]]
  vim.api.nvim_put(vim.split(tpl, "\n"), "l", true, true)
end, { desc = "Insert POST snippet" })

-- ▶ Insert GET snippet
map("n", "<leader>sg", function()
  local tpl = [[
GET {{url}}
Accept: application/json
]]
  vim.api.nvim_put(vim.split(tpl, "\n"), "l", true, true)
end, { desc = "Insert GET snippet" })
