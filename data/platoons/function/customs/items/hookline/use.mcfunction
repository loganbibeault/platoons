advancement revoke @s only platoons:customs/hookline/use
playsound minecraft:entity.fishing_bobber.throw master @p ~ ~ ~ 1 0.5

tag @s add hooklineuser
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function platoons:customs/items/hookline/raycast
scoreboard players set #distance hooklineraycast 0
scoreboard players set #hit hooklineraycast 0