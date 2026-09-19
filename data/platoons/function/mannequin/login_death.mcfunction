scoreboard players operation #this ID = @s ID

scoreboard players set @s applydamage 5

data modify entity @n[type=marker,predicate=platoons:mannequin/this_id] data.healthUpdate set value 100f

tag @s add clearself

execute as @n[type=marker,tag=marker_id,predicate=platoons:mannequin/this_id] run tag @s remove offline_dead
#execute if score @s offlinedead matches 1.. as @n[type=marker,tag=marker_id,predicate=platoons:mannequin/this_id] run tag @s remove offline_dead


#scoreboard players reset @s offlinedead

say login dead