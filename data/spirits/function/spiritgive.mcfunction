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

#EXPLOSIVE ARROW
execute as @a[scores={customspurchase=1,spiritcount=1..}] at @s run give @s tipped_arrow[enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"E","color":"#29BAFF"},{"text":"x","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"s","color":"#d6fa82"},{"text":"i","color":"#EEE677"},{"text":"v","color":"#EECE7A"},{"text":"e ","color":"#E6B770"},{"text":"A","color":"#DE8F65"},{"text":"r","color":"#D7805B"},{"text":"r","color":"#CF6F52"},{"text":"o","color":"#C75648"},{"text":"w","color":"#BF4240"}],tooltip_display={hidden_components:[potion_contents]},potion_contents={custom_color:6050900,custom_effects:[{id:"minecraft:luck",amplifier:99b,duration:10}]}] 2
execute as @a[scores={customspurchase=1,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=1,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=1},tag=completed] at @s run function spirits:complete

#POP BOX
execute as @a[scores={customspurchase=2,spiritcount=1..}] at @s run give @s phantom_spawn_egg[enchantment_glint_override=1b,item_model="minecraft:lime_shulker_box",custom_name='[{"italic":false,"text":"P","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":" B","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"x","color":"#d6fa82"}]',entity_data={id:"minecraft:shulker",Peek:20b,Silent:1b,Invulnerable:1b,Team:"hidename",NoAI:1b,AttachFace:0b,Color:5b,Tags:["popbox_new","popbox"]}] 1
execute as @a[scores={customspurchase=2,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=2,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=2},tag=completed] at @s run function spirits:complete

#DELETE JUICE
execute as @a[scores={customspurchase=3,spiritcount=5..}] at @s run give @s splash_potion[custom_name='[{"italic":false,"text":"D","color":"#29BAFF"},{"text":"e","color":"#52D4D9"},{"text":"l","color":"#56EE9E"},{"text":"e","color":"#63F58E"},{"text":"t","color":"#7FEF70"},{"text":"e ","color":"#D5EE77"},{"text":"J","color":"#EEE677"},{"text":"u","color":"#EECE7A"},{"text":"i","color":"#E6B770"},{"text":"c","color":"#DE8F65"},{"text":"e","color":"#D7805B"}]',potion_contents={custom_color:0},hide_additional_tooltip={}] 1
execute as @a[scores={customspurchase=3,spiritcount=5..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=3,spiritcount=5..}] run scoreboard players remove @s spiritcount 5
execute as @a[scores={customspurchase=3},tag=completed] at @s run function spirits:complete

#TRAPPED DROP
execute as @a[scores={customspurchase=4,spiritcount=2..}] at @s run give @s command_block_minecart[minecraft:enchantment_glint_override=1b,custom_name='[{"italic":false,"text":"T","color":"#29BAFF"},{"text":"r","color":"#52D4D9"},{"text":"a","color":"#56EE9E"},{"text":"p","color":"#63F58E"},{"text":"p","color":"#7FEF70"},{"text":"e","color":"#d6fa82"},{"text":"d ","color":"#EEE677"},{"text":"D","color":"#EECE7A"},{"text":"r","color":"#E6B770"},{"text":"o","color":"#DE8F65"},{"text":"p","color":"#D7805B"}]',hide_additional_tooltip={},food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000000},custom_data={trapped_drop:1b}]
execute as @a[scores={customspurchase=4,spiritcount=2..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=4,spiritcount=2..}] run scoreboard players remove @s spiritcount 2
execute as @a[scores={customspurchase=4},tag=completed] at @s run function spirits:complete

#BOULDER BOMB
execute as @a[scores={customspurchase=5,spiritcount=1..}] at @s run give @s snowball[enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"B","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"u","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"d","color":"#7FEF70"},{"text":"e","color":"#d6fa82"},{"text":"r ","color":"#EEE677"},{"text":"B","color":"#EECE7A"},{"text":"o","color":"#E6B770"},{"text":"m","color":"#DE8F65"},{"text":"b","color":"#D7805B"}],custom_data={boulder_bomb:1}] 2
execute as @a[scores={customspurchase=5,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=5,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=5},tag=completed] at @s run function spirits:complete

