stopsound @s master minecraft:music.overworld.swamp
execute at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
tag @s remove isdead
tag @s remove limbotunes
clear @s
effect clear @s
attribute @s minecraft:safe_fall_distance base reset
tag @s add limboleft

#places player randomly near 0 0 if they lack a set spawn
execute in minecraft:overworld unless data entity @s respawn.pos run spreadplayers 0 0 0 12 true @s

execute store result storage minecraft:coordinates x double 1.0 run data get entity @s respawn.pos[0]
execute store result storage minecraft:coordinates y double 1.0 run data get entity @s respawn.pos[1]
execute store result storage minecraft:coordinates z double 1.0 run data get entity @s respawn.pos[2]

execute in minecraft:overworld run function limbo:spawnpoint with storage minecraft:coordinates