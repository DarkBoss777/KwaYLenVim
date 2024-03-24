return {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = require "plugins.configs.chatgpt",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
}
