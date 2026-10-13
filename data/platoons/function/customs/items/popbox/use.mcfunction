
# Player effects on activation
effect give @a[dy=1] levitation 1 80 true
scoreboard players set @a[dy=1,tag=!pb_slowfall] pb_glidesound 220

tag @a[dy=1] add pb_slowfall
execute as @a[dy=1] at @s run tp @s ~ ~0.3 ~
tag @s add pb_cooldown

# Pop box usage animation and sound effects
scoreboard players set @s tickdown 600
playsound minecraft:entity.shulker.open master @a ~ ~ ~
playsound minecraft:entity.firework_rocket.launch master @a ~ ~5 ~ 1 0.6
playsound minecraft:entity.firework_rocket.launch master @a ~ ~10 ~ 1 0.6
playsound minecraft:entity.firework_rocket.launch master @a ~ ~15 ~ 1 0.6
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~

data merge entity @s {Color:8b}
data merge entity @s {Peek:100b}

execute as @n[tag=popbox_face] at @s run tp @s ~ ~-0.301 ~
data merge entity @n[tag=popbox_face_low] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjdmMzQwOGUwOGU3OTFlZDJmYmRkOTBhNzM0ZjlkMWNhNGE4NTdmMjU5ZTU0NjZjNDQzNzE0ZTZkYzgzNjczYiJ9fX0="}]}}}}