  ___         ____  _ _       ____  _                _
 ( _ )       | __ )(_) |_    / ___|| |__   __ _  ___| | __
 / _ \  _____|  _ \| | __|   \___ \| '_ \ / _` |/ __| |/ /
| (_) ||_____| |_) | | |_     ___) | | | | (_| | (__|   <
 \___/       |____/|_|\__|   |____/|_| |_|\__,_|\___|_|\_\

==============================================================================
GAME TITLE : The Pudding Strikes Back
GAME NAME  : pudding_xb
FOLDER     : game_pudding_xb
==============================================================================

ABOUT
-----
"The Pudding Strikes Back": a Christmas shoot-em-up for the Apple II. Defend
Santa Claus and his friends against the evil Christmas pudding and other foes
attacking Santa's home planet, from the cockpit of your X-Wing. Aim the
crosshair with the joystick (paddles 0 and 1) and fire with button 0, but
every shot costs one point. Shoot down candy canes, Christmas puddings,
gingerbread men, turkeys and champagne bottles before the 200-unit timer runs
out. Keys: Q quits and saves the high score to disk, R resets the score and
restarts, T pauses. Requires an Apple //e, //c, //c+ or IIgs with a 65C02,
128K RAM and a joystick; a MockingBoard is optional and plays the soundtrack.
On an Apple IIgs you may need to turn on Alternate Display Mode.

FILES
-----
Pudding.po (140K DOS 3.3 disk image, 5.25"; sector order is ProDOS order,
hence the .po extension); Pudding for the Apple II.pdf (the game manual);
Pudding.png (title banner); source/ (see below); disk_contents/ (every file
from the disk image, named NAME#TTAAAA with type and load address in hex).
Inside source/: the HELLO greeting program as Applesoft (.bas.txt), the
machine-code files GAME and LASER as Merlin 6502 source (.s), and the five
full-screen double lo-res pictures (title, three scenes and the pause screen)
converted to PNG. GAME is loaded with BRUN GAME,A$5000 by HELLO, so it is
disassembled at $5000 although its file header says $2000. Only part of GAME
is code; the rest (tables, text, sprite and level data) is shown as data. The
sprite files (CROSS, FIRE, PUDDING, EXPLOSION, GINGER, TURKEY, CANE,
CHAMPAGNE) and SONG are data and have no source.

ATTRIBUTION
-----------
  * Game website and latest disk image: http://pudding.golombeck.eu (per the
    manual).
  * Bug reports: bugs@8bitshack.org.

MUSIC
-----
  * Soundtrack is a Pro Tracker v3 (PT3) module played through a MockingBoard.

THIRD-PARTY SOFTWARE / MATERIAL
-------------------------------
  * PT3 player library by Deater (VMW-Software).
  * DOLORES sprite engine (adapted for this game by removing unused
    functions).
  * Apple DOS 3.3 operating-system files on the disk image belong to Apple
    Computer, Inc.

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
