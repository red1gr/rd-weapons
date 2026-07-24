a# RD-WEAPONS FIVEM SCRIPT

[![GitHub issues](https://img.shields.io/github/issues/red1gr/rd-weapons?style=for-the-badge&logo=github&logoColor=white)](https://github.com/red1gr/rd-weapons/issues)
[![GitHub license](https://img.shields.io/github/license/red1gr/rd-weapons?style=for-the-badge&logo=apache&logoColor=white)](LICENSE)

## OVERVIEW

The `rd-weapons` script is a powerful FiveM resource designed to give server owners unparalleled control over weapon mechanics within their game server. This script allows for detailed configuration of weapon recoil, camera shake, damage modifiers, and player control behavior while aiming. Additionally, it provides the ability to enable or disable critical hit (headshot) functionality for NPCs, offering a more dynamic and engaging combat system. Perfect for servers looking to fine-tune their gunplay for realism, competitive balance, or a unique role-playing experience.

## FEATURES

- **Configurable Weapon Recoil:** Adjust horizontal and vertical recoil for a wide range of weapons to achieve your desired feel.
- **Dynamic Camera Shake:** Control the intensity of camera shake effects when weapons are fired, adding immersive feedback.
- **Custom Damage Modifiers:** Implement specific damage multipliers for various weapons or damage types, balancing combat as needed.
- **Aiming Control Disablement:** Configure controls (e.g., movement, jumping) to be disabled when a player is aiming, promoting tactical gunplay.
- **Critical Hit (Headshot) System:** Toggle and fine-tune critical hit mechanics specifically for NPCs (Peds) to influence engagements.
- **Client-Side Optimization:** Efficiently handles weapon mechanics on the client, ensuring smooth performance without server strain.

## TECH STACK

[![Lua](https://img.shields.io/badge/Lua-5.4-blue.svg?style=for-the-badge&logo=lua&logoColor=white)](https://www.lua.org/)
[![FiveM](https://img.shields.io/badge/FiveM-Framework-E64B4E.svg?style=for-the-badge)](https://fivem.net/)



### INSTALLATION

1. **Download the Resource**
   - Obtain the `rd-weapons` resource folder.
   - If you cloned this repository, rename the folder to `rd-weapons` (if it's not already).

2. **Place in Resources Folder**
   - Move the `rd-weapons` folder into your FiveM server's `resources` directory.

   ```
   your-fivem-server/
   ├── resources/
   │   ├── [your-other-resources]/
   │   └── rd-weapons/  <-- Place the downloaded folder here
   └── server.cfg
   ```

3. **Add to `server.cfg`**
   - Open your `server.cfg` file (located in your main server directory).
   - Add the following line to ensure the resource starts:
     ```cfg
     ensure rd-weapons
     ```

4. **Restart Your Server**
   - Restart your FiveM server to apply the changes and load the `rd-weapons` script.

## CONFIGURATION


![Example config.lua snippet](https://r2.fivemanage.com/S1wPEooftNoEmQjn8jhwx/rd-wea.png)

## SCRIPT STRUCTURE

```
rd-weapons/
├── config.lua      # Main configuration file for script parameters
├── fxmanifest.lua  # FiveM resource manifest (defines script metadata and entry points)
├── rd_cl.lua       # Client-side Lua script containing the core logic for weapon modifications
└── LICENSE         # Apache 2.0 License file
```

## CONTRIBUTING

- WE WELCOME CONTRIBUTIONS! IF YOU HAVE SUGGESTIONS FOR IMPROVEMENTS, FEATURE REQUESTS, OR BUG REPORTS, PLEASE OPEN AN ISSUE OR SUBMIT A PULL REQUEST ON OUR GITHUB REPOSITORY.

## LICENSE

THIS PROJECT IS LICENSED UNDER THE [APACHE LICENSE 2.0](LICENSE) - SEE THE [LICENSE](LICENSE) FILE FOR DETAILS.

## SUPPORT & CONTACT

- ISSUES:  [GITHUB ISSUES](https://github.com/red1gr/rd-weapons/issues)
- CONTACT: [SUPPORT CONTACT](mailto:mail@red1gr.dev) 
