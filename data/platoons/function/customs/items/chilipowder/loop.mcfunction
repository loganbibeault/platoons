# give @p blaze_powder[consumable={consume_seconds:0,animation:"none",sound:"entity.sniffer.sniffing",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:0,duration:400,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:600}]},{type:"minecraft:play_sound",sound:"entity.blaze.ambient"}]},custom_data={chilipowder:1b},enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"C","color":"#29BAFF"},{"text":"h","color":"#52D4D9"},{"text":"i","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"i ","color":"#7FEF70"},{"text":"P","color":"#d6fa82"},{"text":"o","color":"#EEE677"},{"text":"w","color":"#EECE7A"},{"text":"d","color":"#E6B770"},{"text":"e","color":"#DE8F65"},{"text":"r","color":"#D7805B"}]] 1
scoreboard objectives add chilitimer dummy
scoreboard objectives add chilitimer_s dummy
scoreboard objectives add chilidmg_taken minecraft.custom:damage_taken
scoreboard objectives add chilidmg_dealt minecraft.custom:damage_dealt

execute as @a[tag=chilifrenzy] at @s run function platoons:customs/items/chilipowder/frenzy

# trail
scoreboard players remove @e[tag=chilitrail] chilitimer 1
execute at @e[tag=chilitrail,scores={chilitimer=5..}] unless entity @a[tag=chilifrenzy,distance=0..2] unless block ~ ~-0.5 ~ #platoons:customs/lavaplace run fill ~ ~ ~ ~ ~ ~ lava[level=4] replace #platoons:customs/lavaplace
execute at @e[tag=chilitrail,scores={chilitimer=..0}] unless entity @a[tag=chilifrenzy,distance=0..2] unless block ~ ~-0.5 ~ #platoons:customs/lavaplace unless block ~ ~-0.5 ~ air run fill ~ ~ ~ ~ ~ ~ air replace lava
kill @e[tag=chilitrail,scores={chilitimer=..0}]

scoreboard players reset @a chilidmg_dealt
scoreboard players reset @a chilidmg_taken

schedule function platoons:customs/items/chilipowder/loop 1