local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font('JetBrains Mono')
config.font_size = 12

config.keys = {
    {
        key = 'd',
        mods = 'SUPER',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'd',
        mods = 'SUPER|SHIFT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'LeftArrow',
        mods = 'SUPER',
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        key = 'RightArrow',
        mods = 'SUPER',
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        key = 'LeftArrow',
        mods = 'SUPER|SHIFT',
        action = wezterm.action.ActivatePaneDirection('Left')
    },
    {
        key = 'RightArrow',
        mods = 'SUPER|SHIFT',
        action = wezterm.action.ActivatePaneDirection('Right')
    },
    {
        key = 'UpArrow',
        mods = 'SUPER|SHIFT',
        action = wezterm.action.ActivatePaneDirection('Up')
    },
    {
        key = 'DownArrow',
        mods = 'SUPER|SHIFT',
        action = wezterm.action.ActivatePaneDirection('Down')
    },
    {
        key = 't',
        mods = 'SUPER',
        action = wezterm.action.SpawnCommandInNewTab { cwd = wezterm.home_dir }, 
    }
}

return config
