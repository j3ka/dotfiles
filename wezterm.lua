local wezterm = require 'wezterm';
return {
  font = wezterm.font("Fira Code"),
  -- color_scheme = "Builtin Dark",
  color_scheme = "Dracula",
  default_prog = {"/usr/bin/bash"},
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  default_cursor_style = "BlinkingUnderline",
  exit_behavior = "Close",
  colors = {
    tab_bar = {
      background = "#1E1f29",
      inactive_tab = { bg_color= "#1E1f29", fg_color= "#6E6E6E" },
      active_tab = { bg_color= "#1E1f29", fg_color= "#FFFFFF" },
      new_tab = { bg_color= "#1E1f29", fg_color= "#FFFFFF", intensity= "Bold" },
    }
  },
  keys = {
    {key="\"", mods="WIN", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="%", mods="WIN", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="q", mods="WIN", action=wezterm.action{ActivateTab=0}},
    {key="w", mods="WIN", action=wezterm.action{ActivateTab=1}},
    {key="e", mods="WIN", action=wezterm.action{ActivateTab=2}},
    {key="r", mods="WIN", action=wezterm.action{ActivateTab=3}},
  }
}

