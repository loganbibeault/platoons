# give @p ghast_tear[item_model="warped_fungus_on_a_stick",consumable={consume_seconds:0,animation:"none",has_consume_particles:false,sound:"block.crafter.fail"},custom_data={hookline:1b},enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"H","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"o","color":"#56EE9E"},{"text":"k","color":"#63F58E"},{"text":"l","color":"#7FEF70"},{"text":"i","color":"#d6fa82"},{"text":"n","color":"#EEE677"},{"text":"e","color":"#EECE7A"}]] 1
scoreboard objectives add hooklineraycast dummy
tag @a remove hooklineuser

execute as @a[tag=hooklinehit,limit=1] at @s run execute as @a[tag=hooklinehooked,limit=1] at @s facing entity @a[tag=hooklinehit,limit=1] eyes run tp @s ^ ^ ^5
execute as @a[tag=hooklinehooked] at @s positioned ~ ~-1 ~ if entity @a[tag=hooklinehit,distance=..3] run execute at @a[limit=1,tag=hooklinehit] run function platoons:customs/items/hookline/done

execute as @a[tag=nofalldmg] run attribute @s minecraft:safe_fall_distance base set 999
execute as @a[tag=nofalldmg] at @s unless block ~ ~-0.001 ~ air run function platoons:customs/items/hookline/resetfalldmg

schedule function platoons:customs/items/hookline/loop 1