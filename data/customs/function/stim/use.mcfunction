execute if items entity @s weapon.mainhand minecraft:dragon_breath[custom_data={stim:1b}] run tag @s add stim_replaced
execute if items entity @s weapon.mainhand minecraft:dragon_breath[custom_data={stim:1b}] run item replace entity @s weapon.mainhand with air
execute if items entity @s[tag=!stim_replaced] weapon.offhand minecraft:dragon_breath[custom_data={stim:1b}] run item replace entity @s weapon.offhand with air

effect give @s instant_health 1 1 true
effect give @s saturation 1 6 true
effect give @s speed 10 0 false

particle dust_color_transition{from_color:[1.000,0.078,0.600],scale:1,to_color:[1.000,1.000,1.000]} ~ ~1 ~ 0.5 0.5 0.5 1 10 force
particle dust_color_transition{from_color:[1.000,1.000,1.000],scale:1,to_color:[1.000,0.078,0.600]} ~ ~1 ~ 0.5 0.5 0.5 1 10 force
execute at @s run playsound minecraft:entity.generic.drink master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.allay.item_taken master @a ~ ~ ~ 1 .8

scoreboard players set @s is_tickdownseconds 10
scoreboard players set @s is_tickdown 20