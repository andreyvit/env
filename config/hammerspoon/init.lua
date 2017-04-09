hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)

hs.hints.style = "vimperator"

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "tab", function()
  hs.hints.windowHints(hs.window.focusedWindow():application():allWindows())
end)

hs.hotkey.bind({"ctrl", "alt", "shift"}, "tab", function()
  hs.hints.windowHints(nil)
end)

-- hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
