scoreboard players enable @a shop
execute as @a unless score @s shop matches 0 run function platoons:customs/shop/activate
scoreboard players set @a shop 0

# setting purchasable items

scoreboard players enable @a[tag=vip] editcustom

# these are the prev and next buttons per custom in the select menu

execute as @a if score @s editcustom matches 1 run scoreboard players add #custom1 general 1
execute as @a if score @s editcustom matches 1 run data modify storage platoons:shop customchange set value 1
execute as @a if score @s editcustom matches -1 run scoreboard players remove #custom1 general 1
execute as @a if score @s editcustom matches -1 run data modify storage platoons:shop customchange set value 1

execute as @a if score @s editcustom matches 2 run scoreboard players add #custom2 general 1
execute as @a if score @s editcustom matches 2 run data modify storage platoons:shop customchange set value 2
execute as @a if score @s editcustom matches -2 run scoreboard players remove #custom2 general 1
execute as @a if score @s editcustom matches -2 run data modify storage platoons:shop customchange set value 2

execute as @a if score @s editcustom matches 3 run scoreboard players add #custom3 general 1
execute as @a if score @s editcustom matches 3 run data modify storage platoons:shop customchange set value 3
execute as @a if score @s editcustom matches -3 run scoreboard players remove #custom3 general 1
execute as @a if score @s editcustom matches -3 run data modify storage platoons:shop customchange set value 3

execute as @a if score @s editcustom matches 4 run scoreboard players add #custom4 general 1
execute as @a if score @s editcustom matches 4 run data modify storage platoons:shop customchange set value 4
execute as @a if score @s editcustom matches -4 run scoreboard players remove #custom4 general 1
execute as @a if score @s editcustom matches -4 run data modify storage platoons:shop customchange set value 4

execute as @a unless score @s editcustom matches 0 run function platoons:customs/shop/setup/buttons with storage platoons:shop
scoreboard players set @a[tag=vip] editcustom 0