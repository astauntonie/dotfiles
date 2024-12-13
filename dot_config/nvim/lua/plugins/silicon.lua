return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			-- Configuration here, or leave empty to use defaults
			font = "JetBrainsMono Nerd Font=34;Google Noto=34"
		})
    vim.keymap.set('v', '', '',{})
	end,
}
