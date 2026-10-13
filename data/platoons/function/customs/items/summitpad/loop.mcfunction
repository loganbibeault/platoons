#give @p phantom_spawn_egg[item_model="end_portal_frame",entity_data={id:"minecraft:marker",Tags:["summitpad"]},enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"S","color":"#29BAFF"},{"text":"u","color":"#52D4D9"},{"text":"m","color":"#56EE9E"},{"text":"m","color":"#63F58E"},{"text":"i","color":"#7FEF70"},{"text":"t ","color":"#d6fa82"},{"text":"P","color":"#EEE677"},{"text":"a","color":"#EECE7A"},{"text":"d","color":"#E6B770"}]] 1

# place
execute as @e[tag=summitpad,tag=!connected] at @s run function platoons:customs/items/summitpad/place

# fail
execute as @e[tag=summitpad,tag=!connected] at @s run function platoons:customs/items/summitpad/fail

# connected loop
execute as @e[tag=summitpad,tag=connected] at @s run function platoons:customs/items/summitpad/connected

# temp platform removal
execute as @e[tag=summitpadhitbox] at @s unless entity @e[tag=summitpad_exit,distance=0..1] positioned ~ ~1 ~ unless entity @e[type=!shulker,type=!marker,type=!item,type=!block_display,distance=..1.5] run function platoons:customs/items/summitpad/deletehitbox

schedule function platoons:customs/items/summitpad/loop 1