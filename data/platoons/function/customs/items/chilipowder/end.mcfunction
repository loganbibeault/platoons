kill @e[distance=0..2,tag=chilitrail]
execute as @e[tag=chilitrail] at @s unless entity @a[tag=chilifrenzy,distance=0..2] run scoreboard players set @s chilitimer 0
summon splash_potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
tag @s remove chilifrenzy
title @s actionbar ""