-- TODO: remove unnecessary file in kwaylenvim v4
return function(_, opts)
  local mason_nvim_dap = require "mason-nvim-dap"
  mason_nvim_dap.setup(opts)
end
