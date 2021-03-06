local hyper = { "alt", "shift", "ctrl" }

-- Disable annimations
hs.window.animationDuration = 0

-- Hide shadows
-- hs.window.setShadows(false)

---- Window managment
local display_laptop = "Color LCD"

-- Define window layouts

local laptop_ide_work = {
  {"iTerm", nil,  display_laptop, hs.layout.right50, nil, nil},
  {"Chromium", nil,  display_laptop, hs.layout.right50, nil, nil},
  {"PhpStorm", nil,  display_laptop, hs.layout.left50, nil, nil},
}

local laptop_ide_work2 = {
  {"iTerm", nil,  display_laptop, hs.layout.right30, nil, nil},
  {"PhpStorm", nil,  display_laptop, hs.layout.left70, nil, nil},
}

hs.hotkey.bind(hyper, '1', function() hs.layout.apply(laptop_ide_work) end)
hs.hotkey.bind(hyper, '2', function() hs.layout.apply(laptop_ide_work2) end)

hs.hotkey.bind(hyper, 's', function() toggle_application('iTerm') end)
hs.hotkey.bind(hyper, 'w', function() toggle_application('Textual') end)

-- hyper left for left one half window
hs.hotkey.bind(hyper, "left", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

-- hyper right for right one half window
hs.hotkey.bind(hyper, 'right', function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(hyper, "7", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w * 0.7
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(hyper, "6", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w * 0.6
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(hyper, "3", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w * 0.7)
    f.y = max.y
    f.w = max.w * 0.3
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(hyper, "4", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w * 0.6)
    f.y = max.y
    f.w = max.w * 0.4
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

-- hyper space for full screen
hs.hotkey.bind(hyper, 'space', function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    win:setFrame(max)
  else
    hs.alert.show("No active window")
  end
end)

-- hyper z for center display
hs.hotkey.bind(hyper, 'return', function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    local middle_width = math.min(max.w * 0.8, 2550*0.6)
    local middle_left = max.x + (max.w - middle_width) / 2

    f.x = middle_left
    f.y = max.y
    f.w = middle_width
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

-- hyper r for top left one quarter window
hs.hotkey.bind(hyper, 'r', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-- hyper t for top right one quarter window
hs.hotkey.bind(hyper, 't', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2)
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-- hyper v for bottom left one quarter window
hs.hotkey.bind(hyper, 'v', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2)
        f.y = max.y + (max.h / 2)
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-- hyper c for bottom right one quarter window
hs.hotkey.bind(hyper, 'c', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y + (max.h / 2)
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-- Hyper hjkl to switch window focus
hs.hotkey.bind(hyper, 'k', function()
    if hs.window.focusedWindow() then
        hs.window.focusedWindow():focusWindowNorth()
    else
        hs.alert.show("No active window")
    end
end)

hs.hotkey.bind(hyper, 'j', function()
    if hs.window.focusedWindow() then
        hs.window.focusedWindow():focusWindowSouth()
    else
        hs.alert.show("No active window")
    end
end)

hs.hotkey.bind(hyper, 'l', function()
    if hs.window.focusedWindow() then
    hs.window.focusedWindow():focusWindowEast()
    else
        hs.alert.show("No active window")
    end
end)

hs.hotkey.bind(hyper, 'h', function()
    if hs.window.focusedWindow() then
        hs.window.focusedWindow():focusWindowWest()
    else
        hs.alert.show("No active window")
    end
end)

---- General utils

-- Lock the machine
hs.hotkey.bind(hyper, "delete", function()
  hs.caffeinate.startScreensaver()
end)



-- Reload config on write
function reload_config(files)
  hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

-- Hyper i to show window hints
hs.hotkey.bind(hyper, "i", function()
  hs.hints.windowHints()
end)

-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app)
    local app = hs.appfinder.appFromName(_app)
    if not app then
        -- FIXME: This should really launch _app
        return
    end
    local mainwin = app:mainWindow()
    if mainwin then
        if mainwin == hs.window.focusedWindow() then
            mainwin:application():hide()
        else
            mainwin:application():activate(true)
            mainwin:application():unhide()
            mainwin:focus()
        end
    end
end
