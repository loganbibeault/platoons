title @s times 0 10 0

execute if score @s tierup matches 5 at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 run title @s title {"text":"[    III    ]"}
execute if score @s tierup matches 4 run title @s title {"text":"[   III   ]","color":"#f5ecba"}
execute if score @s tierup matches 3 run title @s title {"text":"[  III  ]","color":"#f5e58c"}
execute if score @s tierup matches 2 run title @s title {"text":"[ III ]","color":"#f0da5b"}
execute if score @s tierup matches 1 run title @s title {"text":"[III]","color":"#EED126"}

scoreboard players remove @s tierup 1