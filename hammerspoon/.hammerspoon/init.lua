local appToLayout = {
    ["com.microsoft.teams2"] = "com.apple.keylayout.Swedish-Pro",
    ["com.microsoft.Outlook"] = "com.apple.keylayout.Swedish-Pro",
}

local defaultLayout = "com.apple.keylayout.US"

-- Function to change input source
local function changeInputSource(sourceID)
    if hs.keycodes.currentSourceID() ~= sourceID then
        hs.keycodes.currentSourceID(sourceID)
    end
end

-- Window Filter to track focused window
local wf = hs.window.filter.new()
wf:subscribe(hs.window.filter.windowFocused, function(win)
    if win then
        local app = win:application()
        if app then
            local bundleID = app:bundleID()
            local sourceID = appToLayout[bundleID] or defaultLayout
            changeInputSource(sourceID)
        end
    end
end)
