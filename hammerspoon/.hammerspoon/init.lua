-- Variables & Configuration
local hyper = {
    primary = {"cmd", "alt", "ctrl", "shift"},
    secondary = {"cmd", "alt", "ctrl"}
}

-- Get rid of the annoyingly slow animations in osx
hs.window.animationDuration = 0
local config = {
    DisableWindowAnimations = true
}

-- Launch a new iTerm window on current screen
function findOrLaunch(a)
  local app = hs.application.find(a)
  if not app then
    hs.application.launchOrFocus(a)
  end
  return hs.application.find(a)
end
hs.hotkey.bind(hyper.primary, "t", function()
  myTerm = findOrLaunch("iterm")
  myTerm:selectMenuItem({"Shell","New Window"})
end)

-- Define which Spoons to enable
local spoons = {
    ConfigReloader = true,
    WindowGridSnapping = true,
    --WindowMouseSnapping = true,
    AppLauncher = true
    --SpacesManagement = false
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
