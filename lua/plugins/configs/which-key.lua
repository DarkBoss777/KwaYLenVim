return function(_, opts)
  require("which-key").setup(opts)
  require("kwaylenvim.utils").which_key_register()
end
