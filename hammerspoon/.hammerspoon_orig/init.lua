
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

-- Define Spoons
local spoons = {
  WindowGridSnapping = true
}

-- Import Configured Spoons
for spoonName, enabled in pairs(spoons) do
  if enabled then
      hs.loadSpoon(spoonName)
      spoon[spoonName].start(spoon[spoonName])
      spoon[spoonName].bindHotkeys(spoon[spoonName], hyper)
      spoon[spoonName].bindMouseEvents(spoon[spoonName])
  end
end


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
--require("tiling")

--hs.loadSpoon("MiroWindowsManager")
--spoon.MiroWindowsManager:bindHotkeys({
--  up = {hyper, "up"},
--  right = {hyper, "right"},
--  down = {hyper, "down"},
--  left = {hyper, "left"},
--  fullscreen = {hyper, "f"}
--})

-- When osx borks all the windows after disconnecting a monitor, rescue them
local rescueWindows = require "rescuewindows"
hs.hotkey.bind(hyper, "r", rescueWindows)
