# give @p snowball[enchantment_glint_override=1b,custom_data={boulder_bomb:1},custom_name=[{"italic":false,"text":"B","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"u","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"d","color":"#7FEF70"},{"text":"e","color":"#d6fa82"},{"text":"r ","color":"#EEE677"},{"text":"B","color":"#EECE7A"},{"text":"o","color":"#E6B770"},{"text":"m","color":"#DE8F65"},{"text":"b","color":"#D7805B"}]] 2

# spawn marker cube
execute as @e[type=snowball,predicate=platoons:customs/boulderbomb/boulderbomb] at @s run summon marker ~ ~ ~ {Tags:["bb_marker"]}

# tag boulder bombs
execute as @e[type=snowball,predicate=platoons:customs/boulderbomb/boulderbomb] run tag @s add boulderbomb

# appearance and particles
execute as @e[tag=boulderbomb] run data merge entity @s {Item:{id:"minecraft:deepslate",count:1b}}
execute at @e[tag=boulderbomb] run particle dust_color_transition{from_color:[0.792,0.796,0.871],scale:0.6,to_color:[0.478,0.467,0.569]} ~ ~.2 ~ 0 0 0 1 1 normal @a

# have marker cube follow snowball
execute as @e[tag=bb_marker] at @s run ride @s mount @e[tag=boulderbomb,sort=nearest,limit=1]

# run place function when snowball not found
execute as @e[tag=bb_marker] at @s unless entity @e[tag=boulderbomb,distance=..1] align xyz run function platoons:customs/items/boulderbomb/place

# for each block from template spawn the deepslate
execute as @e[tag=bg_block] at @s run summon falling_block ~ ~ ~ {DropItem:0b,Tags:["bb_fallingblock"],BlockState:{Name:"minecraft:deepslate"},Time:1}
kill @e[tag=bg_block]

# falling checks
execute as @e[tag=bb_fallingblock] at @s run function platoons:customs/items/boulderbomb/falling

schedule function platoons:customs/items/boulderbomb/loop 1