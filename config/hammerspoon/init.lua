-- https://www.hammerspoon.org/go/

hyper  = {'cmd', 'alt', 'ctrl', 'shift'}
meh    = {'alt', 'ctrl', 'shift'}

function dump(label, v) print(label, hs.inspect(v)) end

hs.logger.defaultLogLevel = 'info'

hs.loadSpoon('SpoonInstall')
spoon.SpoonInstall.use_syncinstall = true

spoon.SpoonInstall:andUse('ReloadConfiguration', {
 config = {
 },
 start = true
})

spoon.SpoonInstall:andUse('MenubarFlag', {
 config = {
   colors = {
     ["ABC"] = {},
     ["Russian"] = {hs.drawing.color.x11.red, hs.drawing.color.x11.blue, hs.drawing.color.x11.white},
   }
 },
 start = true
})

-- JOYSTICK

local log = hs.logger.new('andreyvit', 'debug')
dump("midi devices", hs.midi.devices())

-- hs.fnutils.each(hs.application.runningApplications(), function(app) print(app:title()) end)


hs.hotkey.bind(hyper, "W", function()
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

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  -- hs.alert.show("Hello World!")
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)


-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x + 10
--   f.y = f.y + 10
--   win:setFrame(f)
-- end)

-- local laptopScreen = "Color LCD"
-- local windowLayout = {
--     {"Safari",  nil,          laptopScreen, hs.layout.left50,    nil, nil},
--     {"Mail",    nil,          laptopScreen, hs.layout.right50,   nil, nil},
--     {"iTunes",  "iTunes",     laptopScreen, hs.layout.maximized, nil, nil},
--     {"iTunes",  "MiniPlayer", laptopScreen, nil, nil, hs.geometry.rect(0, -48, 400, 48)},
-- }
-- hs.layout.apply(windowLayout)


-- local function cleanPasteboard()
--   local pb = hs.pasteboard.contentTypes()
--   local contains = hs.fnutils.contains
--   if contains(pb, "com.apple.webarchive") and contains(pb, "public.rtf") then
--     hs.pasteboard.setContents(hs.pasteboard.getContents())
--   end
-- end

-- local messagesWindowFilter = hs.window.filter.new(false):setAppFilter('Messages')
-- messagesWindowFilter:subscribe(hs.window.filter.windowFocused, cleanPasteboard)

-- function cycle_safari_agents()
--     hs.application.launchOrFocus("Safari")
--     local safari = hs.appfinder.appFromName("Safari")

--     local str_default = {"Develop", "User Agent", "Default (Automatically Chosen)"}
--     local str_edge = {"Develop", "User Agent", "Microsoft Edge — macOS"}
--     local str_chrome = {"Develop", "User Agent", "Google Chrome — Windows"}

--     local default = safari:findMenuItem(str_default)
--     local edge = safari:findMenuItem(str_edge)
--     local chrome = safari:findMenuItem(str_chrome)

--     if (default and default["ticked"]) then
--         safari:selectMenuItem(str_edge)
--         hs.alert.show("Edge")
--     end
--     if (edge and edge["ticked"]) then
--         safari:selectMenuItem(str_chrome)
--         hs.alert.show("Chrome")
--     end
--     if (chrome and chrome["ticked"]) then
--         safari:selectMenuItem(str_default)
--         hs.alert.show("Safari")
--     end
-- end
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, '7', cycle_safari_agents)

spoon.SpoonInstall:andUse('FadeLogo', {
  config = {
    image_size = hs.geometry.size(44, 44),
    image_alpha = 0.5,
    zoom = false,
    fade_in_time = 0,
    run_time = 1,
    fade_out_time = 0.3
  },
  start = true
})
