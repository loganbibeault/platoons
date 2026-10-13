# give @p phantom_spawn_egg[item_model="minecraft:test_block",block_state={mode:"accept"},enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"P","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":" B","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"x","color":"#d6fa82"}],entity_data={id:"minecraft:shulker",Peek:20b,Silent:1b,Invulnerable:1b,Team:"hidename",NoAI:1b,Color:5b,Tags:["popbox_new","popbox"]}] 1

scoreboard objectives add pb_glidesound dummy

execute as @e[type=shulker,tag=popbox] at @s run function platoons:customs/items/popbox/boxchecks
execute as @a[tag=pb_slowfall] at @s run function platoons:customs/items/popbox/slowfall

schedule function platoons:customs/items/popbox/loop 1