#RESONATING HORN
execute as @a[scores={customspurchase=6,spiritcount=3..}] at @s run give @s goat_horn[hide_additional_tooltip={},enchantment_glint_override=1b,custom_name='[{"italic":false,"text":"R","color":"#29BAFF"},{"text":"e","color":"#52D4D9"},{"text":"s","color":"#56EE9E"},{"text":"o","color":"#63F58E"},{"text":"n","color":"#7FEF70"},{"text":"a","color":"#d6fa82"},{"text":"t","color":"#EEE677"},{"text":"i","color":"#EECE7A"},{"text":"n","color":"#E6B770"},{"text":"g ","color":"#DE8F65"},{"text":"H","color":"#D7805B"},{"text":"o","color":"#CF6F52"},{"text":"r","color":"#C75648"},{"text":"n","color":"#BF4240"}]',custom_data={rh_horn:1}] 1
execute as @a[scores={customspurchase=6,spiritcount=3..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=6,spiritcount=3..}] run scoreboard players remove @s spiritcount 3
execute as @a[scores={customspurchase=6},tag=completed] at @s run function spirits:complete

#SUMMIT PAD
execute as @a[scores={customspurchase=7,spiritcount=1..}] at @s run give @s end_portal_frame[custom_name='[{"italic":false,"text":"S","color":"#29BAFF"},{"text":"u","color":"#52D4D9"},{"text":"m","color":"#56EE9E"},{"text":"m","color":"#63F58E"},{"text":"i","color":"#7FEF70"},{"text":"t ","color":"#d6fa82"},{"text":"P","color":"#EEE677"},{"text":"a","color":"#EECE7A"},{"text":"d","color":"#E6B770"}]',custom_data={tag:{summitpad:1}}] 3
execute as @a[scores={customspurchase=7,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=7,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=7},tag=completed] at @s run function spirits:complete

#PING ROCKET
execute as @a[scores={customspurchase=8,spiritcount=2..}] at @s run give @s firework_rocket[enchantment_glint_override=1b,custom_name='[{"italic":false,"text":"P","color":"#29BAFF"},{"text":"i","color":"#52D4D9"},{"text":"n","color":"#56EE9E"},{"text":"g ","color":"#63F58E"},{"text":"R","color":"#7FEF70"},{"text":"o","color":"#d6fa82"},{"text":"c","color":"#EEE677"},{"text":"k","color":"#EECE7A"},{"text":"e","color":"#E6B770"},{"text":"t","color":"#DE8F65"}]',hide_additional_tooltip={},fireworks={explosions:[{shape:"star",colors:[I;15895308],fade_colors:[I;16735549,16748075],has_trail:1b,has_twinkle:1b},{shape:"large_ball",colors:[I;15870732],fade_colors:[I;16735549,16748075],has_trail:0b,has_twinkle:1b},{shape:"large_ball",colors:[I;15870732],fade_colors:[I;16735549,16748075],has_trail:0b,has_twinkle:1b}],flight_duration:3b},custom_data={pr:1}]
execute as @a[scores={customspurchase=8,spiritcount=2..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=8,spiritcount=2..}] run scoreboard players remove @s spiritcount 2
execute as @a[scores={customspurchase=8},tag=completed] at @s run function spirits:complete

#CHILLI POWDER
execute as @a[scores={customspurchase=9,spiritcount=3..}] at @s run give @s blaze_powder[enchantment_glint_override=1b,custom_name='[{"italic":false,"text":"C","color":"#29BAFF"},{"text":"h","color":"#52D4D9"},{"text":"i","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"i ","color":"#7FEF70"},{"text":"P","color":"#d6fa82"},{"text":"o","color":"#EEE677"},{"text":"w","color":"#EECE7A"},{"text":"d","color":"#E6B770"},{"text":"e","color":"#DE8F65"},{"text":"r","color":"#D7805B"}]',max_stack_size=1,custom_data={chili_powder:1b},food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000000}] 1
execute as @a[scores={customspurchase=9,spiritcount=3..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=9,spiritcount=3..}] run scoreboard players remove @s spiritcount 3
execute as @a[scores={customspurchase=9},tag=completed] at @s run function spirits:complete

#HEAL CUBE
execute as @a[scores={customspurchase=10,spiritcount=3..}] at @s run give @s honey_block[minecraft:rarity=rare,minecraft:enchantment_glint_override=true,custom_name='[{"italic":false,"text":"H","color":"#29BAFF"},{"text":"e","color":"#52D4D9"},{"text":"a","color":"#56EE9E"},{"text":"l ","color":"#63F58E"},{"text":"C","color":"#7FEF70"},{"text":"u","color":"#d6fa82"},{"text":"b","color":"#EEE677"},{"text":"e","color":"#EECE7A"}]',custom_data={tag:{healcube:1}}] 1
execute as @a[scores={customspurchase=10,spiritcount=3..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=10,spiritcount=3..}] run scoreboard players remove @s spiritcount 3
execute as @a[scores={customspurchase=10},tag=completed] at @s run function spirits:complete

