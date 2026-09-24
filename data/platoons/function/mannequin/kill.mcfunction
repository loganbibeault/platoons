# function for when mannequin is killed

# count the amount of items in the array so we know how often to repeat
execute store result score #items general run data get entity @s data.Inventory

# if there is at least one item, start the process
execute if score #items general matches 1.. run function platoons:mannequin/return_items

execute unless entity @s[tag=equipreturned] run function platoons:mannequin/return_equipment
tag @s add equipreturned

execute positioned ~ ~ ~ run function platoons:tier/death

# remove slime
kill @n[tag=offlineseat]