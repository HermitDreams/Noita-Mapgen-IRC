/buildmount {
  unset %noita.map.tags
  if (g isin $1) && (%noita.map.x = 0) && (%noita.map.y = 0) {
    var %noita.map.x 35
    var %noita.map.y 13
  }
  ; echo 12 -s BREAKPOINT: Mountain Tile is $2
  ; echo 12 -s BREAKPOINT: Current position is %noita.map.x $+ , $+ %noita.map.y | unset %noita.map.* | halt
  echo 8 -s DEBUG: Building Mountain ( $+ %noita.map.x $+ , $+ %noita.map.y $+ )
  var %noita.map.mount.size 6
  var %noita.map.mount.count 1
  ; echo 12 -s BREAKPOINT: Second word is currently $2 | unset %noita.map.* | halt
  if (($2 isnum 808000-808002) || ($2 = 808020)) && (%noita.map.x isnum 1-66) && (%noita.map.y isnum 2-45) {
    echo 8 -s Mountain: Detected Left Piece
    set %noita.map.mount.xpos $calc(%noita.map.x +1)
    set %noita.map.mount.ypos $calc(%noita.map.y -1)
  }
  elseif (($2 isnum 604020-604023) || ($2 = 8080ff)) && (%noita.map.x isnum 2-67) && (%noita.map.y isnum 2-45) {
    echo 8 -s Mountain: Detected Center Piece
    set %noita.map.mount.xpos %noita.map.x
    set %noita.map.mount.ypos $calc(%noita.map.y -1)
  }
  elseif ($2 isnum 808040-808043) && (%noita.map.x isnum 3-68) && (%noita.map.y isnum 2-45) {
    echo 8 -s Mountain: Detected Right Piece
    set %noita.map.mount.xpos $calc(%noita.map.x -1)
    set %noita.map.mount.ypos $calc(%noita.map.y -1)
  }
  elseif ($2 = 808060) && (%noita.map.x isnum 0-65) && (%noita.map.y isnum 3-46) {
    echo 8 -s Mountain: Detected Left Stub
    set %noita.map.mount.xpos $calc(%noita.map.x +2)
    set %noita.map.mount.ypos $calc(%noita.map.y -2)
  }
  elseif ($2 = 8080c0) && (%noita.map.x isnum 2-67) && (%noita.map.y isnum 1-44) { 
    echo 8 -s Mountain: Detected Top Piece
    set %noita.map.mount.xpos %noita.map.x
    set %noita.map.mount.ypos %noita.map.y
  }
  elseif ($2 = 8080e0) && (%noita.map.x isnum 4-69) && (%noita.map.y isnum 3-46) {
    echo 8 -s Mountain: Detected Right Stub
    set %noita.map.mount.xpos $calc(%noita.map.x -2)
    set %noita.map.mount.ypos $calc(%noita.map.y -2)
  }
  else { return FAILURE_EDGE_TOO_CLOSE }
  while (%noita.map.mount.count !> %noita.map.mount.size) {
    biometags $1 $base($getdot(@biome_map,%noita.map.mount.xpos,%noita.map.mount.ypos),10,16)
    echo 12 -s Mountain: Found tags %noita.map.tags on %noita.map.mount.xpos $+ , $+ %noita.map.mount.ypos
    if (structure isin %noita.map.tags) || (goal isin %noita.map.tags) { return FAILURE_STRUCTURE_COLLISION }
    elseif (g isin $1) && (%noita.map.mount.xpos = 35) && (%noita.map.ypos = 13) && (spawn isin %noita.map.tags) { return FAILURE_SPAWN_COLLISION }
    unset %noita.map.tags
    if (%noita.map.mount.count = 1) {
      inc %noita.map.mount.ypos 1
      dec %noita.map.mount.xpos 1
    }
    elseif (%noita.map.mount.count isnum 2-3) {
      inc %noita.map.mount.xpos 1
    }
    elseif (%noita.map.mount.count = 4) {
      inc %noita.map.mount.ypos 1
      dec %noita.map.mount.xpos 3
    }
    elseif (%noita.map.mount.count = 5) {
      inc %noita.map.mount.xpos 4
    }
    inc %noita.map.mount.count 1
  }
  dec %noita.map.mount.ypos 2
  dec %noita.map.mount.xpos 2
  drawdot -r @biome_map $base(8080c0,16,10) 0 %noita.map.mount.xpos %noita.map.mount.ypos
  inc %noita.map.mount.ypos 1
  dec %noita.map.mount.xpos 1
  drawdot -r @biome_map $base(808020,16,10) 0 %noita.map.mount.xpos %noita.map.mount.ypos
  inc %noita.map.mount.xpos 1
  drawdot -r @biome_map $base(604020,16,10) 0 %noita.map.mount.xpos %noita.map.mount.ypos
  inc %noita.map.mount.xpos 1
  drawdot -r @biome_map $base(808040,16,10) 0 %noita.map.mount.xpos %noita.map.mount.ypos
  inc %noita.map.mount.ypos 1
  dec %noita.map.mount.xpos 3
  drawdot -r @biome_map $base(808060,16,10) 0 %noita.map.mount.xpos %noita.map.mount.ypos
  inc %noita.map.mount.xpos 4
  drawdot -r @biome_map $base(8080e0,16,10) 0 %noita.map.mount.xpos %noita.map.mount.ypos
  inc %noita.map.mountain 1
  return BUILT_MOUNTAIN
}
