# TK8 Jukebox Photo Mode Helper (UE4SS)

A lightweight Lua script for **UE4SS** designed to provide a clean "Photo Mode" experience within the Tekken 8 Jukebox menu. This tool allows you to toggle the entire user interface with a single keystroke.

## Features
- **Full UI Cleanup:** Hides song lists, stage lists, the top information bar, and button guides.
- **Focus Cursor Fix:** Removes the persistent yellow selection box for flawless screenshots.
- **Instant Toggle:** Switch the UI on and off seamlessly by pressing **F9**.

## Installation
1. Download and install **UE4SS v3.0.1** from [this link](https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/v3.0.1) (Download `UE4SS_v3.0.1.zip`).
2. Create a new folder named `JukeboxHUD` inside your `Tekken8/Binaries/Win64/Mods/` directory.
3. Place the `main.lua` file from this repository into that folder.
4. (Optional) Ensure the mod is enabled in your `mods.txt` if you have a custom configuration.

## Usage
While inside the Jukebox menu, press **F9** to toggle UI visibility.

## Technical & Legal Note
This script utilizes standard Unreal Engine visibility commands (`SetVisibility`) targeting specific Polaris UI framework classes (`WBP_UI_...`). The use of these class names is strictly for interoperability and functionality purposes to enable a clean photo mode; it does not include or redistribute any proprietary game assets or source code.

## License
Distributed under the MIT License. See `LICENSE` for more information.
