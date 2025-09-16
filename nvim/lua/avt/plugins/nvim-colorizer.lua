return {
	-- "norcalli/nvim-colorizer.lua",
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {
		filetypes = {
			css = { rgb_fn = true },
			"javascript",
			"*",
			"html",
			cmp_docs = { always_update = true },
			cmp_menu = { always_update = true },
		},
		user_default_options = {
			names = false,
      tailwind = true,
		},
	},
}
