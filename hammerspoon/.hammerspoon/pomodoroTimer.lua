local timerStart = "Starting Pomodoro timer"
local timerEnd = "Time's up, time for a break"
local timerOn = false


hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "P", function()
	if timerOn == false then
		local notification = hs.notify.new({ title = "Pomodoro", informativeText = timerStart })
		notification:alwaysPresent()
		notification:send()
		timerOn = true
		for time = 1, 10 do
            local sleep = os.execute('sleep 1')
			if time == 10 then
				local notification =
					hs.notify.new({ title = "Pomodoro", informativeText = timerEnd, withdrawAfter = 0 })
				notification:alwaysPresent()
				notification:send()
                timerOn = false
			end
		end
	end
end)
