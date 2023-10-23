# Noita-Mapgen-IRC
Creates a new biome_map.png using mIRC

Syntax: /noitamap [-cgsw] \<amount\>

Parameters:
 - c: Generate "clumps" of biomes (will draw lines and squares that occasionally get speckled or layered)
 - g: Always put `mountain_left_entrance` at 35,13 to ensure a clean start
 - s: Overrides other parameters to load in the base `biome_map.png` and swap colours out.
     - Put a number in \<amount\> to declare how many substitutions you want to attempt
 - w: When selecting a random colour, will use `biomeweight.mrc` instead of `Biome Map Colours.txt`

Applying:
1. Place `\maptest\` in your `\mods\` folder
2. Navigate to `...\data\biome_impl\biome_map.png` and open in an image editor
3. Copypaste `biome_map.bmp` over it (preserve the `.png` format) and save
4. An example map is provided as the default

TO-DO maybe:
- Option to draw whole structures when a piece (e.g.: `mountain_right_stub`) is selected
- Wider safe starting area
- Declare which biomes are solid and which are navigable
- Declare a zone where solid biomes have a much smaller chance of drawing
- Draw branches of navigable biomes starting from spawn area
