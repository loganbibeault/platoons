# give @p blaze_powder[consumable={consume_seconds:0,animation:"none",sound:"entity.sniffer.sniffing",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:0,duration:400,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:600}]},{type:"minecraft:play_sound",sound:"entity.blaze.ambient"}]},custom_data={chilipowder:1b}] 1
scoreboard objectives add chilitimer dummy
scoreboard objectives add chilitimer_s dummy
scoreboard objectives add chilidmg_taken minecraft.custom:damage_taken
scoreboard objectives add chilidmg_dealt minecraft.custom:damage_dealt

scoreboard players remove @a[tag=chilifrenzy] chilitimer 1



schedule function platoons:customs/items/chilipowder/loop 1