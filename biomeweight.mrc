; Weighted Biome Selection Table
/biomeweight {
  set %noita.map.colour $rand(1,3526)
  if (%noita.map.colour <= 2) { set %noita.map.colour ff0000 } ; water ("Water")
  elseif (%noita.map.colour isnum 3-17) { set %noita.map.colour ff4600 } ; snowcastle ("Hiisi Base")
  elseif (%noita.map.colour isnum 18) { set %noita.map.colour 1e6b00 } ; forest (Not used in main map)
  elseif (%noita.map.colour isnum 19-48) { set %noita.map.colour 426c00 } ; wandcave ("Magical Temple")
  elseif (%noita.map.colour isnum 49-81) { set %noita.map.colour 008000 } ; vault ("The Vault")
  elseif (%noita.map.colour isnum 82) { set %noita.map.colour 408000 } ; vault_entrance (Not present in png; structure at the start of "The Vault"
  elseif (%noita.map.colour isnum 83) { set %noita.map.colour 808000 } ; mountain_left (Unused chunk of the starting area mountain)
  elseif (%noita.map.colour isnum 84-118) { set %noita.map.colour a88000 } ; vault_frozen ("Frozen Vault")
  elseif (%noita.map.colour isnum 119) { set %noita.map.colour 808001 } ; mountain_left_2 (Unused chunk of the starting area mountain)
  elseif (%noita.map.colour isnum 120) { set %noita.map.colour 808002 } ; mountain_left_3 (Unused chunk of the starting area mountain)
  elseif (%noita.map.colour isnum 121) { set %noita.map.colour 775b08 } ; boss_limbs_arena (Unused chunk intended for fighting Kolmisilman koipi)
  elseif (%noita.map.colour isnum 122-123) { set %noita.map.colour a4950a } ; funroom (Mushroom Map in the left "Desert" chasm)
  elseif (%noita.map.colour isnum 124-125) { set %noita.map.colour 99a80d } ; boss_arena_top (A chunk of "Laboratory" directly under the Triangle Gate)
  elseif (%noita.map.colour isnum 126-200) { set %noita.map.colour f13311 } ; lake (The section of "Lake" above sea level)
  elseif (%noita.map.colour isnum 201) { set %noita.map.colour f33311 } ; lake_blood (Unused version of "Lake" filled with blood instead of water)
  elseif (%noita.map.colour isnum 202-361) { set %noita.map.colour f15811 } ; lake_deep (The section of "Lake" below sea level)
  elseif (%noita.map.colour isnum 362-365) { set %noita.map.colour fca311 } ; lake_statue (The island on "Lake")
  elseif (%noita.map.colour isnum 366-382) { set %noita.map.colour 454412 } ; excavationsite ("Coal Pits")
  elseif (%noita.map.colour isnum 383-393) { set %noita.map.colour d7e114 } ; mountain_tree (The large tree west of spawn)
  elseif (%noita.map.colour isnum 394-406) { set %noita.map.colour d7ee14 } ; boss_arena ("Laboratory")
  elseif (%noita.map.colour isnum 407-408) { set %noita.map.colour b07c15 } ; essenceroom (The "???" tile containing Essence of Earth)
  elseif (%noita.map.colour isnum 409-410) { set %noita.map.colour b57c15 } ; essenceroom_hell (The "???" tile containing Essence of Water)
  elseif (%noita.map.colour isnum 411-412) { set %noita.map.colour b67c15 } ; essenceroom_alc (The "???" tile containing Essence of Spirits)
  elseif (%noita.map.colour isnum 413-414) { set %noita.map.colour b77c15 } ; mystery_teleport (The "???" tile that takes you to "Tower")
  elseif (%noita.map.colour isnum 415-416) { set %noita.map.colour b87c15 } ; essenceroom_air (The "???" tile containing Essence of Air)
  elseif (%noita.map.colour isnum 417-418) { set %noita.map.colour 5f7f16 } ; pyramid_hallway (The segment of "Pyramid" connected to the outside entrance)
  elseif (%noita.map.colour isnum 419-449) { set %noita.map.colour d57517 } ; snowcave ("Snowy Depths")
  elseif (%noita.map.colour isnum 450-451) { set %noita.map.colour d6a018 } ; snowcave_secret_chamber (The secret room east of "Snowy Depths" with two wands)
  elseif (%noita.map.colour isnum 452-453) { set %noita.map.colour d6d618 } ; snowcastle_hourglass_chamber (The secret eye room west of "Hiisi Base" that contains 8 free spells)
  elseif (%noita.map.colour isnum 454-455) { set %noita.map.colour 623b1f } ; mestari_secret ("Throne Room")
  elseif (%noita.map.colour isnum 456-457) { set %noita.map.colour 643b1f } ; ghost_secret ("Forgotten Cave")
  elseif (%noita.map.colour isnum 458-459) { set %noita.map.colour 604020 } ; mountain_hall (The starting cave)
  elseif (%noita.map.colour isnum 460-461) { set %noita.map.colour 808020 } ; mountain_left_entrance (The spawn area)
  elseif (%noita.map.colour isnum 462) { set %noita.map.colour 604021 } ; mountain_hall_2 (Variant of the starting cave)
  elseif (%noita.map.colour isnum 463) { set %noita.map.colour 604022 } ; mountain_hall_3 (Variant of the starting cave)
  elseif (%noita.map.colour isnum 464) { set %noita.map.colour 604023 } ; mountain_hall_4 (Variant of the starting cave)
  elseif (%noita.map.colour isnum 465-466) { set %noita.map.colour 8a8824 } ; excavationsite_cube_chamber (The meditation cube west of "Coal Pits")
  elseif (%noita.map.colour isnum 467) { set %noita.map.colour 10c02d } ; hills_flat (Variant of grassy hills not present in png)
  elseif (%noita.map.colour isnum 468-469) { set %noita.map.colour d1992e } ; gourd_room (The hole in the wall west of "Cloudscape")
  elseif (%noita.map.colour isnum 470-471) { set %noita.map.colour c14630 } ; watercave (The dark maze between "Ancient Laboratory" and "Collapsed Mines")
  elseif (%noita.map.colour isnum 472-473) { set %noita.map.colour 556632 } ; rock_room (The "???" tile containing the Kuulokivi)
  elseif (%noita.map.colour isnum 474-486) { set %noita.map.colour 11e333 } ; hills2 (A patch of empty space above the eastern "Gold" room)
  elseif (%noita.map.colour isnum 487-488) { set %noita.map.colour 244d36 } ; dragoncave ("Dragoncave")
  elseif (%noita.map.colour isnum 489-690) { set %noita.map.colour 17d536 } ; hills (The overworld area between "Snowy Wasteland" and "Desert")
  elseif (%noita.map.colour isnum 691-757) { set %noita.map.colour c9d536 } ; clouds ("Cloudscape")
  elseif (%noita.map.colour isnum 758-780) { set %noita.map.colour 005c37 } ; rainforest_dark ("Lukki Lair")
  elseif (%noita.map.colour isnum 781) { set %noita.map.colour 1a4039 } ; niilo_testroom (A test room resembling "Mines")
  elseif (%noita.map.colour isnum 782) { set %noita.map.colour 1b4039 } ; niilo_testroom_b (A test room resembling "Coal Pits")
  elseif (%noita.map.colour isnum 783) { set %noita.map.colour 1c4039 } ; niilo_testroom_c (A test room resembling "Snowy Depths")
  elseif (%noita.map.colour isnum 784) { set %noita.map.colour 1d4039 } ; niilo_testroom_d (A test room resembling "Hiisi Base")
  elseif (%noita.map.colour isnum 785-786) { set %noita.map.colour 60a739 } ; gun_room (The "???" tile east of "Power Plant")
  elseif (%noita.map.colour isnum 787-854) { set %noita.map.colour 0a0f3c } ; the_end ("The Work": Hell)
  elseif (%noita.map.colour isnum 855-1796) { set %noita.map.colour 3d3d3d } ; solid_wall (Extremely Dense Rock boundary)
  elseif (%noita.map.colour isnum 1797-1800) { set %noita.map.colour 373e3d } ; solid_wall_tower_1 (The first floor of "Tower")
  elseif (%noita.map.colour isnum 1801-1804) { set %noita.map.colour 383e3d } ; solid_wall_tower_2 (The second floor of "Tower")
  elseif (%noita.map.colour isnum 1805-1808) { set %noita.map.colour 393e3d } ; solid_wall_tower_3 (The third floor of "Tower")
  elseif (%noita.map.colour isnum 1809-1812) { set %noita.map.colour 3a3e3d } ; solid_wall_tower_4 (The fourth floor of "Tower")
  elseif (%noita.map.colour isnum 1813-1816) { set %noita.map.colour 3b3e3d } ; solid_wall_tower_5 (The fifth floor of "Tower")
  elseif (%noita.map.colour isnum 1817-1820) { set %noita.map.colour 3c3e3d } ; solid_wall_tower_6 (The sixth floor of "Tower")
  elseif (%noita.map.colour isnum 1821-1824) { set %noita.map.colour 3d3e3d } ; solid_wall_tower_7 (The seventh floor of "Tower")
  elseif (%noita.map.colour isnum 1825-1828) { set %noita.map.colour 3e3e3d } ; solid_wall_tower_8 (The eighth floor of "Tower")
  elseif (%noita.map.colour isnum 1829-1832) { set %noita.map.colour 3f3e3d } ; solid_wall_tower_9 (The final floor of "Tower")
  elseif (%noita.map.colour isnum 1833-1835) { set %noita.map.colour 403e3d } ; hills (The top corners of "Tower")
  elseif (%noita.map.colour isnum 1836-1837) { set %noita.map.colour 413e3d } ; solid_wall_tower_10 (The reward at the top of "Tower")
  elseif (%noita.map.colour isnum 1838-1846) { set %noita.map.colour 3d5a3d } ; lavalake (The large pit of lava containing Orb 3: Nuke)
  elseif (%noita.map.colour isnum 1847-1851) { set %noita.map.colour 4f5a3d } ; lavalake_pit (The vertical shaft connecting "Mines" and "Snowy Depths")
  elseif (%noita.map.colour isnum 1852) { set %noita.map.colour 505a3d } ; smokecave_right (The east chunk of an unused tunnel filled with smoke)
  elseif (%noita.map.colour isnum 1853) { set %noita.map.colour 515a3d } ; smokecave_middle (The center chunk of an unused tunnel filled with smoke)
  elseif (%noita.map.colour isnum 1854) { set %noita.map.colour 525a3d } ; smokecave_left (The west chunk of an unused tunnel filled with smoke)
  elseif (%noita.map.colour isnum 1855) { set %noita.map.colour 5b5a3d } ; sandroom (An unused cave filled with sand)
  elseif (%noita.map.colour isnum 1856) { set %noita.map.colour b25a3d } ; shop_room (An unused variant of the "Holy Mountain" shop)
  elseif (%noita.map.colour isnum 1857-2012) { set %noita.map.colour 3e3d3f } ; solid_wall_tower (Cursed Rock boundary)
  elseif (%noita.map.colour isnum 2013) { set %noita.map.colour d1553f } ; greed_room (An unused room that I haven't checked yet)
  elseif (%noita.map.colour isnum 2014-2015) { set %noita.map.colour 808040 } ; mountain_right (The east wall of the starting mountain)
  elseif (%noita.map.colour isnum 2016-2017) { set %noita.map.colour d61841 } ; lavalake_racing (KARL Racetrack)
  elseif (%noita.map.colour isnum 2018) { set %noita.map.colour 808041 } ; mountain_right_entrance (A variant of the starting mountain)
  elseif (%noita.map.colour isnum 2019-2023) { set %noita.map.colour 4d2442 } ; solid_wall_hidden_cavern (A pocket of Extremely Dense Rock containing a pile of gold)
  elseif (%noita.map.colour isnum 2024) { set %noita.map.colour 808042 } ; mountain_right_entrance_2 (A variant of the starting mountain)
  elseif (%noita.map.colour isnum 2025) { set %noita.map.colour 808043 } ; mountain_right_2 (A variant of the starting mountain)
  elseif (%noita.map.colour isnum 2026-2039) { set %noita.map.colour 11e348 } ; empty (The space between the cliffside Jukebox and the Ocarina)
  elseif (%noita.map.colour isnum 2040-2089) { set %noita.map.colour 67524e } ; robobase ("Power Plant")
  elseif (%noita.map.colour isnum 2090-2091) { set %noita.map.colour d7ee50 } ; boss_victoryroom ("The Work": The secret below)
  elseif (%noita.map.colour isnum 2092-2093) { set %noita.map.colour b07c56 } ; moon_room (The "???" tile containing Moon Radar)
  elseif (%noita.map.colour isnum 2094-2095) { set %noita.map.colour ceca57 } ; ocarina (The Ocarina platform)
  elseif (%noita.map.colour isnum 2096-2097) { set %noita.map.colour ceda57 } ; alchemist_secret (The "???" room containing the Dark Chest)
  elseif (%noita.map.colour isnum 2098-2107) { set %noita.map.colour 28965a } ; temple_wall_ending (The segment of "Laboratory" resembling a holy mountain)
  elseif (%noita.map.colour isnum 2108) { set %noita.map.colour 29965a } ; ending_placeholder (Text that says "The end!")
  elseif (%noita.map.colour isnum 2109-2110) { set %noita.map.colour ab8f5f } ; teleroom (The fast travel structure east of "Dragoncave")
  elseif (%noita.map.colour isnum 2111-2112) { set %noita.map.colour 808060 } ; mountain_left_stub (The chunk of the mountain below the spawn area)
  elseif (%noita.map.colour isnum 2113) { set %noita.map.colour 4c4c68 } ; solid_wall_damage (A variant of Cursed Rock boundary)
  elseif (%noita.map.colour isnum 2114) { set %noita.map.colour 4ba06b } ; town_under (Unused Hiisi Village?)
  elseif (%noita.map.colour isnum 2115-2116) { set %noita.map.colour 5ab56d } ; friend_1 (The possible Toveri room near the Cauldron)
  elseif (%noita.map.colour isnum 2117-2118) { set %noita.map.colour 5bb56d } ; friend_2 (The possible Toveri room near the bottom of "Desert")
  elseif (%noita.map.colour isnum 2119-2120) { set %noita.map.colour 5cb56d } ; friend_3 (The possible Toveri room nestled between "Wizards Den", "Snowy Wasteland", the Hourglass Chamber, and Orb 5: Holy Bomb)
  elseif (%noita.map.colour isnum 2121-2122) { set %noita.map.colour 5db56d } ; friend_4 (The possible Toveri room under "Frozen Vault")
  elseif (%noita.map.colour isnum 2123-2124) { set %noita.map.colour 5eb56d } ; friend_5 (The possible Toveri room near "Forgotten Cave")
  elseif (%noita.map.colour isnum 2125-2126) { set %noita.map.colour 5fb56d } ; friend_6 (The possible Toveri room near "Volcanic Lake")
  elseif (%noita.map.colour isnum 2127-2161) { set %noita.map.colour 28cb6d } ; temple_wall (The solid edges of "Holy Mountain")
  elseif (%noita.map.colour isnum 2162) { set %noita.map.colour a2cb6d } ; end_wall (Unused variant of the bottom of "Temple of the Art")
  elseif (%noita.map.colour isnum 2163-2220) { set %noita.map.colour 866172 } ; wizardcave ("Wizards Den")
  elseif (%noita.map.colour isnum 2221-2223) { set %noita.map.colour db5d77 } ; snowcastle_cavern (The hourglasses and shops outside "Hiisi Base")
  elseif (%noita.map.colour isnum 2224-2369) { set %noita.map.colour bda577 } ; winter_caves ("Snowy Chasm")
  elseif (%noita.map.colour isnum 2370-2416) { set %noita.map.colour 426c78 } ; crypt ("Temple of the Art")
  elseif (%noita.map.colour isnum 2417-2420) { set %noita.map.colour 11e37b } ; snowcave_tunnel (The east path leading out of "Snowy Depths")
  elseif (%noita.map.colour isnum 2421-2422) { set %noita.map.colour 694180 } ; wizardcave_entrance (Triangle Gate)
  elseif (%noita.map.colour isnum 2423-2436) { set %noita.map.colour 008080 } ; rainforest (The top half of "Underground Jungle")
  elseif (%noita.map.colour isnum 2437-2445) { set %noita.map.colour 4ba089 } ; liquidcave ("Ancient Laboratory")
  elseif (%noita.map.colour isnum 2446-2452) { set %noita.map.colour 4ccb93 } ; temple_altar (The shop portion of "Holy Mountain")
  elseif (%noita.map.colour isnum 2453-2459) { set %noita.map.colour 4dcb93 } ; temple_altar_left (The landing area of "Holy Mountain")
  elseif (%noita.map.colour isnum 2460-2463) { set %noita.map.colour 4ecb93 } ; temple_altar_right (The generic exit of "Holy Mountain")
  elseif (%noita.map.colour isnum 2464) { set %noita.map.colour 4fcb93 } ; temple_altar_right_snowcave (Unused exit of "Holy Mountain")
  elseif (%noita.map.colour isnum 2465-2468) { set %noita.map.colour 5acb93 } ; temple_altar_right_snowcastle (The decorative exit of "Holy Mountain")
  elseif (%noita.map.colour isnum 2469) { set %noita.map.colour 5ccb93 } ; temple_altar_secret (Unused chunk of "Holy Mountain")
  elseif (%noita.map.colour isnum 2470-2478) { set %noita.map.colour 117f96 } ; pyramid (The inside of "Pyramid")
  elseif (%noita.map.colour isnum 2479-2480) { set %noita.map.colour 5f7f96 } ; pyramid_entrance (The west gate of "Pyramid")
  elseif (%noita.map.colour isnum 2481-2483) { set %noita.map.colour 5f8f96 } ; pyramid_left (The west edges of "Pyramid")
  elseif (%noita.map.colour isnum 2484-2487) { set %noita.map.colour 968f96 } ; pyramid_right (The east edges of "Pyramid")
  elseif (%noita.map.colour isnum 2488) { set %noita.map.colour 4ccb99 } ; temple_altar_empty (A broken "Holy Mountain" shop)
  elseif (%noita.map.colour isnum 2489) { set %noita.map.colour 4dcb99 } ; temple_altar_left_empty (A broken "Holy Mountain" entrance)
  elseif (%noita.map.colour isnum 2490) { set %noita.map.colour 4ecb99 } ; temple_altar_right_empty (A broken "Holy Mountain" exit)
  elseif (%noita.map.colour isnum 2491) { set %noita.map.colour 4fcb99 } ; temple_altar_right_snowcave_empty (A broken entrance to "Snowy Depths")
  elseif (%noita.map.colour isnum 2492) { set %noita.map.colour 5acb99 } ; temple_altar_right_snowcastle_empty (A broken entrance to "Hiisi Base")
  elseif (%noita.map.colour isnum 2493) { set %noita.map.colour 426c9c } ; magic_gate (Unused wall)
  elseif (%noita.map.colour isnum 2494-2495) { set %noita.map.colour 3d899d } ; roboroom (Segment of "Power Plant" housing Kolmisilman silma)
  elseif (%noita.map.colour isnum 2496-2497) { set %noita.map.colour d1999d } ; song_room (The "???" tile containing the Coral Chest)
  elseif (%noita.map.colour isnum 2498-2499) { set %noita.map.colour 02439e } ; robot_egg (The End of Everything chamber)
  elseif (%noita.map.colour isnum 2500-2513) { set %noita.map.colour 0084a0 } ; rainforest_open (The bottom half of "Underground Jungle")
  elseif (%noita.map.colour isnum 2514-2574) { set %noita.map.colour ff61a8 } ; fungiforest ("Overgrown Caverns")
  elseif (%noita.map.colour isnum 2575-2576) { set %noita.map.colour 1181ad } ; bridge (The bridge in "Snowy Wasteland")
  elseif (%noita.map.colour isnum 2577-2585) { set %noita.map.colour 28a9b8 } ; solid_wall_temple (The brickwork surrounding "The Work": The secret below)
  elseif (%noita.map.colour isnum 2586-2587) { set %noita.map.colour 45a3ba } ; secret_lab ("Abandoned Alchemist Laboratory")
  elseif (%noita.map.colour isnum 2588) { set %noita.map.colour 2000c0 } ; secret_entrance (A thin unused wall)
  elseif (%noita.map.colour isnum 2589) { set %noita.map.colour 2020c0 } ; secret_altar (Unused boss's arena)
  elseif (%noita.map.colour isnum 2590-2591) { set %noita.map.colour 8080c0 } ; mountain_top (The icecap on the starting mountain)
  elseif (%noita.map.colour isnum 2592-2593) { set %noita.map.colour 8280c0 } ; mountain_floating_island (Mountain Altar: The secret above. Contains Orb 1: Sea of Lava)
  elseif (%noita.map.colour isnum 2594-2595) { set %noita.map.colour 5f8fc8 } ; pyramid_top (The top of "Pyramid" containing Orb 0: Thundercloud)
  elseif (%noita.map.colour isnum 2596-2963) { set %noita.map.colour 4499cc } ; desert ("Desert")
  elseif (%noita.map.colour isnum 2964-2979) { set %noita.map.colour f0e6d3 } ; the_sky ("The Work": Heaven)
  elseif (%noita.map.colour isnum 2980-2982) { set %noita.map.colour 1765d5 } ; coalmine_alt ("Collapsed Mines")
  elseif (%noita.map.colour isnum 2983-2991) { set %noita.map.colour 1779d5 } ; coalmine ("Mines")
  elseif (%noita.map.colour isnum 2992-3303) { set %noita.map.colour e3d8d6 } ; winter ("Snowy Wasteland")
  elseif (%noita.map.colour isnum 3304-3305) { set %noita.map.colour 8080e0 } ; mountain_right_stub (The east portion of the starting mountain buried in the ground)
  elseif (%noita.map.colour isnum 3306-3307) { set %noita.map.colour 327ee1 } ; null_room (The "???" room containing the Altar of Nullification)
  elseif (%noita.map.colour isnum 3308-3379) { set %noita.map.colour 32cde1 } ; sandcave ("Sandcave")
  elseif (%noita.map.colour isnum 3380-3387) { set %noita.map.colour f061e8 } ; fungicave ("Fungal Cavern")
  elseif (%noita.map.colour isnum 3388-3389) { set %noita.map.colour 00a5eb } ; scale (The sun scale in "Desert")
  elseif (%noita.map.colour isnum 3390-3391) { set %noita.map.colour 17d5f0 } ; roadblock (The tile at the top of the tree that spawns Happonuljaska)
  elseif (%noita.map.colour isnum 3392) { set %noita.map.colour adcff6 } ; laboratory (The Spell Lab)
  elseif (%noita.map.colour isnum 3393-3401) { set %noita.map.colour 8dcff7 } ; mountain_lake (The pond clearing east of the starting mountain)
  elseif (%noita.map.colour isnum 3402) { set %noita.map.colour ff00ff } ; null (Unused blank space)
  elseif (%noita.map.colour isnum 3403-3485) { set %noita.map.colour 026aff } ; lava (The depths of "Volcanic Lake")
  elseif (%noita.map.colour isnum 3486) { set %noita.map.colour 8080ff } ; mountain_center (Variant of the Mountain Hall)
  elseif (%noita.map.colour isnum 3487-3503) { set %noita.map.colour 17a7ff } ; lava_90percent (The surface of "Volcanic Lake")
  elseif (%noita.map.colour isnum 3504) { set %noita.map.colour 00d1ff } ; orbroom_00 (Unused "Orb Room" for Orb 0: Thundercloud)
  elseif (%noita.map.colour isnum 3505) { set %noita.map.colour 01d1ff } ; orbroom_01 (Unused "Orb Room" for Orb 1: Sea of Lava)
  elseif (%noita.map.colour isnum 3506-3507) { set %noita.map.colour 02d1ff } ; orbroom_02 ("Orb Room" for Orb 2: Summon Tentacle)
  elseif (%noita.map.colour isnum 3508) { set %noita.map.colour 03d1ff } ; orbroom_03 (Unused "Orb Room" for Orb 3: Nuke)
  elseif (%noita.map.colour isnum 3509-3510) { set %noita.map.colour 04d1ff } ; orbroom_04 ("Orb Room" for Orb 4: Necromancy)
  elseif (%noita.map.colour isnum 3511-3512) { set %noita.map.colour 05d1ff } ; orbroom_05 ("Orb Room" for Orb 5: Holy Bomb)
  elseif (%noita.map.colour isnum 3513-3514) { set %noita.map.colour 06d1ff } ; orbroom_06 ("Orb Room" for Orb 6: Spiral Shot)
  elseif (%noita.map.colour isnum 3515-3516) { set %noita.map.colour 07d1ff } ; orbroom_07 ("Orb Room" for Orb 7: Earthquake)
  elseif (%noita.map.colour isnum 3517-3518) { set %noita.map.colour 08d1ff } ; orbroom_08 ("Orb Room" for Orb 8: Fireworks)
  elseif (%noita.map.colour isnum 3519-3520) { set %noita.map.colour 09d1ff } ; orbroom_09 ("Orb Room" for Orb 9: Deercoy)
  elseif (%noita.map.colour isnum 3521-3522) { set %noita.map.colour 10d1ff } ; orbroom_10 ("Orb Room" for Orb 10: Cement)
  elseif (%noita.map.colour isnum 3523) { set %noita.map.colour 11d1ff } ; orbroom_11 (Unused "Orb Room" for Orb 11)
  elseif (%noita.map.colour isnum 3524-3526) { set %noita.map.colour 00ffff } ; gold ("Gold")
}

; Total amount of tiles each biome occupies on the map (heaviest first)
/*
941: solid_wall
367: desert
311: winter
201: hills (forest)
159: lake_deep
155: solid_wall_tower
145: winter_caves
82: lava
74: lake
71: sandcave
67: the_end
60: fungiforest
57: wizardcave
49: robobase
46: crypt
34: temple_wall
34: vault_frozen
32: vault
30: snowcave
29: wandcave
22: rainforest_dark
16: excavationsite
16: lava_90percent
15: the_sky
14: snowcastle
13: empty
13: rainforest
13: rainforest_open
12: boss_arena
12: hills2
10: mountain_tree
9: temple_wall_ending
8: coalmine
8: lavalake
8: liquidcave
8: mountain_lake
8: pyramid
8: solid_wall_temple
7: fungicave
6: temple_altar
6: temple_altar_left
4: lavalake_pit
4: solid_wall_hidden_cavern
3: lake_statue
3: pyramid_right
3: snowcave_tunnel
3: solid_wall_tower_1
3: solid_wall_tower_2
3: solid_wall_tower_3
3: solid_wall_tower_4
3: solid_wall_tower_5
3: solid_wall_tower_6
3: solid_wall_tower_7
3: solid_wall_tower_8
3: solid_wall_tower_9
3: temple_altar_right
3: temple_altar_right_snowcastle
2: coalmine_alt
2: gold
2: hills (tower)
2: pyramid_left
2: snowcastle_cavern
1: alchemist_secret
1: boss_arena_top
1: boss_victoryroom
1: bridge
1: dragoncave
1: essenceroom
1: essenceroom_air
1: essenceroom_alc
1: essenceroom_hell
1: excavationsite_cube_chamber
1: friend_1
1: friend_2
1: friend_3
1: friend_4
1: friend_5
1: friend_6
1: funroom
1: ghost_secret
1: gourd_room
1: gun_room
1: lavalake_racing
1: mestari_secret
1: moon_room
1: mountain_floating_island
1: mountain_hall
1: mountain_left_entrance
1: mountain_left_stub
1: mountain_right
1: mountain_right_stub
1: mountain_top
1: mystery_teleport
1: null_room
1: ocarina
1: orbroom_02
1: orbroom_04
1: orbroom_05
1: orbroom_06
1: orbroom_07
1: orbroom_08
1: orbroom_09
1: orbroom_10
1: pyramid_entrance
1: pyramid_hallway
1: pyramid_top
1: roadblock
1: roboroom
1: robot_egg
1: rock_room
1: scale
1: secret_lab
1: snowcastle_hourglass_chamber
1: snowcave_secret_chamber
1: solid_wall_tower_10
1: song_room
1: teleroom
1: water
1: watercave
1: wizardcave_entrance
*/
