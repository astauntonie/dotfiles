return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    require("catppuccin").setup(
      {
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        transparent_background = false
      }
    )
    vim.cmd.colorscheme "catppuccin"
  end
}
