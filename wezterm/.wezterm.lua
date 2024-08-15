-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("FiraMono Nerd Font")
config.font_size = 16

config.enable_tab_bar = false

config.color_scheme = "Mariana"

-- and finally, return the configuration to wezterm
return config
