# smoke particles but not in shooter's face
execute unless entity @a[distance=0..2] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0 3 force
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.2 10 force

# doesn't do arrow damage
data merge entity @s {damage:-0.1d}

# sfx
playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 0.3 1