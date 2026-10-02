; Half-Life 2 (your own copy), Direct3D 9 through DXVK 2.6.2, at the
; console's native 1920x1080. It runs without the Steam client.
;
; Setting it up:
; - Install Half-Life 2 with Steam on your PC (Windows, or Steam under Wine;
;   tested with the 2024-era build that came with The Orange Box). Copy
;   hl2.exe and the bin, platform and hl2 folders from its install folder
;   into C:\Games\HalfLife2 of a prefix of its own on the console
;   (/data/prospero-win/prefixes/half-life-2/drive_c/Games/HalfLife2).
; - Put DXVK 2.6.2's 32-bit DLLs (the release's x32 folder) in that prefix's
;   C:\windows\syswow64. Don't add a dxvk.conf: the default settings are the
;   tested ones.
; - The game starts at its menu. The first map takes about a minute and a
;   half to load on the console.
;
; Needs a prospero-win runtime with Wine patch 0730 (prospero-win #289).
; Without it, loading the first map freezes, and closing the game leaves
; the console stuck on "Closing..." until it is restarted: 32-bit DXVK keeps
; textures in 64 MiB Windows file mappings that older runtimes wrote to the
; console's storage.
[application]
id = half-life-2
name = Half-Life 2
executable = C:\Games\HalfLife2\hl2.exe
working_directory = C:\Games\HalfLife2
arguments = -game hl2 -novid -fullscreen -w 1920 -h 1080
dll_overrides = d3d8,d3d9,d3d10core,d3d11,dxgi=n
prefix = half-life-2
runtime = wine-wow64
architecture = pe32
graphics = dxvk

[display]
desktop = 1920x1080

[input]
mode = xinput
