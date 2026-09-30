# get and store y of deleter and kill below y -65
execute store result score @s y run data get entity @s Pos[1]
execute if score @s y matches -100..-65 run kill @s

# move down and fill area
tp @s ~ ~-1 ~
fill ~16 ~-1 ~16 ~-16 ~15 ~-16 minecraft:air strict

# particles
particle minecraft:block_marker{block_state:"minecraft:air"} ~ ~ ~ 8 1 8 0 100 force @a
particle minecraft:block{block_state:"minecraft:magenta_concrete"} ~ ~ ~ 8 200 8 0 100 force
particle minecraft:block{block_state:"minecraft:black_concrete"} ~ ~ ~ 8 200 8 0 100 force

# sfx
execute at @s run execute at @a[distance=0..64] run playsound minecraft:block.respawn_anchor.deplete master @p ~ ~ ~ 0.2 0 1
execute at @s run execute at @a[distance=0..64] run playsound minecraft:block.respawn_anchor.deplete master @p ~ ~ ~ 1 0 1
execute at @s run execute at @a[distance=0..64] run playsound minecraft:ambient.nether_wastes.mood master @p ~ ~ ~ 1 1.0 1
execute at @s run execute at @a[distance=0..64] run playsound minecraft:ambient.nether_wastes.mood master @p ~ ~ ~ 1 0 1
execute at @s run execute at @a[distance=0..64] run playsound minecraft:ambient.nether_wastes.mood master @p ~ ~ ~ 1 2 1

# visuals
effect give @a minecraft:darkness 1 0 true
execute at @s run execute at @a[distance=0..16] run effect give @p minecraft:blindness 1 0 true