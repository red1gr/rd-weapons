Citizen.CreateThread(function()
    -- DISABLE HEADSHOT 
	SetPedSuffersCriticalHits(GetPlayerPed(-1), false)
    -- WEAPONS DAMAGE
    local weaponDamageModifiers = {
        {hash = "WEAPON_UNARMED", damage = 0.37},
        {hash = "WEAPON_PISTOLSNS", damage = 0.37},
        {hash = "WEAPON_BAT", damage = 0.15},
        {hash = "WEAPON_NIGHTSTICK", damage = 0.23},
        {hash = "weapon_sledgehammer", damage = 0.16},
        {hash = "WEAPON_GOLFCLUB", damage = 0.10},
        {hash = "weapon_flashlight", damage = 0.10},
        {hash = "weapon_machete", damage = 0.15},
        {hash = "weapon_katana", damage = 0.21},
        {hash = "weapon_switchblade", damage = 1.00},
        {hash = "weapon_poolcue", damage = 0.12},
        {hash = "WEAPON_COMBATPISTOL", damage = 0.45},
        {hash = "WEAPON_SMG", damage = 0.70},
        {hash = "WEAPON_MINISMG", damage = 0.70},
        -- ADD MORE WEAPONS
    }
    for _, weapon in pairs(weaponDamageModifiers) do
        local weaponHash = GetHashKey(weapon.hash)
        N_0x4757f00bc6323cfe(weaponHash, weapon.damage)
    end
    while true do
        Citizen.Wait(1000) 
    end
end)
