hl.config({
	general = {

		gaps_in = 4,
		gaps_out = 8,
		border_size = 0,

		col = {

			active_border = "rgba(8000ffff)",
			inactive_border = "rgba(8000ffc0)",
		},

		resize_on_border = false,

		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {

		rounding = 7,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 1.0,

		blur = {
			enabled = true,

			size = 0,
			passes = 4,
		},

		shadow = {
			enabled = false,
			range = 7,
			render_power = 14,
			color = 0xff000000,
		},
	},
})
