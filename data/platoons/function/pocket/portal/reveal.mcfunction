# uses player dist values as input and runs calculation with them
execute store result storage platoons:pocketdist in.x int 1.0 run scoreboard players get @s distx
execute store result storage platoons:pocketdist in.z int 1.0 run scoreboard players get @s distz
function platoons:pocket/portal/calculatedist with storage platoons:pocketdist in

# converts the float output into an integer for the chat announcement
execute store result score #pocketdist general run data get storage platoons:pocketdist out

# announces drop to self
tellraw @s [{"text":"The","color":"gold"},{"text":" pock drop","color":"#9DE07E"},{"text":" is falling "},{"score":{"name":"#dropdist","objective":"general"},"color":"#EBDE6E","bold":true},{"text":" blocks away at "},{"text":"[","color":"#D97373"},{"score":{"name":"@n[tag=supplydrop,type=item_display]","objective":"x"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@n[tag=supplydrop,type=item_display]","objective":"z"},"color":"#EBDE6E"},{"text":"]","color":"#D97373"},{"text":"!"}]

# marks current user as checked
tag @s add pocketdistcheck

# runs this check again with the next unchecked player
execute as @p[tag=!pocketdistcheck] run function platoons:pocket/portal/reveal

# if all players are checked, the tag is removed from all
execute unless entity @a[tag=!pocketdistcheck] run tag @a remove pocketdistcheck