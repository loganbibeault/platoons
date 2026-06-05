title @s times 0 10 0

execute if score @s tierup matches 5 at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 at @s run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0.7
execute if score @s tierup matches 5 run title @s title {"text":"[    V    ]"}
execute if score @s tierup matches 4 run title @s title {"text":"[   V   ]","color":"#edb9c1"}
execute if score @s tierup matches 3 run title @s title {"text":"[  V  ]","color":"#ed8e9d"}
execute if score @s tierup matches 2 run title @s title {"text":"[ V ]","color":"#e64961"}
execute if score @s tierup matches 1 run title @s title {"text":"[V]","color":"#ee2644"}

scoreboard players remove @s tierup 1
