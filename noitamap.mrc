/noitamap { /* Noita Map Generator by Linkshot, from Hermit Dreams (2023) */

  ; Initialization
  /clear @biome_map
  /window -p +b @biome_map 400 400 72 50
  /drawrect -fr @biome_map 0 1 0 0 72 50
  var %noita.map.x 0
  var %noita.map.y 0
  var %noita.map.swapcount 0

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
    while (%noita.map.y <= 48) {
      while (%noita.map.x <= 70) {
        if (w isin $1) { /biomeweight }
        else {
          var %noita.map.input $mid($read("C:\Users\Linkshot\Documents\Noita\Biome Map Colours.txt"),3,6)
          var %noita.map.colour $mid(%noita.map.input,5,2) $+ $mid(%noita.map.input,3,2) $+ $mid(%noita.map.input,1,2)
        }
        if ($getdot(@biome_map,%noita.map.x,%noita.map.y) = 0) || ($rand(1,25) > 22) {
          if (c isin $1) {
            var %noita.map.xlong $rand(1,4)
            var %noita.map.yhigh $rand(1,4)
            if ($calc(%noita.map.xlong + %noita.map.yhigh) = 2) {
              var %noita.map.xlength $rand(2,15)
              var %noita.map.ylength $rand(2,15)
              if ($calc(%noita.map.xlength + %noita.map.x) > 70) { dec %noita.map.xlength $calc(%noita.map.x + %noita.map.xlength - 70) }
              if ($calc(%noita.map.ylength + %noita.map.y) > 48) { dec %noita.map.ylength $calc(%noita.map.y + %noita.map.ylength - 48) }
              /drawrect -fr @biome_map $base(%noita.map.colour,16,10) 1 %noita.map.x %noita.map.y %noita.map.xlength %noita.map.ylength
            }
            elseif (%noita.map.xlong = 1) {
              var %noita.map.xlength $rand(3,20)
              if ($calc(%noita.map.xlength + %noita.map.x) > 70) { dec %noita.map.xlength $calc(%noita.map.x + %noita.map.xlength - 70) }
              /drawline -r @biome_map $base(%noita.map.colour,16,10) 1 %noita.map.x %noita.map.y $calc(%noita.map.x + %noita.map.xlength - 1) %noita.map.y
            }
            elseif (%noita.map.yhigh = 1) {
              var %noita.map.ylength $rand(3,48)
              if ($calc(%noita.map.ylength + %noita.map.y) > 48) { dec %noita.map.ylength $calc(%noita.map.y + %noita.map.ylength - 48) }
              /drawline -r @biome_map $base(%noita.map.colour,16,10) 1 %noita.map.x %noita.map.y %noita.map.x $calc(%noita.map.y + %noita.map.ylength - 1)
            }
            else { /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.x %noita.map.y }
          }
          /drawdot -r @biome_map $base(%noita.map.colour,16,10) 0 %noita.map.x %noita.map.y
        }
        if (g isin $1) && (%noita.map.x = 35) && (%noita.map.y = 13) { /drawdot -r @biome_map $base(808020,16,10) 0 %noita.map.x %noita.map.y }
        inc %noita.map.x 1
      }
      var %noita.map.x 0
      inc %noita.map.y 1
    }
  }

  ; Finish
  /drawsave -q100 @biome_map biome_map.bmp
  /run biome_map.bmp
}
