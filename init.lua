if vim.loader and vim.fn.has "nvim-0.9.1" == 1 then vim.loader.enable() end

for _, source in ipairs {
  "kwaylenvim.bootstrap",
  "kwaylenvim.options",
  "kwaylenvim.lazy",
  "kwaylenvim.autocmds",
  "kwaylenvim.mappings",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

if kwaylenvim.default_colorscheme then
  if not pcall(vim.cmd.colorscheme, kwaylenvim.default_colorscheme) then
    require("kwaylenvim.utils").notify(
      ("Error setting up colorscheme: `%s`"):format(kwaylenvim.default_colorscheme),
      vim.log.levels.ERROR
    )
  end
end

require("kwaylenvim.utils").conditional_func(kwaylenvim.user_opts("polish", nil, false), true)
