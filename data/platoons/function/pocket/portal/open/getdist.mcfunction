# sets everydody's dist x/z values to their current x/z coordinates
execute as @a run scoreboard players operation @s distx = @s x
execute as @a run scoreboard players operation @s distz = @s z

# gets the supply drop coordinates
execute as @n[type=interaction,tag=portal_keyhole] run execute store result score @s x run data get entity @s Pos[0]
execute as @n[type=interaction,tag=portal_keyhole] run execute store result score @s y run data get entity @s Pos[1]
execute as @n[type=interaction,tag=portal_keyhole] run execute store result score @s z run data get entity @s Pos[2]

# sets everybody's dist values to the difference between their coordinates and the supply drop coordinates
execute as @a run scoreboard players operation @s distx -= @n[type=interaction,tag=portal_keyhole] x
execute as @a run scoreboard players operation @s distz -= @n[type=interaction,tag=portal_keyhole] z

# supply drop y distance is always 0
data modify storage platoons:pocketdist in.y set value 0

# rest of commands are handled indivdually in this function, one player at a time
execute as @p[tag=!pocketdistcheck] run function platoons:pocket/portal/open/reveal
