effect give @a[dy=1] levitation 1 80 true
scoreboard players set @a[dy=1,tag=!pb_slowfall] pb_glidesound 220
tag @a[dy=1] add pb_slowfall
execute as @a[dy=1] at @s run tp @s ~ ~0.3 ~
tag @s add pb_cooldown

scoreboard players set @s tickdown 600
playsound minecraft:entity.shulker.open master @a ~ ~ ~
playsound minecraft:entity.firework_rocket.launch master @a ~ ~5 ~ 1 0.6
playsound minecraft:entity.firework_rocket.launch master @a ~ ~10 ~ 1 0.6
playsound minecraft:entity.firework_rocket.launch master @a ~ ~15 ~ 1 0.6
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~

data merge entity @s {Color:8b}