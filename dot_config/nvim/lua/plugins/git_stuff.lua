return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "sindrets/diffview.nvim",        -- optional - Diff integration
    },
    config = true
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
    end,
  },
}
