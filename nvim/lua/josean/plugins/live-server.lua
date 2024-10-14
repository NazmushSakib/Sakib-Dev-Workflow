return {
  "ngtuonghy/live-server-nvim",
  event = "VeryLazy",
  build = ":LiveServerInstall",

  config = function()
    local liveServer = require("live-server-nvim")
    liveServer.setup({
      custom = {
        "--port=8080",
        "--no-css-inject",
      },
      serverPath = vim.fn.stdpath("data") .. "/live-server/", --default
      open = "folder", --folder|cwd    --default
    })
  end,
  --    local keymap = vim.keymap

  --  keymap.set("n", "leader>lt", "<cmd>LiveServerToggle<CR>", { desc = "Toggle live-server on-ff" })
  --  end,

  vim.keymap.set("n", "<leader>lt", function()
    require("live-server-nvim").toggle()
  end, { desc = "Toggle Live-Server" }),
}
