local wezterm = require("wezterm")
local config = {}

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

function key_bindings()
	return {
		{
			key = "|",
			mods = "LEADER|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "-",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{ key = "t", mods = "LEADER|OPT", action = wezterm.action.ShowTabNavigator },
	}
end

-- timeout_milliseconds defaults to 1000 and can be omitted
config.leader = { key = "'", mods = "CMD", timeout_milliseconds = 3000 }
config.keys = key_bindings()
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.font = wezterm.font("FiraCode Nerd Font")

config.font_size = 16.0
config.scrollback_lines = 10000
config.hide_tab_bar_if_only_one_tab = true
return config
