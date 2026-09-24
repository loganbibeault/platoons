scoreboard players operation #this ID = @s ID

# log player Health in healthstore
execute store result score @s healthstore run data get entity @s Health

# bc of login i-frames we have to delay the damage update by 5 ticks
scoreboard players set @s applydamage 5

# sets mannequin's healthstore score from its Health
execute as @n[type=mannequin,predicate=platoons:mannequin/this_id] run execute store result score @s healthstore run data get entity @s Health

# subtract mannequin's healthstore from player's healthstore
scoreboard players operation @s healthstore -= @n[type=mannequin,predicate=platoons:mannequin/this_id] healthstore

# set the MARKER's Health to the score difference in healthstore (yes i decided that healthUpdate is the only camelCase in platoons)
execute store result entity @n[type=marker,predicate=platoons:mannequin/this_id] data.healthUpdate int 1 run scoreboard players get @s healthstore

# makes sure that if the mannequin got attacked but not killed there's no kill credit
data remove entity @n[type=mannequin,predicate=platoons:mannequin/this_id] last_hurt_by_player

# removes/kills mannequin
tp @n[type=mannequin,predicate=platoons:mannequin/this_id] ~ -67 ~
kill @e[type=mannequin,predicate=platoons:mannequin/this_id]

tp @n[tag=offlineseat,predicate=platoons:mannequin/this_id] ~ -67 ~
kill @n[tag=offlineseat,predicate=platoons:mannequin/this_id]