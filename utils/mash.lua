while true do
	-- press A
	joypad.set(1, {A=true});
	vba.frameadvance();
	-- release A
	vba.frameadvance();
end

