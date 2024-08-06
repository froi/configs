local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

return {
	-- ...your existing config
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 16.0,
	scrollback_lines = 10000,
}
