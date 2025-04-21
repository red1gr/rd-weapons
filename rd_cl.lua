local Config = Config or {}
CreateThread(function()
	while true do
		Wait(0)
		local ped = PlayerPedId()
		local weapon = GetSelectedPedWeapon(ped)
		for hash, data in pairs(Config.Weapons) do
			if weapon == hash then	
				if IsPedShooting(ped) then
					ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', data.shake)
				end
			end
		end
	end
end)

CreateThread(function()
	while true do
		Wait(0)
		local ped = PlayerPedId()
		if IsPedShooting(ped) and not IsPedDoingDriveby(ped) then
			local _, weapon = GetCurrentPedWeapon(ped)
			_, cAmmo = GetAmmoInClip(ped, weapon)
			local data = Config.Weapons[weapon]
			if data and data.recoil and data.recoil ~= 0 then
				local tv = 0
				repeat 
					Wait(0)
					local p = GetGameplayCamRelativePitch()
					if GetFollowPedCamViewMode() ~= 4 then
						SetGameplayCamRelativePitch(p + 0.1, 0.2)
					end
					tv = tv + 0.1
				until tv >= data.recoil
			end
		end
	end
end)
CreateThread(function()
	while true do
		local ped = PlayerPedId()
		
		-- Disable controls while aiming
		if IsPlayerFreeAiming(PlayerId()) then
			for _, control in ipairs(Config.DisabledControlsWhileAiming) do
				DisableControlAction(0, control, true)
			end
		end

		-- Critical hits toggle
		if Config.CriticalHits then
			SetPedSuffersCriticalHits(ped, true)
		end

		-- Apply weapon damage modifiers
		for hash, multiplier in pairs(Config.DamageModifiers) do
			N_0x4757f00bc6323cfe(hash, multiplier)
		end

		Wait(0)
	end
end)
