#/give @p phantom_spawn_egg[entity_data={id:"minecraft:marker",Tags:["healcube","healcube_new"]},item_model="honey_block",enchantment_glint_override=true,custom_name=[{"italic":false,"text":"H","color":"#29BAFF"},{"text":"e","color":"#52D4D9"},{"text":"a","color":"#56EE9E"},{"text":"l ","color":"#63F58E"},{"text":"C","color":"#7FEF70"},{"text":"u","color":"#d6fa82"},{"text":"b","color":"#EEE677"},{"text":"e","color":"#EECE7A"}]] 1
execute if entity @e[tag=healcube] run function platoons:customs/items/healcube/checks

schedule function platoons:customs/items/healcube/loop 1
