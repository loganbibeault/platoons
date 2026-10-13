setblock ~ ~ ~ end_portal_frame
playsound minecraft:block.stone.place block @a ~ ~ ~
tag @s remove summitpad_new
tp @s ~ ~0.5 ~
execute positioned ~ ~3 ~ run function platoons:customs/items/summitpad/check