#SONIC CELL
execute as @a[scores={customspurchase=11,spiritcount=4..}] at @s run give @s minecraft:echo_shard[enchantment_glint_override=1b,custom_name='[{"italic":false,"text":"S","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"n","color":"#56EE9E"},{"text":"i","color":"#63F58E"},{"text":"c ","color":"#7FEF70"},{"text":"C","color":"#d6fa82"},{"text":"e","color":"#EEE677"},{"text":"l","color":"#EECE7A"},{"text":"l","color":"#E6B770"}]',max_stack_size=1,custom_data={sonic_cell:1b},food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000000}] 1
execute as @a[scores={customspurchase=11,spiritcount=4..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=11,spiritcount=4..}] run scoreboard players remove @s spiritcount 4
execute as @a[scores={customspurchase=11},tag=completed] at @s run function spirits:complete

# INSTANT STIMULANT
execute as @a[scores={customspurchase=12,spiritcount=1..}] at @s run give @s minecraft:dragon_breath[enchantment_glint_override=1b,custom_name='[{"italic":false,"text":"I","color":"#29BAFF"},{"text":"n","color":"#52D4D9"},{"text":"s","color":"#56EE9E"},{"text":"t","color":"#63F58E"},{"text":"a","color":"#7FEF70"},{"text":"n","color":"#d6fa82"},{"text":"t","color":"#EEE677"},{"text":" S","color":"#EECE7A"},{"text":"t","color":"#E6B770"},{"text":"i","color":"#DE8F65"},{"text":"m","color":"#D7805B"},{"text":"u","color":"#CF6F52"},{"text":"l","color":"#C75648"},{"text":"a","color":"#BF4240"},{"text":"n","color":"#bf405e"},{"text":"t","color":"#bf4084"}]',max_stack_size=1,custom_data={stim:1b},food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000000}]
execute as @a[scores={customspurchase=12,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=12,spiritcount=1..}] run scoreboard players remove @s spiritcount 1
execute as @a[scores={customspurchase=12},tag=completed] at @s run function spirits:complete

# HOOKLINE
execute as @a[scores={customspurchase=13,spiritcount=1..}] at @s run give @s ghast_tear[custom_name='[{"italic":false,"text":"H","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"o","color":"#56EE9E"},{"text":"k","color":"#63F58E"},{"text":"l","color":"#7FEF70"},{"text":"i","color":"#d6fa82"},{"text":"n","color":"#EEE677"},{"text":"e","color":"#EECE7A"}]',enchantment_glint_override=1b,minecraft:max_stack_size=1,custom_data={hooker:1b},minecraft:item_model=warped_fungus_on_a_stick,use_cooldown={seconds:1.,cooldown_group:"hooker"},consumable={consume_seconds:0,has_consume_particles:false,sound:"intentionally_empty"}] 1
execute as @a[scores={customspurchase=13,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=13,spiritcount=1..}] run scoreboard players remove @s spiritcount 2
execute as @a[scores={customspurchase=13},tag=completed] at @s run function spirits:complete

# FROST FLYER

execute as @a[scores={customspurchase=14,spiritcount=1..}] at @s run give @s ghast_tear[custom_name='[{"italic":false,"text":"F","color":"#29BAFF"},{"text":"r","color":"#52D4D9"},{"text":"o","color":"#56EE9E"},{"text":"s","color":"#63F58E"},{"text":"t ","color":"#7FEF70"},{"text":"F","color":"#d6fa82"},{"text":"l","color":"#EEE677"},{"text":"y","color":"#EECE7A"},{"text":"e","color":"#E6B770"},{"text":"r","color":"#DE8F65"}]',minecraft:enchantment_glint_override=1b,minecraft:max_stack_size=1,minecraft:item_model=ice,custom_data={frostflyer:1b},consumable={consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false}] 1
execute as @a[scores={customspurchase=14,spiritcount=1..}] at @s run tag @s add completed
execute as @a[scores={customspurchase=14,spiritcount=1..}] run scoreboard players remove @s spiritcount 2
execute as @a[scores={customspurchase=14},tag=completed] at @s run function spirits:complete

scoreboard players set @a spirits 0
scoreboard players set @a customspurchase 0
execute in platoons:limbo run scoreboard players reset @a[distance=0..] spirits
execute in platoons:dojo run scoreboard players reset @a[distance=0..] spirits
#schedule function spirits:spiritgive 1s