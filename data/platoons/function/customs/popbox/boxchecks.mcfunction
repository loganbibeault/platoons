
# Check for player activation
tp @n[distance=0..2,tag=pb_slimeblock] ~ ~-1.1 ~
execute as @s[tag=!pb_cooldown] align xyz if entity @a[dy=1] run function platoons:customs/popbox/use

# Box activation cooldown
execute if score @s tickdown matches ..599 run data merge entity @s {Peek:100b}
execute if score @s tickdown matches ..0 run data merge entity @s {Peek:20b}
execute if score @s tickdown matches ..0 run data merge entity @s {Color:5b}
execute if score @s tickdown matches ..0 run tag @s remove pb_cooldown


data merge entity @s {AttachFace:0b}

execute if score @s tickdown matches ..0 run particle entity_effect{color:[0.5,1.0,0.1,0.5]} ~ ~0.5 ~ 0.1 0 0.1 0.25 0 normal @a

# Particle effects
execute if score @s tickdown matches 1..598 run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 1 normal @a
scoreboard players remove @s tickdown 1

# Fuck ass non-functioning slime block to hide shulker head
execute as @s[tag=popbox_new] run summon armor_stand ~ ~-1.1 ~ {HasVisualFire:1b,Tags:["pb_slimeblock"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
tag @s remove popbox_new