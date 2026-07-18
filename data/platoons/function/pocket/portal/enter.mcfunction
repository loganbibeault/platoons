execute at @e[tag=pocket_exit] run tp @s ~ ~-4 ~
execute at @e[tag=pocket_exit] run playsound block.portal.travel ambient @s ~ ~-4 ~ 0.5 1

# use title with macro'd input
title @s times 5 60 40
$title @s title $(title)

effect give @s resistance 15 4
effect give @s weakness 15 4
effect give @s glowing infinite 0 true