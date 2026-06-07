#execute in platoons:limbo run scoreboard players reset @a[distance=0..] spirits
#execute in platoons:dojo run scoreboard players reset @a[distance=0..] spirits
execute as @a[scores={spirits=1}] run function spirits:spiritboard
execute as @a[scores={spirits=2}] run function spirits:spiritboard2

execute as @a[scores={spirits=3..12}] run function spirits:confirm
execute as @a[scores={spirits=..-1}] run function spirits:confirm

execute as @a[scores={spirits=13,spiritcount=1..}] at @s run loot spawn ~ ~ ~ loot minecraft:chests/randomlog
execute as @a[scores={spirits=13,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={spirits=13,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={spirits=13},tag=completed] at @s run function spirits:complete

execute as @a[scores={spirits=14,spiritcount=1..}] at @s run give @s iron_ingot 20
execute as @a[scores={spirits=14,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={spirits=14,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={spirits=14},tag=completed] at @s run function spirits:complete

execute as @a[scores={spirits=15,spiritcount=1..}] at @s run give @s gold_ingot 16
execute as @a[scores={spirits=15,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={spirits=15,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={spirits=15},tag=completed] at @s run function spirits:complete

execute as @a[scores={spirits=16,spiritcount=1..}] at @s run give @s ender_pearl 1
execute as @a[scores={spirits=16,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={spirits=16,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={spirits=16},tag=completed] at @s run function spirits:complete

execute as @a[scores={spirits=17,spiritcount=1..}] at @s run give @s arrow 16
execute as @a[scores={spirits=17,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={spirits=17,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={spirits=17},tag=completed] at @s run function spirits:complete

execute as @a[scores={spirits=18,spiritcount=1..}] at @s run give @s golden_carrot 16
execute as @a[scores={spirits=18,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={spirits=18,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={spirits=18},tag=completed] at @s run function spirits:complete


#CUSTOMS !!!!!!!!!!!!!

# EXPLOSIVE ARROW
# /give @p tipped_arrow[enchantment_glint_override=1b,tooltip_display={hidden_components:[potion_contents]},potion_contents={custom_color:6050900,custom_effects:[{id:"minecraft:luck",amplifier:99b,duration:10}]},custom_name=[{"italic":false,"text":"E","color":"#29BAFF"},{"text":"x","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"s","color":"#d6fa82"},{"text":"i","color":"#EEE677"},{"text":"v","color":"#EECE7A"},{"text":"e ","color":"#E6B770"},{"text":"A","color":"#DE8F65"},{"text":"r","color":"#D7805B"},{"text":"r","color":"#CF6F52"},{"text":"o","color":"#C75648"},{"text":"w","color":"#BF4240"}]]
execute as @a[scores={customspurchase=1,spiritcount=1..}] at @s run give @s tipped_arrow[enchantment_glint_override=1b,tooltip_display={hidden_components:[potion_contents]},potion_contents={custom_color:6050900,custom_effects:[{id:"minecraft:luck",amplifier:99b,duration:10}]},custom_name=[{"italic":false,"text":"E","color":"#29BAFF"},{"text":"x","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"s","color":"#d6fa82"},{"text":"i","color":"#EEE677"},{"text":"v","color":"#EECE7A"},{"text":"e ","color":"#E6B770"},{"text":"A","color":"#DE8F65"},{"text":"r","color":"#D7805B"},{"text":"r","color":"#CF6F52"},{"text":"o","color":"#C75648"},{"text":"w","color":"#BF4240"}]] 2
execute as @a[scores={customspurchase=1,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=1,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=1},tag=completed] at @s run function spirits:complete

# BOULDER BOMB
# /give @p snowball[enchantment_glint_override=1b,custom_data={boulder_bomb:1},custom_name=[{"italic":false,"text":"B","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"u","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"d","color":"#7FEF70"},{"text":"e","color":"#d6fa82"},{"text":"r ","color":"#EEE677"},{"text":"B","color":"#EECE7A"},{"text":"o","color":"#E6B770"},{"text":"m","color":"#DE8F65"},{"text":"b","color":"#D7805B"}]]
execute as @a[scores={customspurchase=5,spiritcount=1..}] at @s run give @s snowball[enchantment_glint_override=1b,custom_data={boulder_bomb:1},custom_name=[{"italic":false,"text":"B","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"u","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"d","color":"#7FEF70"},{"text":"e","color":"#d6fa82"},{"text":"r ","color":"#EEE677"},{"text":"B","color":"#EECE7A"},{"text":"o","color":"#E6B770"},{"text":"m","color":"#DE8F65"},{"text":"b","color":"#D7805B"}]] 2
execute as @a[scores={customspurchase=5,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=5,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=5},tag=completed] at @s run function spirits:complete

# INSTANT STIMULANT
# /give @p dragon_breath[enchantment_glint_override=1b,max_stack_size=4,consumable={consume_seconds:0,animation:"drink",sound:"entity.generic.drink",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:instant_health",amplifier:1,duration:20,show_particles:0b,show_icon:0b},{id:"minecraft:saturation",amplifier:1,duration:120,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:0,duration:200,show_particles:1b,show_icon:1b}]},{type:"minecraft:play_sound",sound:"entity.allay.item_taken"}]}, use_cooldown={seconds:10}, custom_data={stim:1b}, custom_name=[{"italic":false,"text":"I","color":"#29BAFF"},{"text":"n","color":"#52D4D9"},{"text":"s","color":"#56EE9E"},{"text":"t","color":"#63F58E"},{"text":"a","color":"#7FEF70"},{"text":"n","color":"#d6fa82"},{"text":"t","color":"#EEE677"},{"text":" S","color":"#EECE7A"},{"text":"t","color":"#E6B770"},{"text":"i","color":"#DE8F65"},{"text":"m","color":"#D7805B"},{"text":"u","color":"#CF6F52"},{"text":"l","color":"#C75648"},{"text":"a","color":"#BF4240"},{"text":"n","color":"#bf405e"},{"text":"t","color":"#bf4084"}]]
execute as @a[scores={customspurchase=12,spiritcount=1..}] at @s run give @s dragon_breath[enchantment_glint_override=1b,max_stack_size=4,consumable={consume_seconds:0,animation:"drink",sound:"entity.generic.drink",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:instant_health",amplifier:1,duration:20,show_particles:0b,show_icon:0b},{id:"minecraft:saturation",amplifier:1,duration:120,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:0,duration:200,show_particles:1b,show_icon:1b}]},{type:"minecraft:play_sound",sound:"entity.allay.item_taken"}]}, use_cooldown={seconds:10}, custom_data={stim:1b}, custom_name=[{"italic":false,"text":"I","color":"#29BAFF"},{"text":"n","color":"#52D4D9"},{"text":"s","color":"#56EE9E"},{"text":"t","color":"#63F58E"},{"text":"a","color":"#7FEF70"},{"text":"n","color":"#d6fa82"},{"text":"t","color":"#EEE677"},{"text":" S","color":"#EECE7A"},{"text":"t","color":"#E6B770"},{"text":"i","color":"#DE8F65"},{"text":"m","color":"#D7805B"},{"text":"u","color":"#CF6F52"},{"text":"l","color":"#C75648"},{"text":"a","color":"#BF4240"},{"text":"n","color":"#bf405e"},{"text":"t","color":"#bf4084"}]] 1
execute as @a[scores={customspurchase=12,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=12,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=12},tag=completed] at @s run function spirits:complete


##### WIP #####

# POP BOX
# /give @p phantom_spawn_egg[enchantment_glint_override=1b,item_model="minecraft:lime_shulker_box",entity_data={id:"minecraft:shulker",Peek:20b,Silent:1b,Invulnerable:1b,Team:"hidename",NoAI:1b,AttachFace:0b,Color:5b,Tags:["popbox_new","popbox"]},custom_name=[{"italic":false,"text":"P","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":" B","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"x","color":"#d6fa82"}]]
execute as @a[scores={customspurchase=2,spiritcount=1..}] at @s run give @s phantom_spawn_egg[enchantment_glint_override=1b, item_model="minecraft:lime_shulker_box", entity_data={id:"minecraft:shulker", Peek:20b, Silent:1b, Invulnerable:1b, Team:"hidename", NoAI:1b, AttachFace:0b, Color:5b, Tags:["popbox_new","popbox"]}, custom_name=[{"italic":false,"text":"P","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":" B","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"x","color":"#d6fa82"}]] 1
execute as @a[scores={customspurchase=2,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=2,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=2},tag=completed] at @s run function spirits:complete

#SUMMIT PAD
execute as @a[scores={customspurchase=7,spiritcount=1..}] at @s run give @s end_portal_frame[custom_name=[{"italic":false,"text":"S","color":"#29BAFF"},{"text":"u","color":"#52D4D9"},{"text":"m","color":"#56EE9E"},{"text":"m","color":"#63F58E"},{"text":"i","color":"#7FEF70"},{"text":"t ","color":"#d6fa82"},{"text":"P","color":"#EEE677"},{"text":"a","color":"#EECE7A"},{"text":"d","color":"#E6B770"}],custom_data={tag:{summitpad:1}}] 3
execute as @a[scores={customspurchase=7,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=7,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=7},tag=completed] at @s run function spirits:complete





scoreboard players set @a spirits 0
scoreboard players set @a customspurchase 0
execute in platoons:limbo run scoreboard players reset @a[distance=0..] spirits
execute in platoons:dojo run scoreboard players reset @a[distance=0..] spirits
# schedule function spirits:spiritgive 1s