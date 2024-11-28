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

-- Watch for application switches
local appWatcher = hs.application.watcher.new(function(appName, eventType, appObject)
    if eventType == hs.application.watcher.activated then
        local bundleID = appObject:bundleID()
        local sourceID = appToLayout[bundleID] or defaultLayout
        changeInputSource(sourceID)
    end
end)

appWatcher:start()

