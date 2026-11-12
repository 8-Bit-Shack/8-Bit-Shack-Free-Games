  ___         ____  _ _       ____  _                _
 ( _ )       | __ )(_) |_    / ___|| |__   __ _  ___| | __
 / _ \  _____|  _ \| | __|   \___ \| '_ \ / _` |/ __| |/ /
| (_) ||_____| |_) | | |_     ___) | | | | (_| | (__|   <
 \___/       |____/|_|\__|   |____/|_| |_|\__,_|\___|_|\_\

==============================================================================
GAME TITLE : Mad Max GS
GAME NAME  : mad_max_gs
FOLDER     : game_mad_max_gs
==============================================================================

ABOUT
-----
Maze game: collect all the bones on each level while avoiding the enemies, and
keep your lives. Keys are configurable. This is the Apple IIgs version of Mad
Max: the puzzles are the same as the original, but the graphics are improved,
and a sound track and sound effects have been added. Requires an Apple IIgs
with at least 256K of free memory.

FILES
-----
MadMaxGS.po (800K ProDOS disk image, volume MAD.MAX.IIGS; boot it from the 3.5"
drive). source/ has madmax.system.s (the game program, a ProDOS 8 system
file, reconstructed as Merlin 65816 source with generated labels) and the title
and end pictures converted to PNG (title.png, end.png). disk_contents/ has
every file from the disk image, named NAME#TTAAAA (CiderPress style: type and
auxiliary address in hex). The game program is machine code. TITLE.PAK and
END.PAK are the two Super Hi-Res pictures (PackBytes-compressed); SND.A, SND.B
and MUSIC are sound and music data for the Ensoniq chip; KEYS holds the saved
keys. Only part of MADMAX.SYSTEM is code; the rest (level maps, tile graphics,
tables, text and ProDOS parameter blocks) is shown as data. The ProDOS kernel
(PRODOS) is Apple's and has no source.

ATTRIBUTION
-----------
  * Original game "Mad Max": written and programmed by Daniel Henderson (see
    game_mad_max).
  * Apple IIgs version: credited in the game to Dan Henderson & Walter
    Tengler.

THIRD-PARTY SOFTWARE / MATERIAL
-------------------------------
  * The ProDOS operating-system file (PRODOS) on the disk image belongs to
    Apple Computer, Inc.

SOURCE OWNER AND USAGE (RECAP OF THE REPOSITORY README)
-------------------------------------------------------
This game is part of the 8-Bit Shack "Free Games" repository
(https://github.com/8-Bit-Shack/8-Bit-Shack-Free-Games). Source owner: 8-Bit
Shack and its contributors. Copyright (C) 8-Bit Shack and respective
contributors. All rights reserved except as expressly licensed.

Usage (from the repository README): free of charge for personal, educational
and other noncommercial use. You may download and enjoy the games, study the
techniques and source, experiment with and modify them for personal use, and
share the original games for noncommercial purposes subject to the license.

If you distribute a modified version you must: (1) keep the original 8-Bit
Shack copyright and attribution notices and individual contributor credits;
(2) clearly mark your modifications; (3) make the complete corresponding
source available; (4) use the same noncommercial license; (5) never present a
modified version as an official 8-Bit Shack release. Private modifications
need not be published.

Commercial use, resale or incorporation into commercial products is prohibited
without prior written authorization from the copyright holders.

License: 8-Bit Shack Noncommercial Source License, Version 1.0 (see LICENSE.md
at the repo root). It applies only to materials identified as covered by it;
third-party components, artwork, music and other materials may carry separate
licensing, and the third-party items listed above are not relicensed by 8-Bit
Shack.

More: https://www.8bitshack.net
