function platoons:pocket/alerts/open/1
fill ~-1 ~3 ~ ~1 ~1 ~ end_gateway{Age:-999999}
fill ~-1 ~ ~ ~1 ~ ~ minecraft:jigsaw[orientation=up_north]
tellraw @a [{"text":"A portal to a ","color":"#B88BD6"},{"text":"pocket dimension","color":"gold"},{"text":" has opened at "},{"text":"[","color":"#7EB4CC"},{"score":{"name":"@s","objective":"x"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"y"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"z"}},{"text":"]","color":"#7EB4CC"},{"text":"!"}]
tag @s add keyhole_open

# rolls a number to determine dimension
execute store result score #pocketpick general run random value 1..2

# spawns a chest minecart based on the roll
execute if score #pocketpick general matches 1 in platoons:pocket/desolatia run function platoons:pocket/dimensions/desolatia/activate
execute if score #pocketpick general matches 2 in platoons:pocket/desolatia run function platoons:pocket/dimensions/desolatia/activate
scoreboard players set #pocketpick general 0