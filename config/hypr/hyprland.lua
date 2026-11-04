-- Hyprland Configuration --

-- The configuration file was spreaded from hyprland.lua to /land files --
-- So the configuration of hyprland is made from there, as the main file serves just to pull the modules needed --

-- Hardware --
require("land.setup")

-- Environment --
require("land.environment")
require("land.permissions")

-- Behavior --
require("land.windowrules")
require("land.autostart")
require("land.animations")
require("land.miscelaneous")

-- Customization -- The best part btw
require("land.theme")
require("land.keybinds")