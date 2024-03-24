return function(_, opts)
  require("mason-lspconfig").setup(opts)
  require("kwaylenvim.utils").event "MasonLspSetup"
end
