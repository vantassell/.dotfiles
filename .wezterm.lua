-- Pull in the wezterm API
local wezterm = require("wezterm")
-- local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder to provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16.0
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1.0
-- config.color_scheme = "nord"
config.colors = {
	background = "black",
}

config.initial_rows = 30
config.initial_cols = 120

-- setup for a blinking cursor
-- config.cursor_blink_ease_in = "Constant"
-- config.cursor_blink_ease_out = "Constant"
-- config.default_cursor_style = "BlinkingBlock"
-- config.cursor_blink_rate = 200

-- and finally, return the configuration to wezterm
return config
