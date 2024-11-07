-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
	--config.font = wezterm.font 'Iosevka Nerd Font'
	-- config.font = wezterm.font 'JetbrainsMono Nerd Font'
	font_size = 11,

	--config.color_scheme = "Batman"
	-- config.color_scheme = 'Ashes (dark) (terminal.sexy)'
	-- config.color_scheme = 'PaperColor Dark (base16)'
	color_scheme = "Pnevma",
	-- config.color_scheme_dirs = { '~/.wezterm_themes/mikel.toml' }
	-- config.color_scheme = 'mikel'
	-- config.color_scheme = 'Mountain'
	--
	bold_brightens_ansi_colors = true,
	max_fps = 240,
	enable_kitty_graphics = true,
	window_close_confirmation = "NeverPrompt",
	default_cursor_style = "SteadyBlock",
	window_padding = {
		left = 2,
		right = 2,
		top = 5,
		bottom = 0,
	},

	font = wezterm.font_with_fallback({
		{ family = "Hack Nerd Font Mono", weight = "Medium" },
	}),

	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	audible_bell = "Disabled",
	--config.enable_tab_bar = false

	-- and finally, return the configuration to wezterm
}

return config
