stopsound @s master minecraft:music.overworld.swamp
execute at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
tag @s remove isdead
tag @s remove limbotunes
clear @s
effect clear @s
attribute @s minecraft:safe_fall_distance base reset
tag @s add limboleft
gamerule immediate_respawn true
gamerule show_death_messages false
kill @s
stopsound @s * minecraft:entity.player.death
stopsound @s * minecraft:entity.player.hurt
gamerule immediate_respawn false
gamerule show_death_messages true
team leave @s