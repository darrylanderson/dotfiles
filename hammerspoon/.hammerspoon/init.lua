
-- Hyper key bindings
local hyper = { "cmd", "alt", "ctrl", "shift" }

-- Reload hammerspoon config with hyper-0
hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()

-- Lock screen
hs.hotkey.bind(hyper, 'l', function()
  hs.caffeinate.lockScreen()
end)

-- App launchers
local applicationKeys = {
  c = 'Google Chrome',
  t = 'iTerm',
  s = 'Slack',
  f = 'Finder'
}
for key,app in pairs(applicationKeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- Window management
hs.window.animationDuration = 0
require("tiling")

