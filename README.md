# Bootleg Industries' Mods for ΔV: Rings of Saturn

## Directory of mods:

| Mod Name and Link | Description |
| --- | --- |
| Bootleg's Personal Defense Laser Turret: [BootlegPDT-Laser](https://github.com/digitalbarrito/BootlegIndustries/tree/main/BootlegPDT-Laser). | A PDT-Laser based off of the CL-200AP, with PDMWG-like aiming performance. Requires Fire Input. |
| Bootleg's ERM-420 Autopilot System: [BootlegERM-420](https://github.com/digitalbarrito/BootlegIndustries/tree/main/BootlegERM-420). | An Autopilot System that combines the ER-42's performance and trajectory display, with the NDCI's Boresight. |
| AchieveDeez! Gimme my Achievements Back!: [AchieveDeez](https://github.com/digitalbarrito/BootlegIndustries/tree/main/AchieveDeez). | Re-enables earning achievements in-game and on Steam/GoG when the modloader is active. |
| AcheetaDeez! Gimmy my Achievements Back! *Cheetahs Welcome: [AcheetaDeez](https://github.com/digitalbarrito/BootlegIndustries/tree/main/AcheetaDeez). | Re-enables earning achievements in-game and on Steam/GoG when your save is marked cheated. |
| TurnNBurn: [TurnNBurn](https://github.com/digitalbarrito/BootlegIndustries/tree/main/TurnNBurn). | Mod that allows you to set Keybinds for "180 degree flip from current heading" for quick TurnNBurns, and "orient ship to mouse location" to turn your ship torch towards where ever your mouse is. |
| M Is For MPU: [MIsForMPU](https://github.com/digitalbarrito/BootlegIndustries/tree/main/MIsForMPU). | Mod that adds a keybind to toggle the MPU on/off, I recommend M. |




### What is Bootleg Industies?:

   Bootleg Industries is a fictional company created for the purposes of trying to be lore friendly within dV's current lore and universe. The general concept behind it is that Bootleg Industries is a young company getting by through sourcing and salvaging resources around the rings. Whether it be actual raw resources, or doing deals with the maintainence crew on Enceladus Prime, Bootleg Industries always seems to get what they need to cook their crazy ideas. These crazy ideas often fly in the face of the base game's "sidegrades only" philosophy, but we're here for a fun time not a long time. While I don't really try to maintain "vanilla" balance or "sidegrading" I do attempt to give some amount of balance to my mods, generally through cost of ownership/maintainence. 

### Why is Bootleg Industries?:

   Well that one is pretty simple. I am a below average intelligence lifeform, so I don't consider most of what I produce to be high quality. In-fact, most of my "programming experience" comes in the form of modding existing games with existing communities and mods, and often kitbashing different people's work together to make it do things I want it to do. This often commes with hilarious unintended side-effects that I have absolutely no clue how to fix, let alone begin to figure out why they happen.

   So not only do I consider much of my "work" to be pretty bootleg in the first place, what `Bootleg Industries` does "in-game/in-universe" is very much the same nature. 

   The Bootleg PDT-Laser was born out of the fact that Kodera has a PDT-Laser in the game already, but denies us of it's glory. So I bootleg'd a CL-200AP and made my own.

   The Bootleg ERM-420 was born out of the fact the PDT-Laser now exists, and without it you aren't able to see where the things are pointing while using my favorite AP (ER-42). So I made a new ER-42, and added the NDCI's boresight capablity to it, and thus, ERM-420 was born. (Yes the 420 is a silly weed joke. You can't expect highbrow from me all the time lol. The M is to signify it's "Militarized" (Boresight from the Demilitarized NDCI).)

### How is Bootleg Industries?:

   Aww, thanks for asking, no one ever does. ***Unhinged and unstable***.


# How do I use these things?!?!

- Check the [Releases](https://github.com/digitalbarrito/BootlegIndustries/releases) section for all the release.zips for my mods or the [Tags](https://github.com/digitalbarrito/BootlegIndustries/tags) section for specific mod tags/releases, these are the easiest to install as they are entirely drag and drop.

- For mods that do not have a release zip:
  1) Click the big green "[Code](https://github.com/digitalbarrito/BootlegIndustries/archive/refs/heads/main.zip)" button at the top of the page (or click the blue `Code` in these instructions).
  2) Click "Download ZIP".
  3) You should now have "BootlegIndustries-main.zip".
  4) Extract "BootlegIndustries-main.zip", inside of "BootlegIndustries-main" you will find the individual folders for each mod.
  5) Right click on the mod folder you want `(Ex: TurnNBurn)` and Click `Send to > Compressed "zipped" folder`
  6) Ensure the structure is as follows: `ModNameFolder.zip > ModNameFolder > contents of mod` `(Ex: TurnNBurn.zip > TurnNBurn > ModMain.gd, README.md, Settings.gd, ships)`
  7) Follow the `Standard Mod Installation and Activation Steps` below.

## Standard Mod Installation and Activation Steps for ΔV: Rings of Saturn:

1) Navigate to the game's installation directory (the directory containing `Delta-V.exe`)
2) Create a new directory called `mods`.
3) Place your mod `.zip(The structure should be 'mods/Mod.zip/ModFolder/Contents of Mod')` in the `mods` folder.
4) Run the game with the `--enable-mods` command-line parameter.
       
    -On Steam, this can be done in Properties → General → Launch Options.

# **Known Compatibility Issues:**
## **Bootleg Branded Mods** `Ex: BootlegERM-420, BootlegPDT-Laser` ***DO NOT*** currently work with `Industries of Enceladus (IoE)`
- Currently if IoE is loaded together with Bootleg Branded mods, IoE wins out due to how that mod works, resulting in ERM-420 or PDT-Laser not actually being in the game. There is no workaround for this at this time. Will Update this section if that changes.
- Things like `TurnNBurn`, `M Is For MPU`, `Achieve/AcheetaDeez`, should work fine with IoE though. This isn't tested or confirmed, but I suspect that they should be fine together. Please feel free to report incompatabilites via Issues, or on the dV Discord in the Workshop section. 
