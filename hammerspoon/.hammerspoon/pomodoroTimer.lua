local phrase = "Time for a break"
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "P", function()
	hs.notify.new({ title = "Hammerspoon Pomodoro", informativeText = phrase }):send()
end)

