scoreboard players operation #this ID = @s ID

data modify entity @e[type=marker,tag=marker_id,predicate=platoons:mannequin/this_id,limit=1] data.Inventory set from entity @s Inventory
data modify entity @e[type=marker,tag=marker_id,predicate=platoons:mannequin/this_id,limit=1] data.equipment set from entity @s equipment
advancement revoke @s only platoons:game/update_inv