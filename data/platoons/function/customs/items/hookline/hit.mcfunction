scoreboard players set #distance hooklineraycast 200
tag @a[tag=hooklinehooked] add nofalldmg
tag @s add hooklinehit
execute at @s run playsound minecraft:block.trial_spawner.eject_item master @s ~ ~ ~ 1 0.63
execute at @s run playsound minecraft:block.trial_spawner.eject_item master @s ~ ~ ~ 1 0.79
execute at @s run playsound minecraft:block.trial_spawner.eject_item master @s ~ ~ ~ 1 0.94
title @s times 0 7 3
title @s title {"text":"HIT!","color":"gold"}
tag @s remove hooklineoffhand