# uses player dist values as input and runs calculation with them
execute store result storage platoons:pocketdist in.x int 1.0 run scoreboard players get @s distx
execute store result storage platoons:pocketdist in.z int 1.0 run scoreboard players get @s distz
function platoons:pocket/portal/open/calculatedist with storage platoons:pocketdist in

# converts the float output into an integer for the chat announcement
execute store result score #pocketdist general run data get storage platoons:pocketdist out

# announces drop to self
tellraw @s [{"text":"A portal to a ","color":"#B88BD6"},{"text":"pocket dimension","color":"gold"},{"text":" is opening ","color":"#B88BD6"},{"score":{"name":"#pocketdist","objective":"general"},"color":"#EBDE6E","bold":true},{"text":" blocks away at "},{"text":"[","color":"#D97373"},{"score":{"name":"@n[tag=portal_keyhole,type=interaction]","objective":"x"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@n[tag=portal_keyhole,type=interaction]","objective":"y"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@n[tag=portal_keyhole,type=interaction]","objective":"z"},"color":"#EBDE6E"},{"text":"]","color":"#D97373"},{"text":" in "},{"text":"five minutes","color":"#7EB4CC"},{"text":"!"}]

# marks current user as checked
tag @s add pocketdistcheck

# runs this check again with the next unchecked player
execute as @p[tag=!pocketdistcheck] run function platoons:pocket/portal/open/reveal

# if all players are checked, the tag is removed from all
execute unless entity @a[tag=!pocketdistcheck] run tag @a remove pocketdistcheck