function platoons:pocket/alerts/open/1
fill ~-1 ~3 ~ ~1 ~1 ~ end_gateway{Age:-999999}
fill ~-1 ~ ~ ~1 ~ ~ minecraft:jigsaw[orientation=up_north]


tellraw @a [{"text":"The portal to the ","color":"#B88BD6"},{"text":"pocket dimension","color":"gold"},{"text":" has opened at "},{"text":"[","color":"#D97373"},{"score":{"name":"@s","objective":"x"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@s","objective":"y"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@s","objective":"z"},"color":"#EBDE6E"},{"text":"]","color":"#D97373"},{"text":"!"}]
tag @s add keyhole_open

# rolls a number to determine dimension
execute store result score #pocketpick general run random value 1..2

# spawns dimension based on the roll
execute if score #pocketpick general matches 1 in platoons:pocket/desolatia run function platoons:pocket/dimensions/desolatia/activate
execute if score #pocketpick general matches 2 in platoons:pocket/boneyard run function platoons:pocket/dimensions/boneyard/activate
scoreboard players set #pocketpick general 0

# set timer bar to max
scoreboard players set #pocketbar general 18000
scoreboard players set #pockettimer_m general 15
scoreboard players set #pockettimer_s general 0
scoreboard players set #pockettimer general 20

# glass pane animation thing
function platoons:pocket/portal/animations/portal/0