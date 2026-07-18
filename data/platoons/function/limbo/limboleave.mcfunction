stopsound @s master minecraft:music.overworld.swamp
execute at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
tag @s remove isdead
tag @s remove limbotunes
clear @s
effect clear @s
attribute @s minecraft:safe_fall_distance base reset
tag @s add limboleft
execute in the_end run tp @s 0 2 0 0 90
team leave @s