; Biome Categorization
/biometags {
  ; echo 4 -s BREAKPOINT: Current biome colour is %noita.map.colour | halt
  if ($2 = ff0000) { set %noita.map.tags open,dif1 } ; water ("Water")
  elseif ($2 = ff4600) { set %noita.map.tags tunnel,mainpath,dif2 } ; snowcastle ("Hiisi Base")
  elseif ($2 = 1e6b00) { set %noita.map.tags unknown } ; forest (Not used in main map)
  elseif ($2 = 426c00) { set %noita.map.tags tunnel,rarepath,dif4 } ; wandcave ("Magical Temple")
  elseif ($2 = 008000) { set %noita.map.tags tunnel,mainpath,dif3 } ; vault ("The Vault")
  elseif ($2 = 408000) { set %noita.map.tags tunnel,dif3 } ; vault_entrance (Not present in png; structure at the start of "The Vault"
  elseif ($2 = 808000) { set %noita.map.tags structure,mountain,dif0 } ; mountain_left (Unused chunk of the starting area mountain)
  elseif ($2 = a88000) { set %noita.map.tags tunnel,rarepath,dif5 } ; vault_frozen ("Frozen Vault")
  elseif ($2 = 808001) { set %noita.map.tags structure,mountain,dif0 } ; mountain_left_2 (Unused chunk of the starting area mountain)
  elseif ($2 = 808002) { set %noita.map.tags structure,mountain,dif0 } ; mountain_left_3 (Unused chunk of the starting area mountain)
  elseif ($2 = 775b08) { set %noita.map.tags tunnel,dif0 } ; boss_limbs_arena (Unused chunk intended for fighting Kolmisilman koipi)
  elseif ($2 = a4950a) { set %noita.map.tags tunnel,secret,dif0 } ; funroom (Mushroom Map in the left "Desert" chasm)
  elseif ($2 = 99a80d) { set %noita.map.tags solid1,dif0 } ; boss_arena_top (A chunk of "Laboratory" directly under the Triangle Gate)
  elseif ($2 = f13311) { set %noita.map.tags open,dif0 } ; lake (The section of "Lake" above sea level)
  elseif ($2 = f33311) { set %noita.map.tags open,secret,dif1 } ; lake_blood (Unused version of "Lake" filled with blood instead of water)
  elseif ($2 = f15811) { set %noita.map.tags open,dif2 } ; lake_deep (The section of "Lake" below sea level)
  elseif ($2 = fca311) { set %noita.map.tags unknown } ; lake_statue (The island on "Lake")
  elseif ($2 = 454412) { set %noita.map.tags tunnel,mainpath,dif1 } ; excavationsite ("Coal Pits")
  elseif ($2 = d7e114) { set %noita.map.tags unknown } ; mountain_tree (The large tree west of spawn)
  elseif ($2 = d7ee14) { set %noita.map.tags unknown } ; boss_arena ("Laboratory")
  elseif ($2 = b07c15) { set %noita.map.tags open,secret,item,dif1 } ; essenceroom (The "???" tile containing Essence of Earth)
  elseif ($2 = b57c15) { set %noita.map.tags open,secret,item,dif4 } ; essenceroom_hell (The "???" tile containing Essence of Water)
  elseif ($2 = b67c15) { set %noita.map.tags open,secret,item,dif2 } ; essenceroom_alc (The "???" tile containing Essence of Spirits)
  elseif ($2 = b77c15) { set %noita.map.tags open,secret,dif4 } ; mystery_teleport (The "???" tile that takes you to "Tower")
  elseif ($2 = b87c15) { set %noita.map.tags open,secret,item,dif5 } ; essenceroom_air (The "???" tile containing Essence of Air)
  elseif ($2 = 5f7f16) { set %noita.map.tags solid1,bottomright,structure,spawn,pyramid,dif1 } ; pyramid_hallway (The segment of "Pyramid" connected to the outside entrance)
  elseif ($2 = d57517) { set %noita.map.tags tunnel,mainpath,dif2 } ; snowcave ("Snowy Depths")
  elseif ($2 = d6a018) { set %noita.map.tags solid1,secret,item,dif0 } ; snowcave_secret_chamber (The secret room east of "Snowy Depths" with two wands)
  elseif ($2 = d6d618) { set %noita.map.tags solid2,secret,item,dif0 } ; snowcastle_hourglass_chamber (The secret eye room west of "Hiisi Base" that contains 8 free spells)
  elseif ($2 = 623b1f) { set %noita.map.tags solid3,bottom,boss,dif5 } ; mestari_secret ("Throne Room")
  elseif ($2 = 643b1f) { set %noita.map.tags solid3,bottom,boss,paha } ; ghost_secret ("Forgotten Cave")
  elseif ($2 = 604020) { set %noita.map.tags structure,mountain,dif0 } ; mountain_hall (The starting cave)
  elseif ($2 = 808020) { set %noita.map.tags structure,mountain,spawn,dif0 } ; mountain_left_entrance (The spawn area)
  elseif ($2 = 604021) { set %noita.map.tags structure,mountain,dif0 } ; mountain_hall_2 (Variant of the starting cave)
  elseif ($2 = 604022) { set %noita.map.tags structure,mountain,dif0 } ; mountain_hall_3 (Variant of the starting cave)
  elseif ($2 = 604023) { set %noita.map.tags structure,mountain,dif0 } ; mountain_hall_4 (Variant of the starting cave)
  elseif ($2 = 8a8824) { set %noita.map.tags solid3,secret,item,dif0 } ; excavationsite_cube_chamber (The meditation cube west of "Coal Pits")
  elseif ($2 = 10c02d) { set %noita.map.tags depth,dif0 } ; hills_flat (Variant of grassy hills not present in png)
  elseif ($2 = d1992e) { set %noita.map.tags secret,item,dif0 } ; gourd_room (The hole in the wall west of "Cloudscape")
  elseif ($2 = c14630) { set %noita.map.tags solid1,vertical,dif3 } ; watercave (The dark maze between "Ancient Laboratory" and "Collapsed Mines")
  elseif ($2 = 556632) { set %noita.map.tags open,secret,dif4 } ; rock_room (The "???" tile containing the Kuulokivi)
  elseif ($2 = 11e333) { set %noita.map.tags depth,dif0 } ; hills2 (A patch of empty space above the eastern "Gold" room)
  elseif ($2 = 244d36) { set %noita.map.tags solid4,enterwest,boss,dif3 } ; dragoncave ("Dragoncave")
  elseif ($2 = 17d536) { set %noita.map.tags depth,spawn,dif0 } ; hills (The overworld area between "Snowy Wasteland" and "Desert")
  elseif ($2 = c9d536) { set %noita.map.tags tunnel,rarepath,dif6 } ; clouds ("Cloudscape")
  elseif ($2 = 005c37) { set %noita.map.tags tunnel,rarepath,dif6 } ; rainforest_dark ("Lukki Lair")
  elseif ($2 = 1a4039) { set %noita.map.tags solid1,bottomleft,spawn,dif0 } ; niilo_testroom (A test room resembling "Mines")
  elseif ($2 = 1b4039) { set %noita.map.tags solid1,vertical,spawn,dif0 } ; niilo_testroom_b (A test room resembling "Coal Pits")
  elseif ($2 = 1c4039) { set %noita.map.tags solid1,entereast,spawn,dif0 } ; niilo_testroom_c (A test room resembling "Snowy Depths")
  elseif ($2 = 1d4039) { set %noita.map.tags solid2,dif0 } ; niilo_testroom_d (A test room resembling "Hiisi Base")
  elseif ($2 = 60a739) { set %noita.map.tags open,secret,item,dif1 } ; gun_room (The "???" tile east of "Power Plant")
  elseif ($2 = 0a0f3c) { set %noita.map.tags tunnel,rarepath,dif5 } ; the_end ("The Work": Hell)
  elseif ($2 = 3d3d3d) { set %noita.map.tags solid4,dif0 } ; solid_wall (Extremely Dense Rock boundary)
  elseif ($2 = 373e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_1 (The first floor of "Tower")
  elseif ($2 = 383e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_2 (The second floor of "Tower")
  elseif ($2 = 393e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_3 (The third floor of "Tower")
  elseif ($2 = 3a3e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_4 (The fourth floor of "Tower")
  elseif ($2 = 3b3e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_5 (The fifth floor of "Tower")
  elseif ($2 = 3c3e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_6 (The sixth floor of "Tower")
  elseif ($2 = 3d3e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_7 (The seventh floor of "Tower")
  elseif ($2 = 3e3e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_8 (The eighth floor of "Tower")
  elseif ($2 = 3f3e3d) { set %noita.map.tags tunnel,tower,dif6 } ; solid_wall_tower_9 (The final floor of "Tower")
  elseif ($2 = 403e3d) { set %noita.map.tags solid1,tower,dif0 } ; hills (The top corners of "Tower")
  elseif ($2 = 413e3d) { set %noita.map.tags open,secret,item,dif0 } ; solid_wall_tower_10 (The reward at the top of "Tower")
  elseif ($2 = 3d5a3d) { set %noita.map.tags tunnel,rarepath,dif3 } ; lavalake (The large pit of lava containing Orb 3: Nuke)
  elseif ($2 = 4f5a3d) { set %noita.map.tags open,dif0 } ; lavalake_pit (The vertical shaft connecting "Mines" and "Snowy Depths")
  elseif ($2 = 505a3d) { set %noita.map.tags structure,smokecave,dif2 } ; smokecave_right (The east chunk of an unused tunnel filled with smoke)
  elseif ($2 = 515a3d) { set %noita.map.tags structure,smokecave,dif2 } ; smokecave_middle (The center chunk of an unused tunnel filled with smoke)
  elseif ($2 = 525a3d) { set %noita.map.tags structure,smokecave,dif2 } ; smokecave_left (The west chunk of an unused tunnel filled with smoke)
  elseif ($2 = 5b5a3d) { set %noita.map.tags solid4,enterwest,secret,dif0 } ; sandroom (An unused cave filled with sand)
  elseif ($2 = b25a3d) { set %noita.map.tags solid3,vertical,secret,dif0 } ; shop_room (An unused variant of the "Holy Mountain" shop)
  elseif ($2 = 3e3d3f) { set %noita.map.tags solid5,dif6 } ; solid_wall_tower (Cursed Rock boundary)
  elseif ($2 = d1553f) { set %noita.map.tags solid3,entereast,secret,item,dif0 } ; greed_room (An unused room that I haven't checked yet)
  elseif ($2 = 808040) { set %noita.map.tags structure,mountain,dif0 } ; mountain_right (The east wall of the starting mountain)
  elseif ($2 = d61841) { set %noita.map.tags solid4,entereast,secret,dif0 } ; lavalake_racing (KARL Racetrack)
  elseif ($2 = 808041) { set %noita.map.tags structure,mountain,spawn,dif0 } ; mountain_right_entrance (A variant of the starting mountain)
  elseif ($2 = 4d2442) { set %noita.map.tags solid4,secret,item,dif0 } ; solid_wall_hidden_cavern (A pocket of Extremely Dense Rock containing a pile of gold)
  elseif ($2 = 808042) { set %noita.map.tags structure,mountain,dif0 } ; mountain_right_entrance_2 (A variant of the starting mountain)
  elseif ($2 = 808043) { set %noita.map.tags structure,mountain,dif0 } ; mountain_right_2 (A variant of the starting mountain)
  elseif ($2 = 11e348) { set %noita.map.tags open,dif0 } ; empty (The space between the cliffside Jukebox and the Ocarina)
  elseif ($2 = 67524e) { set %noita.map.tags tunnel,rarepath,dif6 } ; robobase ("Power Plant")
  elseif ($2 = d7ee50) { set %noita.map.tags structure,thework,goal } ; boss_victoryroom ("The Work": The secret below)
  elseif ($2 = b07c56) { set %noita.map.tags open,secret,item,dif0 } ; moon_room (The "???" tile containing Moon Radar)
  elseif ($2 = ceca57) { set %noita.map.tags open,secret,item,dif0 } ; ocarina (The Ocarina platform)
  elseif ($2 = ceda57) { set %noita.map.tags open,secret,item,dif3 } ; alchemist_secret (The "???" room containing the Dark Chest)
  elseif ($2 = 28965a) { set %noita.map.tags structure,finalrest,dif1 } ; temple_wall_ending (The segment of "Laboratory" resembling a holy mountain)
  elseif ($2 = 29965a) { set %noita.map.tags open,secret,dif0 } ; ending_placeholder (Text that says "The end!")
  elseif ($2 = ab8f5f) { set %noita.map.tags solid4,secret,dif0 } ; teleroom (The fast travel structure east of "Dragoncave")
  elseif ($2 = 808060) { set %noita.map.tags structure,mountain,dif0 } ; mountain_left_stub (The chunk of the mountain below the spawn area)
  elseif ($2 = 4c4c68) { set %noita.map.tags solid5,dif6 } ; solid_wall_damage (A variant of Cursed Rock boundary)
  elseif ($2 = 4ba06b) { set %noita.map.tags tunnel,rarepath,secret,dif2 } ; town_under (Unused Hiisi Village?)
  elseif ($2 = 5ab56d) { set %noita.map.tags solid4,secret,boss,dif5 } ; friend_1 (The possible Toveri room near the Cauldron)
  elseif ($2 = 5bb56d) { set %noita.map.tags solid4,secret,boss,dif5 } ; friend_2 (The possible Toveri room near the bottom of "Desert")
  elseif ($2 = 5cb56d) { set %noita.map.tags soild4,secret,boss,dif5 } ; friend_3 (The possible Toveri room nestled between "Wizards Den", "Snowy Wasteland", the Hourglass Chamber, and Orb 5: Holy Bomb)
  elseif ($2 = 5db56d) { set %noita.map.tags solid4,secret,boss,dif5 } ; friend_4 (The possible Toveri room under "Frozen Vault")
  elseif ($2 = 5eb56d) { set %noita.map.tags solid4,secret,boss,dif5 } ; friend_5 (The possible Toveri room near "Forgotten Cave")
  elseif ($2 = 5fb56d) { set %noita.map.tags solid4,secret,boss,dif5 } ; friend_6 (The possible Toveri room near "Volcanic Lake")
  elseif ($2 = 28cb6d) { set %noita.map.tags solid3,dif2 } ; temple_wall (The solid edges of "Holy Mountain")
  elseif ($2 = a2cb6d) { set %noita.map.tags solid3,dif4 } ; end_wall (Unused variant of the bottom of "Temple of the Art")
  elseif ($2 = 866172) { set %noita.map.tags tunnel,rarepath,dif5 } ; wizardcave ("Wizards Den")
  elseif ($2 = db5d77) { set %noita.map.tags solid4,vertical,item,dif2 } ; snowcastle_cavern (The hourglasses and shops outside "Hiisi Base")
  elseif ($2 = bda577) { set %noita.map.tags tunnel,rarepath,paha } ; winter_caves ("Snowy Chasm")
  elseif ($2 = 426c78) { set %noita.map.tags tunnel,mainpath,dif4 } ; crypt ("Temple of the Art")
  elseif ($2 = 11e37b) { set %noita.map.tags solid4,vertical,dif0 } ; snowcave_tunnel (The east path leading out of "Snowy Depths")
  elseif ($2 = 694180) { set %noita.map.tags solid4,vertical,boss,dif4 } ; wizardcave_entrance (Triangle Gate)
  elseif ($2 = 008080) { set %noita.map.tags tunnel,mainpath,dif3 } ; rainforest (The top half of "Underground Jungle")
  elseif ($2 = 4ba089) { set %noita.map.tags tunnel,rarepath,dif4 } ; liquidcave ("Ancient Laboratory")
  elseif ($2 = 4ccb93) { set %noita.map.tags structure,restarea,dif1 } ; temple_altar (The shop portion of "Holy Mountain")
  elseif ($2 = 4dcb93) { set %noita.map.tags structure,restarea,dif1 } ; temple_altar_left (The landing area of "Holy Mountain")
  elseif ($2 = 4ecb93) { set %noita.map.tags structure,restarea,dif1 } ; temple_altar_right (The generic exit of "Holy Mountain")
  elseif ($2 = 4fcb93) { set %noita.map.tags structure,restarea,dif1 } ; temple_altar_right_snowcave (Unused exit of "Holy Mountain")
  elseif ($2 = 5acb93) { set %noita.map.tags structure,restarea,dif1 } ; temple_altar_right_snowcastle (The decorative exit of "Holy Mountain")
  elseif ($2 = 5ccb93) { set %noita.map.tags structure,restarea,secret,dif1 } ; temple_altar_secret (Unused chunk of "Holy Mountain")
  elseif ($2 = 117f96) { set %noita.map.tags tunnel,rarepath,dif3 } ; pyramid (The inside of "Pyramid")
  elseif ($2 = 5f7f96) { set %noita.map.tags structure,pyramid,dif0 } ; pyramid_entrance (The west gate of "Pyramid")
  elseif ($2 = 5f8f96) { set %noita.map.tags structure,pyramid,dif0 } ; pyramid_left (The west edges of "Pyramid")
  elseif ($2 = 968f96) { set %noita.map.tags structure,pyramid,dif0 } ; pyramid_right (The east edges of "Pyramid")
  elseif ($2 = 4ccb99) { set %noita.map.tags structure,restarea,defunct,dif0 } ; temple_altar_empty (A broken "Holy Mountain" shop)
  elseif ($2 = 4dcb99) { set %noita.map.tags structure,restarea,defunct,dif0 } ; temple_altar_left_empty (A broken "Holy Mountain" entrance)
  elseif ($2 = 4ecb99) { set %noita.map.tags structure,restarea,defunct,dif0 } ; temple_altar_right_empty (A broken "Holy Mountain" exit)
  elseif ($2 = 4fcb99) { set %noita.map.tags structure,restarea,defunct,dif0 } ; temple_altar_right_snowcave_empty (A broken entrance to "Snowy Depths")
  elseif ($2 = 5acb99) { set %noita.map.tags structure,restarea,defunct,dif0 } ; temple_altar_right_snowcastle_empty (A broken entrance to "Hiisi Base")
  elseif ($2 = 426c9c) { set %noita.map.tags solid5,secret,dif0 } ; magic_gate (Unused wall)
  elseif ($2 = 3d899d) { set %noita.map.tags tunnel,boss,dif6 } ; roboroom (Segment of "Power Plant" housing Kolmisilman silma)
  elseif ($2 = d1999d) { set %noita.map.tags open,secret,item,dif3 } ; song_room (The "???" tile containing the Coral Chest)
  elseif ($2 = 02439e) { set %noita.map.tags solid2,secret,item,dif3 } ; robot_egg (The End of Everything chamber)
  elseif ($2 = 0084a0) { set %noita.map.tags tunnel,mainpath,dif3 } ; rainforest_open (The bottom half of "Underground Jungle")
  elseif ($2 = ff61a8) { set %noita.map.tags tunnel,rarepath,dif4 } ; fungiforest ("Overgrown Caverns")
  elseif ($2 = 1181ad) { set %noita.map.tags solid1,horizontal,dif1 } ; bridge (The bridge in "Snowy Wasteland")
  elseif ($2 = 28a9b8) { set %noita.map.tags solid3,structure,thework,dif2 } ; solid_wall_temple (The brickwork surrounding "The Work": The secret below)
  elseif ($2 = 45a3ba) { set %noita.map.tags solid3,bottom,boss,dif3 } ; secret_lab ("Abandoned Alchemist Laboratory")
  elseif ($2 = 2000c0) { set %noita.map.tags solid4,vertical,secret,dif0 } ; secret_entrance (A thin unused wall)
  elseif ($2 = 2020c0) { set %noita.map.tags solid4,enterwest,boss,dif3 } ; secret_altar (Unused boss's arena)
  elseif ($2 = 8080c0) { set %noita.map.tags structure,mountain,dif0 } ; mountain_top (The icecap on the starting mountain)
  elseif ($2 = 8280c0) { set %noita.map.tags depth,goal } ; mountain_floating_island (Mountain Altar: The secret above. Contains Orb 1: Sea of Lava)
  elseif ($2 = 5f8fc8) { set %noita.map.tags solid3,bottom,item,structure,pyramid,dif0 } ; pyramid_top (The top of "Pyramid" containing Orb 0: Thundercloud)
  elseif ($2 = 4499cc) { set %noita.map.tags depth,rarepath,dif2 } ; desert ("Desert")
  elseif ($2 = f0e6d3) { set %noita.map.tags tunnel,rarepath,dif5 } ; the_sky ("The Work": Heaven)
  elseif ($2 = 1765d5) { set %noita.map.tags tunnel,rarepath,dif1 } ; coalmine_alt ("Collapsed Mines")
  elseif ($2 = 1779d5) { set %noita.map.tags tunnel,mainpath,dif1 } ; coalmine ("Mines")
  elseif ($2 = e3d8d6) { set %noita.map.tags depth,rarepath,dif2 } ; winter ("Snowy Wasteland")
  elseif ($2 = 8080e0) { set %noita.map.tags structure,mountain,dif0 } ; mountain_right_stub (The east portion of the starting mountain buried in the ground)
  elseif ($2 = 327ee1) { set %noita.map.tags open,secret,item,dif3 } ; null_room (The "???" room containing the Altar of Nullification)
  elseif ($2 = 32cde1) { set %noita.map.tags tunnel,rarepath,dif3 } ; sandcave ("Sandcave")
  elseif ($2 = f061e8) { set %noita.map.tags tunnel,rarepath,dif2 } ; fungicave ("Fungal Cavern")
  elseif ($2 = 00a5eb) { set %noita.map.tags depth,secret,dif2 } ; scale (The sun scale in "Desert")
  elseif ($2 = 17d5f0) { set %noita.map.tags open,dif2 } ; roadblock (The tile at the top of the tree that spawns Happonuljaska)
  elseif ($2 = adcff6) { set %noita.map.tags solid3,secret,dif0 } ; laboratory (The Spell Lab)
  elseif ($2 = 8dcff7) { set %noita.map.tags solid1,bottom,dif0 } ; mountain_lake (The pond clearing east of the starting mountain)
  elseif ($2 = ff00ff) { set %noita.map.tags open,dif0 } ; null (Unused blank space)
  elseif ($2 = 026aff) { set %noita.map.tags open,dif3 } ; lava (The depths of "Volcanic Lake")
  elseif ($2 = 8080ff) { set %noita.map.tags structure,mountain,dif0 } ; mountain_center (Variant of the Mountain Hall)
  elseif ($2 = 17a7ff) { set %noita.map.tags open,dif3 } ; lava_90percent (The surface of "Volcanic Lake")
  elseif ($2 = 00d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_00 (Unused "Orb Room" for Orb 0: Thundercloud)
  elseif ($2 = 01d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_01 (Unused "Orb Room" for Orb 1: Sea of Lava)
  elseif ($2 = 02d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_02 ("Orb Room" for Orb 2: Summon Tentacle)
  elseif ($2 = 03d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_03 (Unused "Orb Room" for Orb 3: Nuke)
  elseif ($2 = 04d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_04 ("Orb Room" for Orb 4: Necromancy)
  elseif ($2 = 05d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_05 ("Orb Room" for Orb 5: Holy Bomb)
  elseif ($2 = 06d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_06 ("Orb Room" for Orb 6: Spiral Shot)
  elseif ($2 = 07d1ff) { set %noita.map.tags solid3,bottom,secret,item,boss,dif5 } ; orbroom_07 ("Orb Room" for Orb 7: Earthquake)
  elseif ($2 = 08d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_08 ("Orb Room" for Orb 8: Fireworks)
  elseif ($2 = 09d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_09 ("Orb Room" for Orb 9: Deercoy)
  elseif ($2 = 10d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_10 ("Orb Room" for Orb 10: Cement)
  elseif ($2 = 11d1ff) { set %noita.map.tags solid3,bottom,secret,item,dif0 } ; orbroom_11 (Unused "Orb Room" for Orb 11)
  elseif ($2 = 00ffff) { set %noita.map.tags open,secret,item,dif0 } ; gold ("Gold")
}

; Categories and Occupants
/*
MainPath: Biome should connect to spawn and Holy Mountains
+ coalmine
+ crypt
+ excavationsite
+ rainforest
+ rainforest_open
+ snowcastle
+ snowcave
+ vault
RarePath: Biome should only rarely connect to Holy Mountains
+ clouds
+ coalmine_alt
+ desert
+ fungicave
+ fungiforest
+ lavalake
+ liquidcave
+ pyramid
+ rainforest_dark
+ robobase
+ sandcave
+ the_end
+ the_sky
+ town_under
+ vault_frozen
+ wandcave
+ winter
+ winter_caves
+ wizardcave
Tower: Biome is part of the greater biome "Tower"
+ hills (tower)
+ solid_wall_tower_[1-9]
Unknown: Biome has not been tested enough
+ boss_arena
+ forest
+ lake_statue
+ mountain_tree

Item: Biome always contains something beneficial to the player
+ Essence Rooms
+ Orb Rooms
+ alchemist_secret
+ excavationsite_cube_chamber
+ gold
+ gourd_room
+ gun_room
+ moon_room
+ null_room
+ ocarina
+ robot_egg
+ pyramid_top
+ snowcastle_cavern
+ snowcastle_hourglass_chamber
+ snowcave_secret_chamber
+ solid_wall_hidden_cavern
+ solid_wall_tower_10
+ song_room
Secret: Biome should be placed scarcely
+ Essence Rooms
+ Friend Rooms
+ Orb Rooms
+ alchemist_secret
+ ending_placeholder
+ excavationsite_cube_chamber
+ funroom
+ gold
+ gourd_room
+ gun_room
+ laboratory
+ lake_blood
+ lavalake_racing
+ magic_gate
+ moon_room
+ mystery_teleport
+ null_room
+ ocarina
+ robot_egg
+ rock_room
+ sandroom
+ scale
+ secret_entrance
+ snowcastle_hourglass_chamber
+ snowcave_secret_chamber
+ solid_wall_hidden_cavern
+ solid_wall_tower_10
+ song_room
+ teleroom
+ temple_altar_secret
+ town_under

Spawn: Valid biome for 35,13
+ hills (forest)
+ mountain_left_entrance
+ mountain_right_entrance
+ mountain_right_entrance_2
+ niilo_testroom
+ niilo_testroom_b
+ niilo_testroom_c
+ pyramid_hallway
+ temple_altar_left_empty
Boss: Room contains a boss fight
+ Friend Rooms
+ dragoncave
+ ghost_secret
+ mestari_secret
+ orbroom_07
+ roboroom
+ secret_altar
+ secret_lab
+ wizardcave_entrance
Goal: The Sampo can be placed here
+ boss_victoryroom
+ mountain_floating_island

Structures: Biomes that should not be placed on their own and compose a larger area
- FinalRest
+ temple_wall_ending
- Mountain
+ mountain_center
+ mountain_hall
+ mountain_hall_2
+ mountain_hall_3
+ mountain_hall_4
+ mountain_left
+ mountain_left_2
+ mountain_left_3
+ mountain_left_entrance
+ mountain_left_stub
+ mountain_right
+ mountain_right_2
+ mountain_right_entrance
+ mountain_right_entrance_2
+ mountain_right_stub
+ mountain_top
- Pyramid
+ pyramid_entrance
+ pyramid_hallway
+ pyramid_left
+ pyramid_right
+ pyramid_top
- RestArea
+ temple_altar
+ temple_altar_left
+ temple_altar_right
+ temple_altar_secret
+ temple_altar_snowcastle
+ temple_altar_snowcave
- Defunct
+ temple_altar_empty
+ temple_altar_left_empty
+ temple_altar_right_empty
+ temple_altar_snowcastle_empty
+ temple_altar_snowcave_empty
- SmokeCave
+ smokecave_left
+ smokecave_middle
+ smokecave_right
- TheWork
+ boss_victoryroom
+ solid_wall_temple

Hardnesses (solidN): Level of digging capacity expected to traverse this area
- solid1: Player only needs to break through rock at worst
+ Niilo Test Rooms
+ boss_arena_top
+ bridge
+ hills (tower)
+ mountain_lake
+ pyramid_hallway
+ snowcave_secret_chamber
+ watercave
- solid2: Player is expected to cut or melt steel
+ niilo_testroom_d
+ robot_egg
+ snowcastle_hourglass_chamber
- solid3: Brickwork
+ Orb Rooms
+ end_wall
+ excavationsite_cube_chamber
+ greed_room
+ ghost_secret
+ laboratory
+ mestari_secret
+ pyramid_top
+ secret_lab
+ shop_room
+ solid_wall_temple
+ temple_wall
- solid4: Extremely Dense Rock
+ Friend Rooms
+ dragoncave
+ lavalake_racing
+ sandroom
+ secret_altar
+ secret_entrance
+ snowcastle_cavern
+ snowcave_tunnel
+ solid_wall
+ solid_wall_hidden_cavern
+ teleroom
+ wizardcave_entrance
- solid5: Cursed Rock
+ magic_gate
+ solid_wall_damage
+ solid_wall_tower
- bottom: Area is only blocked at the bottom
+ Orb Rooms
+ ghost_secret
+ mestari_secret
+ mountain_lake
+ pyramid_top
+ secret_lab
- bottomleft: Area is free to enter from top and right
+ niilo_testroom
- bottomright: Area is free to enter from top and left
+ pyramid_hallway
- entereast: Area is free to enter from the right only
+ greed_room
+ lavalake_racing
+ niilo_testroom_c
- enterwest: Area is free to enter from the left only
+ dragoncave
+ sandroom
+ secret_altar
- horizontal: Area can be traversed vertically without digging
+ bridge
- vertical: Area can be traversed horizontally without digging
+ niilo_testroom_b
+ secret_entrance
+ shop_room
+ snowcastle_cavern
+ snowcave_tunnel
+ watercave
+ wizardcave_entrance
- tunnel: Area is composed of many varying walls but will connect to each other cleanly
+ Tower Floors 1 to 9
+ boss_limbs_arena
+ coalmine
+ coalmine_alt
+ clouds
+ crypt
+ excavationsite
+ fungicave
+ fungiforest
+ funroom
+ lavalake
+ liquidcave
+ pyramid
+ rainforest
+ rainforest_dark
+ rainforest_open
+ robobase
+ roboroom
+ sandcave
+ snowcastle
+ snowcave
+ the_end
+ the_sky
+ town_under
+ vault
+ vault_entrance
+ vault_frozen
+ wandcave
+ winter_caves
+ wizardcave
- depth: The area is "open" above y=13 and "solid1" below
+ desert
+ hills
+ hills_flat
+ hills2
+ mountain_floating_island
+ scale
+ winter
- open: Area has no walls on the edges
+ Essence Rooms
+ alchemist_secret
+ empty
+ ending_placeholder
+ gold
+ gun_room
+ lake
+ lake_blood
+ lake_deep
+ lava
+ lava_90percent
+ lavalake_pit
+ moon_room
+ mystery_teleport
+ null
+ null_room
+ ocarina
+ roadblock
+ rock_room
+ solid_wall_tower_10
+ song_room
+ water

Difficulties (difN): Level of combat expected from the player to traverse area
- dif0: No threats to the player
+ Structure: Mountain
+ Structure: Pyramid Exterior
+ Structure: Ruined Holy Mountain
+ boss_arena_top
+ boss_limbs_arena
+ empty
+ ending_placeholder
+ excavationsite_cube_chamber
+ funroom
+ gold
+ gourd_room
+ greed_room
+ hills
+ hills_flat
+ hills2
+ laboratory
+ lake
+ lavalake_pit
+ lavalake_racing
+ magic_gate
+ moon_room
+ mountain_lake
+ niilo_testroom
+ niilo_testroom_b
+ niilo_testroom_c
+ niilo_testroom_d
+ null
+ ocarina
+ orbroom_00
+ orbroom_01
+ orbroom_03
+ orbroom_11
+ sandroom
+ secret_entrance
+ shop_room
+ snowcastle_hourglass_chamber
+ snowcave_secret_chamber
+ snowcave_tunnel
+ solid_wall
+ solid_wall_hidden_cavern
+ solid_wall_tower_10
+ teleroom
- dif1: Minor threat to the player. Player is expected to find their first gear here.
+ Structure: Holy Mountain
+ bridge
+ coalmine
+ coalmine_alt
+ essenceroom
+ excavationsite
+ gun_room
+ lake_blood
+ pyramid_hallway
+ water
- dif2: Heightened threat to the player. Player is expected to have geared up by now.
+ Structure: Smoke Cave
+ desert
+ essenceroom_alc
+ fungicave
+ lake_deep
+ roadblock
+ scale
+ snowcastle
+ snowcastle_cavern
+ snowcave
+ solid_wall_temple
+ temple_wall
+ town_under
+ winter
- dif3: Wide variety of threats. Player should have a build started by now.
+ alchemist_secret
+ dragoncave
+ lava
+ lava_90percent
+ lavalake
+ null_room
+ orbroom_04
+ orbroom_05
+ orbroom_09
+ pyramid
+ rainforest
+ rainforest_open
+ robot_egg
+ sandcave
+ secret_altar
+ secret_lab
+ song_room
+ vault
+ vault_entrance
+ watercave
- dif4: Enemies are bulky and deadly. High-level gear available here.
+ crypt
+ end_wall
+ essenceroom_hell
+ fungiforest
+ liquidcave
+ mystery_teleport
+ orbroom_08
+ rock_room
+ wandcave
+ wizardcave_entrance
- dif5: Incredibly bulky enemies and debilitating status effects. The player should be immune or resistant to something by now.
+ essenceroom_air
+ friend_1
+ friend_2
+ friend_3
+ friend_4
+ friend_5
+ friend_6
+ mestari_secret
+ orbroom_02
+ orbroom_07
+ orbroom_10
+ the_end
+ the_sky
+ vault_frozen
+ wizardcave
- dif6: Enemies are vulnerable to only specific damage types. Come in prepared specifically for each biome.
+ clouds
+ orbroom_06
+ rainforest_dark
+ robobase
+ roboroom
+ solid_wall_damage
+ solid_wall_tower
+ solid_wall_tower_1
+ solid_wall_tower_2
+ solid_wall_tower_3
+ solid_wall_tower_4
+ solid_wall_tower_5
+ solid_wall_tower_6
+ solid_wall_tower_7
+ solid_wall_tower_8
+ solid_wall_tower_9
- paha: Player should not be here without the Paha Silma
+ ghost_secret
+ winter_caves
*/
