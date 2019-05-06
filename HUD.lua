-- HUD Script for Mega Man Battle Network by Tterraj42, enjoy.

-- To Use: Hold L and R, then press:
--  Start: Toggle Random Encounter Skip
-- Select: Toggle HUD Display

local previousButtons;

--[[ for debugging and verification --]]
function infoDump(onScreen)
	onScreen = onScreen or false; -- technically redundant
	
	if onScreen then
		-- vba.message overwrites, so only last per frame is visible
		vba.message("Frame  Count: " ..          vba.framecount());
		vba.message("Lag    Count: " ..          vba.lagcount()  );
		vba.message("Is Lag Frame: " .. tostring(vba.lagged()   ));
		vba.message("Is Emulating: " .. tostring(vba.emulating()));
		vba.message(""); -- cannot be empty
	else
		vba.print("Frame  Count: " ..          vba.framecount());
		vba.print("Lag    Count: " ..          vba.lagcount()  );
		vba.print("Is Lag Frame: " .. tostring(vba.lagged()   ));
		vba.print("Is Emulating: " .. tostring(vba.emulating()));
		vba.print(); -- can be empty
	end
end

--[[ variable arguments, for reference ]]--
function average(...)
	result = 0
	local arg = {...}
	for i,v in ipairs(arg) do
		result = result + v
	end
	return result/#arg
end

while true do
	infoDump(true);
	
	local buttons = joypad.get(1);
	if buttons.A then
		infoDump();
	end
	
	updateHUDState();
	vba.frameadvance();
end

function updateHUDState()
	previousButtons = joypad.get(1);
	-- TODO: check RNG, etc.
end

-- VBA LUA API https://code.google.com/archive/p/vba-rerecording/wikis/LuaScriptingFunctions.wiki
-- online lua tester https://www.tutorialspoint.com/execute_lua_online.php

