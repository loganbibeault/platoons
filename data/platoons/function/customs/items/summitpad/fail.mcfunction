setblock ~ ~ ~ air replace
stopsound @a[distance=0..10] block block.beacon.ambient
playsound minecraft:block.stone.break block @a
particle block{block_state:"minecraft:end_portal_frame"} ~ ~-.5 ~ .3 .3 .3 2 60
summon item ~ ~ ~ {Item:{id:"minecraft:phantom_spawn_egg",count:1b,components:{item_model:"end_portal_frame",entity_data:{id:"minecraft:marker",Tags:["summitpad"]},enchantment_glint_override:1b,custom_name:[{"italic":false,"text":"S","color":"#29BAFF"},{"text":"u","color":"#52D4D9"},{"text":"m","color":"#56EE9E"},{"text":"m","color":"#63F58E"},{"text":"i","color":"#7FEF70"},{"text":"t ","color":"#d6fa82"},{"text":"P","color":"#EEE677"},{"text":"a","color":"#EECE7A"},{"text":"d","color":"#E6B770"}]}}}
kill @s