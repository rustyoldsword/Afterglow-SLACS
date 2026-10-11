# Afterglow - SLACS 2 SCO for SexLab P+ 3BA and UBE

Patch of SLACS 2 SCO for SexLab P+ with 3BA and UBE overlay support. This repository holds the
patch tooling and the changed Papyrus sources; the original SLACS 2 SCO files and textures are
not included.

Mod page: https://dwemermods.com/mods/4264

## Contents

| Path | Contents |
|---|---|
| `Source/Scripts/SLPPlusUBECum.psc` | New: UBE detection, overlay slot handling, console commands |
| `Source/Scripts/SLACS_*.psc`, `Dirty_BathingQuest.psc` | SLACS scripts after `slacs_patch.py` |
| `Source/Scripts/sslActorLibrary.patched.pas` | Patched SexLab P+ `sslActorLibrary` (Champollion assembly) |
| `Source/Scripts/stubs/` | SexLab P+ / VRIK stubs for compiling; never shipped |
| `Source/slacs_patch.py` | Applies the SexLab P+ fixes to the original SLACS SCO sources |
| `Source/strip_overrides.py` | Rebuilds `SLACS_2_Plus_SCO.esp` without the 33 stale SexLab.esm MGEF overrides |
| `Source/recolor_hf.py` | Makes the hand/foot overlays visible (white RGB, alpha x3) |
| `SKSE/CustomConsole/SLPPlusUBECum.yaml` | `slpube` console commands (`status`, `native`, `rebuild`, ...) |

## SexLab P+ 2.19 build

`SexLab P+ 2.19/Source/Scripts/` holds the two files that differ in the standalone build for SexLab P+ 2.19.0
(release "Afterglow - SLACS 2 SCO for SexLab P+ 2.19 and UBE"); everything else is the same as above.

| Path | Contents |
|---|---|
| `SexLab P+ 2.19/Source/Scripts/sslActorLibrary.patched.pas` | SexLab P+ 2.19.0 `sslActorLibrary` with the same two inserts (UBE texture path in `BeginOverlay`, SexLab's own painting off in `ApplyOverlay` unless `slpube native 1`). The 2.18.1 copy does not fit 2.19 |
| `SexLab P+ 2.19/Source/Scripts/SLACS_Main.psc` | Fix for cum painted twice per orgasm: a scene with cum tags is painted only from its tags, a scene without them only from SexLab's detection |

## Overlay slots

Cum is painted into RaceMenu overlay nodes starting at slot 7: Body vaginal 7-12, anal 13-18,
breast 19-24, footjob 25-26; Face 7-12; Hands 7-8; Feet 7-8. `skee64.ini` needs `iNumOverlays`
of at least 27 for the body. When every slot in a range is taken the patch logs and skips instead
of painting over a foreign overlay (tattoo). `slpube rebuild 0` disables the player 3D rebuild.

## Usage

```
python Source\slacs_patch.py <SLACS 2 SCO>\Source\Scripts
python Source\strip_overrides.py <SLACS 2 SCO>\SLACS_2_Plus_SCO.esp SLACS_2_Plus_SCO.esp
python Source\recolor_hf.py <SLACS 2 SCO>\Textures <out>\Textures <work dir> <texconv.exe>
```

## Credits

SLACS 2 and SLACS 2 SCO belong to their original authors; SexLab P+ to its team.
