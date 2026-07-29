execute if entity @e[tag=pocket_exit] at @e[tag=boneyard_tower_top] run place jigsaw platoons:boneyard/tower_top tower_top 1 ~ ~3 ~
execute if entity @e[tag=pocket_exit] run kill @e[tag=boneyard_tower_top]

#execute as @e[tag=pocket_armor] at @s if entity @a[distance=0..30] run function pocket:armor_generate

# exit portal
execute at @e[tag=pocket_exit] positioned ~ ~-1 ~ as @a[distance=..1.5] run function platoons:pocket/portal/exit

# no building near exit
execute as @e[limit=1,tag=pocket_exit,sort=nearest] at @s run fill ~1 ~-2 ~1 ~-2 ~-3 ~-2 air destroy 
execute as @e[limit=1,tag=pocket_exit,sort=nearest] at @s run fill ~1 ~1 ~1 ~-2 ~3 ~-2 air destroy

