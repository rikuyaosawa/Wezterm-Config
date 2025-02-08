-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- maximize the initial window
local mux = wezterm.mux

-- wezterm.on("gui-startup", function()
-- 	local tab, pane, window = mux.spawn_window({})
-- 	window:gui_window():maximize()
-- end)

wezterm.on("gui-startup", function()
	window:set_position(0, 0)
end)

config.initial_cols = 130
config.initial_rows = 32

config.default_domain = "WSL:Ubuntu"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.5
config.win32_system_backdrop = "Acrylic"

config.window_padding = {
	left = "2cell",
	right = "2cell",
	top = "1cell",
	bottom = "1cell",
}

config.colors = {
	foreground = "#CBE0F0",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.keys = {
	{ key = "l", mods = "ALT", action = wezterm.action.ShowLauncher },
}

return config
