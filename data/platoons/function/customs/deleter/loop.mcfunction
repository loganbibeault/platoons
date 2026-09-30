# /give @p lingering_potion[potion_contents={custom_color:0,custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:0}]},item_model="splash_potion",custom_name=[{"italic":false,"text":"D","color":"#29BAFF"},{"text":"e","color":"#52D4D9"},{"text":"l","color":"#56EE9E"},{"text":"e","color":"#63F58E"},{"text":"t","color":"#7FEF70"},{"text":"e ","color":"#D5EE77"},{"text":"J","color":"#EEE677"},{"text":"u","color":"#EECE7A"},{"text":"i","color":"#E6B770"},{"text":"c","color":"#DE8F65"},{"text":"e","color":"#D7805B"}],enchantment_glint_override=true,tooltip_display={hidden_components:["potion_contents"]}] 1

# check for potion cloud and run startup function
execute as @e[predicate=platoons:deleter/cloud] at @s run function platoons:customs/deleter/startup

schedule function platoons:customs/deleter/loop 20