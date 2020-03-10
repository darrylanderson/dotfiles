
-- Hyper key bindings
local hyper = { "cmd", "alt", "ctrl", "shift" }

-- Reload hammerspoon config with hyper-0
hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()

-- Get rid of the annoyingly slow animations in osx
hs.window.animationDuration = 0

-- Lock screen
hs.hotkey.bind(hyper, 'l', function()
  hs.caffeinate.startScreensaver()
end)

-- App launchers
local applicationKeys = {
  c = 'Google Chrome',
  i = 'IntelliJ IDEA',
  s = 'Slack',
  f = 'Finder'
}
for key,app in pairs(applicationKeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- Launch a new iTerm window on current screen
function findOrLaunch(a)
  local app = hs.application.find(a)
  if not app then
    hs.application.launchOrFocus(a)
  end
  return hs.application.find(a)
end
hs.hotkey.bind(hyper, "t", function()
  myTerm = findOrLaunch("iterm")
  myTerm:selectMenuItem({"Shell","New Window"}) 
end)

-- Window management
require("tiling")

-- When osx borks all the windows after disconnecting a monitor, rescue them
local rescueWindows = require "rescuewindows"
hs.hotkey.bind(hyper, "r", rescueWindows)
