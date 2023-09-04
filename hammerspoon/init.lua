hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "X", function()
    -- Use the bundle ID rather than just 'Xcode' to prevent it from trying to open utility apps like 'Xcodes'
    local xcode = hs.application.find("com.apple.dt.Xcode")
    
    -- If nothing is found then just alert the user to open one, it would be very hard to guess which one they want if none are open!
    if xcode == nil then 
        -- find the default xcode and launch it
        local path = hs.execute('xcode-select -p')
        local appPath = string.match(path, '(.+.app)/')

        if appPath ~= nil then
            hs.application.open(appPath)
            return
        end
        
        hs.notify.new({title="Could not find Xcode! 🫨", informativeText="Manually launch an Xcode instance and then I’ll be able to work!"}):send()
        return
    end

    --- If not the frontmost app, make it the frontmost! If it already is, hide it (makes it more toggle-y).
    if xcode:isFrontmost() then
        xcode:hide()
    else
        xcode:activate()
    end
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "C", function()
    -- Use the bundle ID rather than just 'Simulator' to prevent it from trying to open random background processes, and yes 'iphonesimulator' works for iPads as well
    local simulator = hs.application.find("com.apple.iphonesimulator")
    
    -- If nothing is found then just alert the user to open one, it would be very hard to guess which one they want if none are open!
    if simulator == nil then 
        hs.notify.new({title="Simulator is not open! 🫨", informativeText="Run your project in Xcode to launch it in a simulator, then I'll know what to open!"}):send()
        return
    end

    --- If not the frontmost app, make it the frontmost! If it already is, hide it (makes it more toggle-y).
    if simulator:isFrontmost() then
        simulator:hide()
    else
        simulator:activate()
    end
end)