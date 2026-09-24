scoreboard players operation #this ID = @s ID

scoreboard players set @s applydamage 5

data modify entity @n[type=marker,predicate=platoons:mannequin/this_id] data.healthUpdate set value 100f

tag @s add clearself
# go to limbo
tag @s add isdead

execute as @n[type=marker,tag=marker_id,predicate=platoons:mannequin/this_id] run tag @s remove offline_dead

tellraw @s {"text":"You were killed while offline!","color":"#7EB4CC"}
