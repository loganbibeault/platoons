tag @s add deletercloud

effect give @a minecraft:darkness 2 0 true
execute as @a at @s run playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 1 1.6
execute as @a at @s run playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 1 0
execute as @a at @s run playsound minecraft:ambient.nether_wastes.mood master @s ~ ~ ~ 1 2

execute store result score @s x run data get entity @s Pos[0]
execute store result score @s z run data get entity @s Pos[2]

tellraw @a [{"text":"A","color":"#D97373"},{"text":" deleter","color":"#7EB4CC"},{"text":" is carving through the world at "},{"text":"[","color":"#B88BD6"},{"score":{"name":"@s","objective":"x"}},{"text":"] [","color":"#B88BD6"},{"score":{"name":"@s","objective":"z"}},{"text":"]","color":"#B88BD6"},{"text":"!","color":"#D97373"}]

execute at @s run summon marker ~ 320 ~ {Tags:["deleter"]}
execute as @e[type=marker,tag=deleter] at @s run function platoons:customs/deleter/checkloop
kill @s
