Config = {}

-- Weapon recoil and camera shake values
Config.Weapons = {
    [GetHashKey('WEAPON_PISTOL')]        = { recoil = 0.0, shake = 0.03 },
    [GetHashKey('WEAPON_PISTOL_MK2')]    = { recoil = 0.3, shake = 0.03 },
    [GetHashKey('WEAPON_COMBATPISTOL')]  = { recoil = 0.2, shake = 0.03 },
    [GetHashKey('WEAPON_MINISMG')]       = { recoil = 0.1, shake = 0.03 },
}

-- Damage modifiers for specific weapons
Config.DamageModifiers = {
    [GetHashKey("WEAPON_UNARMED")]    = 0.9,
    [GetHashKey("WEAPON_PISTOLSNS")]  = 0.37,
}

-- Controls to disable while aiming
Config.DisabledControlsWhileAiming = {
    140, -- Melee Light Attack
    141, -- Melee Heavy Attack
    142, -- Melee Alternate Attack
    143, -- Melee Block
}

-- Toggle for whether peds suffer critical hits (headshots ...)
Config.CriticalHits = false
