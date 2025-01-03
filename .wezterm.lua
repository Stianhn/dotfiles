-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.cursor_blink_rate = 0

-- This is where you actually apply your config choices
config.font_size = 16
config.color_scheme = "Catppuccin Mocha"

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "TITLE"
-- and finally, return the configuration to wezterm
return config
