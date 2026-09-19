scoreboard players operation #this ID = @s ID

execute unless entity @e[type=mannequin,predicate=platoons:mannequin/this_id,limit=1] run function platoons:mannequin/kill
execute unless entity @e[type=mannequin,predicate=platoons:mannequin/this_id,limit=1] run tag @s add offline_dead

execute as @a[predicate=platoons:mannequin/this_id,limit=1] run function platoons:mannequin/login_alive

execute if entity @a[predicate=platoons:mannequin/this_id,limit=1] run tag @s remove offline
execute if entity @a[predicate=platoons:mannequin/this_id,limit=1] run tag @s remove equipreturned