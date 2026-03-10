# TK8 Jukebox Photo Mode Helper (UE4SS) (Steam)

A lightweight Lua script for **UE4SS** designed to provide a clean "Photo Mode" experience within the Tekken 8 Jukebox menu. This tool allows you to toggle the entire user interface with a single keystroke.

## Features
- **Full UI Cleanup:** Hides song lists, stage lists, the top information bar, and button guides.
- **Instant Toggle:** Switch the UI on and off seamlessly by pressing **F9**.

## Installation
1. Download and install **UE4SS v3.0.1** from [this link](https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/v3.0.1) (Download `UE4SS_v3.0.1.zip`, not the DEV one).
1.5. If you can fully understand how to install it from the official documentation [here](https://docs.ue4ss.com/dev/guides/creating-a-lua-mod.html), the rest should be easy for you, if not follow the next steps (Just what I did to make it work).
2. Once you download it, extract it at `C:\Program Files (x86)\Steam\steamapps\common\TEKKEN 8\Polaris\Binaries\Win64` (I dunno for Linux).
3. Once extracted, run the game, make it to the main menu and close it.
4. Inside the `...\Win64\Mods` folder, create a new folder with a name you like, my case was literally `MusicMenuHUDToggle`. Inside it create a JSON file named `mod.json` another folder named specifically `scripts`. Inside the `scripts` folder, copy and paste, or replace the `main.lua` and `mod.json` files of this repository. It should be like this: "...\Mods\MusicMenuHUDToggle\scripts\main.lua" and "...\Mods\MusicMenuHUDToggle\mod.json".
5. Now there is a txt file named `mods.txt` at "...\Polaris\Binaries\Win64\Mods". Open it to edit, and under the mods lines, write : `mod_name : 1`, should look like this (in my case with `MusicMenuHUDToggle`): 
`CheatManagerEnablerMod : 1
ActorDumperMod : 0
ConsoleCommandsMod : 1
ConsoleEnablerMod : 1
SplitScreenMod : 0
LineTraceMod : 0
BPModLoaderMod : 1
BPML_GenericFunctions : 1
jsbLuaProfilerMod : 0
MusicMenuHUDToggle : 1 <- THIS IS LINE TO ADD (do not add this comment)
; Built-in keybinds, do not move up!
Keybinds : 1`
6. Make sure that if you want to change the name of the mod, make sure to change, in `...\Win64\Mods`, the mod folder name **exactly** the same, also in `mod.json` and `mods.txt` as well.

## Usage
While inside the Jukebox menu, press **F9** to toggle UI visibility. **(And do not try using it in other active screens like main menu)**
Just enter the JukeBox, select stage (doesn't matter if it is "normal" or "climax"), select a track from any game, press "i" to play the music (or not, do as you like), and press "F9", enjoy I guess.

## My Note
I'm not any specialist in this field of programming and modding, just know a few things, but as I was playing Tekken 8, I realized that I wanted that "jukebox background" with my main (I dunno, looks fire for me) and decided to build the "tool" and *voilá*. This is my first repository and anything positive is welcomed. For troubleshooting I think using the "Issues" tab is good, if any. (I "test" it a few times and besides the helicopter/chopper sounds my PC is doing I believe everything is fine.)

## Technical & Legal Note
This script utilizes standard Unreal Engine visibility commands (`SetVisibility`) targeting specific Polaris UI framework classes (`WBP_UI_...`). The use of these class names is strictly for interoperability and functionality purposes to enable a clean photo mode; it does not include or redistribute any proprietary game assets or source code.

## License
Distributed under the MIT License. See `LICENSE` for more information.
