kill @e[type=block_display,tag=supplydropbeacon]
kill @e[type=armor_stand,tag=supplydrop]

# fun effects
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=0..] ~ ~ ~ 6 1
playsound minecraft:entity.firework_rocket.large_blast master @a[distance=0..] ~ ~ ~ 6 1

# rolls a number from 1 to 4 to determine the loot table of the supply crate
execute store result score #crate general run random value 1..4

# spawns a chest minecart based on the roll
execute if score #crate general matches 1 run summon minecraft:chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:chests/supplycrate/combat"}
execute if score #crate general matches 2 run summon minecraft:chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:chests/supplycrate/materials"}
execute if score #crate general matches 3 run summon minecraft:chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:chests/supplycrate/utility"}
execute if score #crate general matches 4 run summon minecraft:chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:weathered_copper_chest"},CustomNameVisible:0b,Tags:["supplycrate"],CustomName:[{"text":"Supply Crate","color":"#db7304","italic":false}],LootTable:"platoons:chests/supplycrate/magic"}
scoreboard players set #crate general 0

# no longer forces the chunk to load
forceload remove ~ ~