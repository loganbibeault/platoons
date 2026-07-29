# atmosphere particles
execute at @a[distance=0..] run particle minecraft:falling_dust{block_state:"minecraft:jungle_planks"} ~ ~ ~ 30 30 30 1 10

# structure generation
execute at @e[tag=small_structure_gen] run place jigsaw platoons:desolatia/small_structure small_structure 1 ~ ~ ~
kill @e[tag=small_structure_gen]
execute at @e[tag=big_structure_gen] run place jigsaw platoons:desolatia/big_structure big_structure 1 ~ ~ ~
kill @e[tag=big_structure_gen]

#execute at @e[tag=pocket_bookshelf] run loot insert ~ ~ ~ loot minecraft:chests/general_chiseled_bookshelf
kill @e[tag=pocket_bookshelf]

#execute as @e[tag=pocket_armor] at @s if entity @a[distance=0..30] run function pocket:armor_generate

# exit portal
execute at @e[tag=pocket_exit] positioned ~ ~-1 ~ as @a[distance=..1.5] run function platoons:pocket/portal/exit

# no building near exit
execute as @e[limit=1,tag=pocket_exit,sort=nearest] at @s run fill ~1 ~-2 ~1 ~-2 ~-3 ~-2 air destroy 
execute as @e[limit=1,tag=pocket_exit,sort=nearest] at @s run fill ~1 ~1 ~1 ~-2 ~3 ~-2 air destroy