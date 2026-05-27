
# Make sure the player does not die of fall damage
execute as @s[scores={pb_glidesound=200}] run playsound minecraft:item.elytra.flying master @s ~ ~ ~ 0.2 0.8
scoreboard players remove @s pb_glidesound 1
scoreboard players set @s[scores={pb_glidesound=..0}] pb_glidesound 200

tag @s[scores={pb_glidesound=219},nbt={active_effects:[{id:"minecraft:slow_falling"}]}] add pb_preslowfall

effect give @s[tag=!pb_preslowfall] slow_falling 1 0 true
effect give @s[tag=pb_preslowfall] slow_falling 1 0 false
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute unless block ~ ~-1 ~ #landing if score @s pb_glidesound matches ..201 run function customs:popbox/landing