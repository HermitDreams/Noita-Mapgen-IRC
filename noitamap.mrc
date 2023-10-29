/noitamap { /* Noita Map Generator by Linkshot, from Hermit Dreams (2023) */

  ; Initialization
  unset %noita.map.*
  /clear @biome_map
  /window -p +b @biome_map 400 400 72 50
  /drawrect -fr @biome_map 0 1 0 0 72 50
  set %noita.map.x 0
  set %noita.map.y 0
  var %noita.map.swapcount 0
  set %noita.map.colour
  var %noita.map.difficulty 6

  set %noita.map.mountain 0
  set %noita.map.pyramid 0
  set %noita.map.smokecave 0
  set %noita.map.thework 0

  ; Colour Swap Method
  if (s isin $1) { 
    /drawpic @biome_map 0 0 "C:\Users\Linkshot\AppData\LocalLow\Nolla_Games_Noita\data\biome_impl\biome_map.png"
    if (!$2) { var %noita.map.swapamount $rand(1,80) }
    else { var %noita.map.swapamount $2 }
    while (%noita.map.swapcount <= %noita.map.swapamount) {
      var %noita.map.input1 $mid($read("C:\Users\Linkshot\Documents\Noita\Biome Map Colours.txt"),3,6)
      var %noita.map.colour1 $mid(%noita.map.input1,5,2) $+ $mid(%noita.map.input1,3,2) $+ $mid(%noita.map.input1,1,2)
      var %noita.map.input2 $mid($read("C:\Users\Linkshot\Documents\Noita\Biome Map Colours.txt"),3,6)
      var %noita.map.colour2 $mid(%noita.map.input2,5,2) $+ $mid(%noita.map.input2,3,2) $+ $mid(%noita.map.input2,1,2)
      /drawreplace -r @biome_map $base(%noita.map.colour1,16,10) $base(%noita.map.colour2,16,10)
      inc %noita.map.swapcount 1
    }
  }

  ; Brand New Map Method
  else {
    if (g isin $1) {
      while (spawn !isin %noita.map.tags) {
        var %noita.map.input $mid($read("C:\Users\Linkshot\Documents\Noita\Biome Map Colours.txt"),3,6)
        set %noita.map.colour $mid(%noita.map.input,5,2) $+ $mid(%noita.map.input,3,2) $+ $mid(%noita.map.input,1,2)
        biometags $1 %noita.map.colour
      }
      if (b isin $1) && (mountain isin %noita.map.tags) { buildmount $1 808020 }
      else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 35 13 }
      ; echo 12 -s BREAKPOINT: Drew %noita.map.tags to spawn. | unset %noita.map.* | halt
    }
    while (%noita.map.y <= 48) {
      while (%noita.map.x <= 70) {
        pickbiome $1
        biometags $1 %noita.map.colour
        if (e isin $1) { var %noita.map.diff 2 }
        while (($right($read(%noita.map.tags),1) > %noita.map.difficulty) && (dif isin %noita.map.tags)) || ((paha isin %noita.map.tags) && (e isin $1)) {
          pickbiome $1
          biometags $1 %noita.map.colour
        }
        if ($getdot(@biome_map,%noita.map.x,%noita.map.y) = 0) || (((g !isin $1) || (%noita.map.x != 35) || (%noita.map.y != 13)) && ($rand(1,25) > 22)) {
          if (b isin $1) && (mountain isin %noita.map.tags) { 
            /buildmount $1 %noita.map.colour
            ; if (mountain isin %noita.map.tags) { /buildmount $1 %noita.map.colour }
            ; elseif (pyramid isin %noita.map.tags) { /buildpyra $1 %noita.map.colour }
            ; elseif (smokecave isin %noita.map.tags) { /buildsmoke $1 %noita.map.colour }
            ; elseif (thework isin %noita.map.tags) { /buildwork $1 %noita.map.colour }
            ; else { echo 4 -s ERROR: Structure not defined! | /halt }
            if (FAILURE isin $result) {
              if (EDGE_TOO_CLOSE isin $result) { echo 4 -s Mountain: $result ( $+ %noita.map.x $+ , $+ %noita.map.y $+ ) $+([,%noita.map.colour,]) }
              elseif (STRUCTURE_COLLISION isin $result) { echo 4 -s Mountain: $result ( $+ %noita.map.mount.xpos $+ , $+ %noita.map.mount.ypos $+ ) $+([,$base($getdot(@biome_map,%noita.map.mount.xpos,%noita.map.mount.ypos),10,16),]) }
              else { echo 4 -s Mountain: $result }
              biometags $1 %noita.map.colour
              while (structure isin %noita.map.tags) {
                pickbiome $1
                biometags $1 %noita.map.colour
              }
            }
            elseif ($result) { echo 9 -s Mountain: $result }
          }
          unset %noita.map.tags
          biometags $1 $base($getdot(@biome_map,%noita.map.x,%noita.map.y),10,16)
          if (structure !isin %noita.map.tags) || (b !isin $1) {
            if (c isin $1) {
              var %noita.map.xlong $rand(1,4)
              var %noita.map.yhigh $rand(1,4)
              if ($calc(%noita.map.xlong + %noita.map.yhigh) = 2) {
                var %noita.map.xlength $rand(2,15)
                var %noita.map.ylength $rand(2,15)
                if ($calc(%noita.map.xlength + %noita.map.x) > 70) { dec %noita.map.xlength $calc(%noita.map.x + %noita.map.xlength - 70) }
                if ($calc(%noita.map.ylength + %noita.map.y) > 48) { dec %noita.map.ylength $calc(%noita.map.y + %noita.map.ylength - 48) }
                var %noita.map.rect.xstart %noita.map.x
                var %noita.map.rect.xend $calc(%noita.map.xlength + %noita.map.x -1)
                var %noita.map.rect.ystart %noita.map.y
                var %noita.map.rect.yend $calc(%noita.map.ylength + %noita.map.y -1)
                if (g isin $1) || (b isin $1) {
                  while (%noita.map.rect.ystart !> %noita.map.rect.yend) {
                    while (%noita.map.rect.xstart !> %noita.map.rect.xend) {
                      unset %noita.map.tags
                      biometags $1 $base($getdot(@biome_map,%noita.map.rect.xstart,%noita.map.rect.ystart),10,16)
                      ; if (structure isin %noita.map.tags) || (spawn isin %noita.map.tags) { echo 12 -s DrawRect: Detected %noita.map.tags at %noita.map.rect.xstart $+ , $+ %noita.map.rect.ystart }
                      if ((b isin $1) && (mountain isin %noita.map.tags)) || ((g isin $1) && (%noita.map.rect.xstart = 35) && (%noita.map.rect.ystart = 13)) { echo 8 -s DrawRect: Detected %noita.map.tags at %noita.map.rect.xstart $+ , $+ %noita.map.rect.ystart and skipped }
                      else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.rect.xstart %noita.map.rect.ystart }
                      inc %noita.map.rect.xstart 1
                    }
                    var %noita.map.rect.xstart %noita.map.x
                    inc %noita.map.rect.ystart 1
                  }
                }
                else { /drawrect -fr @biome_map $base(%noita.map.colour,16,10) 1 %noita.map.x %noita.map.y %noita.map.xlength %noita.map.ylength }
              }
              elseif (%noita.map.xlong = 1) {
                var %noita.map.xlength $rand(3,20)
                if ($calc(%noita.map.xlength + %noita.map.x) > 70) { dec %noita.map.xlength $calc(%noita.map.x + %noita.map.xlength - 70) }
                var %noita.map.line.xstart %noita.map.x
                var %noita.map.line.xend $calc(%noita.map.xlength + %noita.map.x)
                if (g isin $1) || (b isin $1) {
                  while (%noita.map.line.xstart !> %noita.map.line.xend) {
                    unset %noita.map.tags
                    biometags $1 $base($getdot(@biome_map,%noita.map.line.xstart,%noita.map.y),10,16)
                    if ((b isin $1) && (mountain isin %noita.map.tags)) || ((g isin $1) && (%noita.map.line.xstart = 35) && (%noita.map.y = 13)) { echo 8 -s DrawLine: Detected %noita.map.tags at %noita.map.line.xstart $+ , $+ %noita.map.y and skipped }
                    else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.line.xstart %noita.map.y }
                    inc %noita.map.line.xstart 1
                  }
                }
                else { /drawline -r @biome_map $base(%noita.map.colour,16,10) 1 %noita.map.x %noita.map.y $calc(%noita.map.x + %noita.map.xlength - 1) %noita.map.y }
              }
              elseif (%noita.map.yhigh = 1) {
                var %noita.map.ylength $rand(3,48)
                if ($calc(%noita.map.ylength + %noita.map.y) > 48) { dec %noita.map.ylength $calc(%noita.map.y + %noita.map.ylength - 48) }
                var %noita.map.line.ystart %noita.map.y
                var %noita.map.line.yend $calc(%noita.map.ylength + %noita.map.y)
                if (g isin $1) || (b isin $1) {
                  while (%noita.map.line.ystart !> %noita.map.line.yend) {
                    unset %noita.map.tags
                    biometags $1 $base($getdot(@biome_map,%noita.map.x,%noita.map.line.ystart),10,16)
                    if ((b isin $1) && (mountain isin %noita.map.tags)) || ((g isin $1) && (%noita.map.x = 35) && (%noita.map.line.ystart = 13)) { echo 8 -s DrawLine: Detected %noita.map.tags at %noita.map.x $+ , $+ %noita.map.line.ystart and skipped }
                    else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.x %noita.map.line.ystart }
                    inc %noita.map.line.ystart 1
                  }
                }
                else { /drawline -r @biome_map $base(%noita.map.colour,16,10) 1 %noita.map.x %noita.map.y %noita.map.x $calc(%noita.map.y + %noita.map.ylength - 1) }
              }
              else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.x %noita.map.y }
            }
            else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.x %noita.map.y }
          }
        }
        inc %noita.map.x 1
      }
      set %noita.map.x 0
      inc %noita.map.y 1
    }
  }
  if (p isin $1) {
    while (solid !isin %noita.map.tags) {
      pickbiome $1
      biometags $1 %noita.map.colour
      ; echo 4 -s BREAKPOINT: Current biome tag is %noita.map.tags | halt
    }
    /drawline -r @biome_map $base(%noita.map.colour,16,10) 1 0 0 0 48
    /drawline -r @biome_map $base(%noita.map.colour,16,10) 1 69 0 69 48
  }

  ; Finish
  /drawsave -q100 @biome_map biome_map.bmp
  /run biome_map.bmp
}
