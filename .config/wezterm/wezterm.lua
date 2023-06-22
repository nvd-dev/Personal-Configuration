-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Config Begins

-- Themes
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

config.color_schemes = {
	["Catppuccin Black"] = custom,
}

config.color_scheme = "Panda (Gogh)"

-- Font
config.font = wezterm.font("JetBrains Mono")
config.use_cap_height_to_scale_fallback_fonts = true
config.font_size = 15

-- Window
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 125
config.initial_rows = 40
config.window_background_opacity = 0.9

-- Scrollback
config.scrollback_lines = 5000

-- Keymap
config.disable_default_key_bindings = false
config.keys = {
	{
		key = "d",
		mods = "CMD",
		action = act.SplitHorizontal,
	},
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = act.SplitVertical,
	},
	{
		key = "]",
		mods = "CMD",
		action = act.ActivatePaneDirection("Next"),
	},
	{
		key = "[",
		mods = "CMD",
		action = act.ActivatePaneDirection("Prev"),
	},
	{
		key = "z",
		mods = "CMD",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

return config
