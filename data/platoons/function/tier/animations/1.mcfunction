title @s times 0 10 0

execute if score @s tierup matches 5 at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 run title @s title {"text":"[    I    ]"}
execute if score @s tierup matches 4 run title @s title {"text":"[   I   ]","color":"#ccffff"}
execute if score @s tierup matches 3 run title @s title {"text":"[  I  ]","color":"#9cffff"}
execute if score @s tierup matches 2 run title @s title {"text":"[ I ]","color":"#80ffff"}
execute if score @s tierup matches 1 run title @s title {"text":"[I]","color":"#55FFFF"}

scoreboard players remove @s tierup 1