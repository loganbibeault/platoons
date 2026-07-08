# update status to active
tag @s add keyhole_active

# spawn waypoint
summon armor_stand ~ ~ ~ {Tags:["pocketwaypoint"],NoBasePlate:1b,Small:1b,Invisible:1b,Marker:1b,CustomNameVisible:0b,CustomName:"Pocket Portal",attributes:[{id:"minecraft:waypoint_transmit_range",base:9999}]}

# store coords and announce
execute store result score @s x run execute as @s run data get entity @s Pos[0]
execute store result score @s y run execute as @s run data get entity @s Pos[1]
execute store result score @s z run execute as @s run data get entity @s Pos[2]
tellraw @a [{"text":"A portal to a ","color":"#B88BD6"},{"text":"pocket dimension","color":"gold"},{"text":" is opening at "},{"text":"[","color":"#7EB4CC"},{"score":{"name":"@s","objective":"x"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"y"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"z"}},{"text":"]","color":"#7EB4CC"},{"text":" in"},{"text":" five minutes","color":"#9DE07E"},{"text":"!"}]
playsound minecraft:ambient.soul_sand_valley.mood master @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:ambient.soul_sand_valley.mood master @a[distance=..20] ~ ~ ~ 1 1
function platoons:pocket/alerts/announce/1


# particles and portal frame
setblock ~ ~ ~ stone
particle minecraft:end_rod ~ ~0.5 ~0.75 0 0 0 0.05 15
setblock ~ ~ ~ minecraft:structure_block[mode=save]

# set timer to 5 min
scoreboard players set @s general 6000