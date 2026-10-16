# simple timer, kill the deepslates if they exist for too long
scoreboard players add @s tickdown 0
scoreboard players set @s[scores={tickdown=0}] tickdown 600
kill @s[scores={tickdown=0}]
scoreboard players remove @s tickdown 1

# Remove plants under the boulder
execute if block ~ ~ ~ #platoons:shrubbery run setblock ~ ~ ~ air destroy

# falling particles
execute run particle falling_dust{block_state:"minecraft:deepslate"} ~ ~ ~ 0.15 0.15 0.15 1 1 normal @a
execute run particle falling_dust{block_state:"minecraft:gray_wool"} ~ ~ ~ 0.15 0.15 0.15 1 1 normal @a

# apply damage to entities
execute as @s[tag=!bb_damaged] if entity @e[tag=!bb_fallingblock,distance=..1,limit=1] run damage @e[type=!item,tag=!bb_fallingblock,distance=..1,limit=1] 7.5 minecraft:falling_block
execute if entity @e[tag=!bb_fallingblock,distance=..1,limit=1] run tag @s add bb_damaged

# sfx
execute as @s[tag=!bb_sound] unless block ~ ~-1 ~ air run playsound minecraft:block.deepslate.fall block @a ~ ~ ~
execute unless block ~ ~-1 ~ air run tag @s add bb_sound


#execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #platoons:customs/shrubbery unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run fill ~ ~ ~ ~ ~ ~ deepslate replace air
