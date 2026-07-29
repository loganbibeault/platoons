# land alert and chat announcement
function platoons:supplydrop/alerts/land/1
execute as @n[type=item_display,tag=supplydrop] run tellraw @a [{"text":"The","color":"gold"},{"text":" supply drop","color":"#9DE07E"},{"text":" has landed"},{"text":" at "},{"text":"[","color":"#D97373"},{"score":{"name":"@s","objective":"x"},"color":"#EBDE6E"},{"text":"] [","color":"#D97373"},{"score":{"name":"@s","objective":"z"},"color":"#EBDE6E"},{"text":"]","color":"#D97373"},{"text":"!"}]

kill @e[type=item_display,tag=supplydrop]
kill @e[type=armor_stand,tag=supplydropwaypoint]

# fun effects
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=0..] ~ ~ ~ 6 1
playsound minecraft:entity.firework_rocket.large_blast master @a[distance=0..] ~ ~ ~ 6 1
particle minecraft:wax_on ~ ~ ~ 0.5 0.5 0.5 10 50 normal @a

# beam dissolve and kill after
execute as @e[type=block_display,tag=supplydropbeacon] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,0f,2f]}}
execute as @e[type=block_display,tag=supplydropbeacon] run data merge entity @s {start_interpolation:0,interpolation_duration:16,transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,0f,2f]}}
schedule function platoons:supplydrop/animations/beacon/kill 17

# rolls a number from 1 to 4 to determine the loot table of the supply crate
execute store result score #crate general run random value 1..4

# spawns a chest minecart based on the roll
execute if score #crate general matches 1 run summon minecraft:chest_minecart ~ ~-0.75 ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:supplycrate/combat"}
execute if score #crate general matches 2 run summon minecraft:chest_minecart ~ ~-0.75 ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:supplycrate/materials"}
execute if score #crate general matches 3 run summon minecraft:chest_minecart ~ ~-0.75 ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:supplycrate/utility"}
execute if score #crate general matches 4 run summon minecraft:chest_minecart ~ ~-0.75 ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:supplycrate/magic"}
scoreboard players set #crate general 0

# no longer forces the chunk to load
forceload remove ~ ~

# reset anims
schedule clear platoons:supplydrop/animations/supplydrop/0
schedule clear platoons:supplydrop/animations/supplydrop/1
schedule clear platoons:supplydrop/animations/supplydrop/2
schedule clear platoons:supplydrop/animations/supplydrop/3
schedule clear platoons:supplydrop/animations/supplydrop/4
schedule clear platoons:supplydrop/animations/supplydrop/5
schedule clear platoons:supplydrop/animations/supplydrop/6
schedule clear platoons:supplydrop/animations/supplydrop/7

schedule clear platoons:supplydrop/animations/beacon/animate
schedule clear platoons:supplydrop/animations/beacon/reset