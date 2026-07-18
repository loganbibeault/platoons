scoreboard players enable @a shop
execute as @a unless score @s shop matches 0 run function platoons:shop/activate
scoreboard players set @a shop 0