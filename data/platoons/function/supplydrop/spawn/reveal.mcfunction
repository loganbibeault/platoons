# uses player dist values as input and runs calculation with them
execute store result storage platoons:supplydropdist in.x int 1.0 run scoreboard players get @s distx
execute store result storage platoons:supplydropdist in.z int 1.0 run scoreboard players get @s distz
function platoons:supplydrop/spawn/calculatedist with storage platoons:supplydropdist in

# converts the float output into an integer for the chat announcement
execute store result score #dropdist general run data get storage platoons:supplydropdist out

# announces drop to self
tellraw @s [{"text":"The","color":"gold"},{"text":" supply drop","color":"#9DE07E"},{"text":" is falling "},{"score":{"name":"#dropdist","objective":"general"},"color":"#EBDE6E","bold":true},{"text":" blocks away at "},{"text":"[","color":"#D97373"},{"score":{"name":"@n[tag=supplydrop,type=item_display]","objective":"x"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@n[tag=supplydrop,type=item_display]","objective":"z"},"color":"#EBDE6E"},{"text":"]","color":"#D97373"},{"text":"!"}]

# marks current user as checked
tag @s add supplydropdistcheck

# runs this check again with the next unchecked player
execute as @p[tag=!supplydropdistcheck] run function platoons:supplydrop/spawn/reveal

# if all players are checked, the tag is removed from all
execute unless entity @a[tag=!supplydropdistcheck] run tag @a remove supplydropdistcheck