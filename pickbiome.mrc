/pickbiome {
  if (w isin $1) { /biomeweight $1 }
  else {
    var %noita.map.input $mid($read("C:\Users\Linkshot\Documents\Noita\Biome Map Colours.txt"),3,6)
    set %noita.map.colour $mid(%noita.map.input,5,2) $+ $mid(%noita.map.input,3,2) $+ $mid(%noita.map.input,1,2)
  }
}
