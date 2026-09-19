# adds one score to a global fakeplayer #new and copies ID to self
execute store result score @s ID run scoreboard players add #new ID 1

# spawns tracker marker and copies ID and UUID to it
summon marker ~ ~ ~ {Tags:["marker_id","new"]}
execute store result score @n[tag=marker_id] ID run scoreboard players get @s ID
data modify entity @n[tag=marker_id,tag=new] data.UUID set from entity @s UUID

# only way I know of grabbing player names, a loot table that spawns the player's head  
loot replace entity @s weapon.mainhand loot platoons:misc/player_head

# read data from head and store it in marker
data modify entity @n[tag=marker_id,tag=new] data.playername set from entity @s SelectedItem.components."minecraft:profile".name

# remove the head
item replace entity @s weapon.mainhand with air

# sets health score to 20 just so it has a value
scoreboard players set @s health 20

tag @n[tag=marker_id,tag=new] remove new

say id Set!