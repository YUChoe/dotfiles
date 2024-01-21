local wezterm = require 'wezterm'

local config = {}

-- https://wezfurlong.org/wezterm/config/appearance.html
config.initial_rows = 50
config.initial_cols = 160
config.font = wezterm.font('Cascadia Mono')
config.font_size = 9.0
config.color_scheme = '3024 (dark) (terminal.sexy)'
config.colors = {
  foreground = 'white',
  background = '#111122',
}
config.window_frame = {
  border_left_width = '0.25cell',
  border_right_width = '0.25cell',
  border_bottom_height = '0.25cell',
  border_top_height = '0cell',
  border_left_color = '#444455',
  border_right_color = '#444455',
  border_bottom_color = '#444455',
}

-- config.char_select_bg_color = "#ffffff"

-- config.dpi = 192
config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.9

config.inactive_pane_hsb = {
  brightness = 0.45,
}

-- config.force_reverse_video_cursor = true

config.mouse_bindings = {
        {
                event = { Down = { streak = 1, button = "Right" } },
                mods = "NONE",
                -- action = window:perform_action(act({ PasteFrom = "Clipboard" }), pane),
                action = wezterm.action.PasteFrom("PrimarySelection"),

--              action = wezterm.action_callback(function(window, pane)
--                      local has_selection = window:get_selection_text_for_pane(pane) ~= ""
--                      if has_selection then
--                              window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
--                              window:perform_action(act.ClearSelection, pane)
--                      else
--                              window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
--                      end
--              end),
        },
}

config.keys = {
        {
                key = '8', mods = 'CTRL',
                action = wezterm.action.PaneSelect {
                        alphabet = '1234567890',
                }
        },
        {
                key = '0', mods = 'CTRL',
                action = wezterm.action.PaneSelect {
                        mode = 'SwapWithActive',
                        alphabet = '1234567890',
                },
        },
}

return config
