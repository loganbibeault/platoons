# give @p tipped_arrow[enchantment_glint_override=1b,tooltip_display={hidden_components:["potion_contents"]},potion_contents={custom_color:6050900,custom_effects:[{id:"minecraft:luck",amplifier:99b,duration:10}]},custom_name=[{"italic":false,"text":"E","color":"#29BAFF"},{"text":"x","color":"#52D4D9"},{"text":"p","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"o","color":"#7FEF70"},{"text":"s","color":"#d6fa82"},{"text":"i","color":"#EEE677"},{"text":"v","color":"#EECE7A"},{"text":"e ","color":"#E6B770"},{"text":"A","color":"#DE8F65"},{"text":"r","color":"#D7805B"},{"text":"r","color":"#CF6F52"},{"text":"o","color":"#C75648"},{"text":"w","color":"#BF4240"}]] 2

# tag arrow
execute as @e[type=arrow,predicate=platoons:customs/explosivearrow/explosivearrow] run tag @s add explosivearrow

# tag in-ground arrow
execute as @e[type=arrow,predicate=platoons:customs/explosivearrow/inground] run tag @s add inground

# tag entities that get shot
execute as @e[predicate=platoons:customs/explosivearrow/effect] run tag @s add gonnaexplode

# effects while in air
execute as @e[type=arrow,tag=!inground,tag=explosivearrow] at @s run function platoons:customs/items/explosivearrow/air

# those who have the luck effect from arrow get "shot" (run shot func)
execute as @e[tag=gonnaexplode] at @s run function platoons:customs/items/explosivearrow/shot

# in-ground func
execute as @e[limit=1,type=arrow,tag=inground,tag=explosivearrow] at @s run function platoons:customs/items/explosivearrow/ground

# i forget why but the creeper spawns low and is teleported up, probably a good reason idk
execute as @e[type=creeper,tag=up50] at @s run tp @s ~ ~50 ~

schedule function platoons:customs/items/explosivearrow/loop 1