#tellraw logoh {"score":{"name":"logoh","objective":"x"}}

# sets everydody's dropdist x/z to their current x/z coordinates
scoreboard players operation @a dropdistx = @a x
scoreboard players operation @a dropdistz = @a z

# gets the supply drop coordinates
execute as @n[tag=h] run execute store result score @s x run data get entity @s Pos[0]
execute as @n[tag=h] run execute store result score @s z run data get entity @s Pos[2]

# sets everybody's dropdist to the difference between their coordinates and the supply drop coordinates
scoreboard players operation @a dropdistx -= @n[tag=h] x
scoreboard players operation @a dropdistz -= @n[tag=h] z

#tellraw logoh {"score":{"name":"logoh","objective":"dropdistx"}}

# supply drop y distance is always 0
data modify storage platoons:supplydropdist in.y set value 0

execute as @a run function platoons:test/individual





schedule function platoons:test/main 1