title @s times 0 10 0

execute if score @s tierup matches 5 at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 run title @s title {"text":"[    IV    ]"}
execute if score @s tierup matches 4 run title @s title {"text":"[   IV   ]","color":"#f2d3bb"}
execute if score @s tierup matches 3 run title @s title {"text":"[  IV  ]","color":"#f2b585"}
execute if score @s tierup matches 2 run title @s title {"text":"[ IV ]","color":"#f09651"}
execute if score @s tierup matches 1 run title @s title {"text":"[IV]","color":"#EE7D26"}

scoreboard players remove @s tierup 1