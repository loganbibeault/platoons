summon armor_stand ~ ~ ~ {Tags:["return_equipment"]}
data modify entity @n[type=minecraft:armor_stand,tag=return_equipment] equipment set from entity @s data.equipment
damage @n[type=armor_stand,tag=return_equipment] 20 explosion