
# Check for player activation
tp @n[distance=0..2,tag=pb_slimeblock] ~ ~-1.1 ~
execute as @s[tag=!pb_cooldown] align xyz if entity @a[dy=1] run function platoons:customs/items/popbox/use

# Box activation cooldown
execute if score @s tickdown matches 0 run function platoons:customs/items/popbox/reset
execute if score @s tickdown matches -20 run execute as @n[tag=popbox_face] at @s run tp @s ~ ~0.301 ~

execute if score @s tickdown matches ..0 run particle entity_effect{color:[0.5,1.0,0.1,0.5]} ~ ~0.5 ~ 0.1 0 0.1 0.25 0 normal @a

# Particle effects
execute if score @s tickdown matches 1..598 run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 1 normal @a
scoreboard players remove @s tickdown 1

# Placing (face + sounds)
execute as @s[tag=popbox_new] run function platoons:customs/items/popbox/place