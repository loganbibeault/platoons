title @s times 0 10 0

execute if score @s tierup matches 5 at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 run title @s title {"text":"[    II    ]"}
execute if score @s tierup matches 4 run title @s title {"text":"[   II   ]","color":"#dbffdb"}
execute if score @s tierup matches 3 run title @s title {"text":"[  II  ]","color":"#baffba"}
execute if score @s tierup matches 2 run title @s title {"text":"[ II ]","color":"#9eff9e"}
execute if score @s tierup matches 1 run title @s title {"text":"[II]","color":"#55FF55"}

scoreboard players remove @s tierup 1