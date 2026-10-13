execute as @s[tag=connected] run particle dust_color_transition{from_color:[0.000,0.800,1.000],scale:1,to_color:[0.000,1.000,1.000]} ~ ~ ~ 0 0 0 0 1 force

execute positioned ~ ~1 ~ at @e[tag=summitpad_exit,distance=..1,predicate=!platoons:customs/summitpad/1air,predicate=platoons:customs/summitpad/2air] run say we good
execute positioned ~ ~1 ~ run function platoons:customs/items/summitpad/check
