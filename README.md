🔫 Config.Weapons

This section sets custom recoil and camera shake values for specific weapons.Each weapon is referenced by its hash key (using GetHashKey), and assigned:

recoil: How much the weapon pulls the aim off-target when fired.

shake: How much the screen shakes when the weapon is fired (affects visual feedback).

Example:

[GetHashKey('WEAPON_PISTOL_MK2')] = { recoil = 0.3, shake = 0.03 }

Means that firing a Pistol MK2 will cause moderate recoil and a slight screen shake.

💥 Config.DamageModifiers

Defines custom damage multipliers for specific weapons.These values scale the damage output for the weapons listed.

Example:

[GetHashKey("WEAPON_UNARMED")] = 0.9

This means that unarmed attacks deal 90% of the default damage.

[GetHashKey("WEAPON_PISTOLSNS")] = 0.37

SNS Pistol will only deal 37% of the default damage, making it a weaker weapon.

🎮 Config.DisabledControlsWhileAiming

An array of control input codes that should be disabled when the player is aiming.

These prevent actions like:

Light melee attack (140)

Heavy melee attack (141)

Alternate melee (142)

Melee block (143)

This ensures cleaner combat behavior when using firearms by restricting unintended melee inputs while aiming.

🧠 Config.CriticalHits

A boolean flag that controls whether critical hits (like headshots) are allowed:

true: Headshots and other critical damage areas do extra damage.

false: Critical hit multipliers are disabled (headshots do not instantly kill).

