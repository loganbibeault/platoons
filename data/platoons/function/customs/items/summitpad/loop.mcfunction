#give @p phantom_spawn_egg[item_model="end_portal_frame",entity_data={id:"minecraft:marker",Tags:["summitpad"]}] 1

# debug show markers
execute at @e[type=minecraft:marker] run particle flame

execute as @e[tag=summitpad,tag=!connected] at @s run function platoons:customs/items/summitpad/place
execute as @e[tag=summitpad,tag=!connected] at @s run function platoons:customs/items/summitpad/fail
execute as @e[tag=summitpad,tag=connected] at @s run function platoons:customs/items/summitpad/connected

schedule function platoons:customs/items/summitpad/loop 1