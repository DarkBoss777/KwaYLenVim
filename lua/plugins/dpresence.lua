return {
  "andweeb/presence.nvim",
  event = 'BufEnter',
  cmd = "Dpresence",
  config = require "plugins.configs.dpresence",
}
