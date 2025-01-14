local timerStart = "Starting Pomodoro timer"
local timerEnd = "Time's up, time for a break"
local timerOn = false

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "P", function()
	if timerOn == false then
		local notificationStart = hs.notify.new({ title = "Pomodoro", informativeText = timerStart })
		notificationStart:alwaysPresent()
		notificationStart:send()
		timerOn = true

        myTimer = hs.timer.doAfter(2400, function()
        hs.notify.new({title="Time is up!", informativeText= timerEnd}):send()
        timerOn = false
		end)
	end
end)
