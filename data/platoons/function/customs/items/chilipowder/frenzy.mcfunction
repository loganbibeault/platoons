# punch ppl to set them on fire
execute as @a[scores={chilidmg_taken=1..}] at @s if entity @a[scores={chilidmg_dealt=1..}] run fill ~.5 ~-1 ~.5 ~-.5 ~ ~-.5 fire replace #platoons:customs/lavaplace

# spawn trail
summon marker ~ ~ ~ {Tags:["chilitrail","chilitrailnew"]}
scoreboard players set @e[tag=chilitrailnew] chilitimer 20
tag @e[tag=chilitrailnew] remove chilitrailnew

# fire trail
fill ~ ~ ~ ~ ~ ~ fire replace #platoons:customs/lavaplace
fill ~1 ~ ~1 ~-1 ~ ~-1 fire replace lava

# timers
scoreboard players remove @s chilitimer 1

execute if score @s chilitimer matches ..0 run scoreboard players remove @s chilitimer_s 1
execute if score @s[scores={chilitimer_s=1..}] chilitimer matches ..0 run scoreboard players set @s chilitimer 20

execute as @s[scores={chilitimer=20}] run title @s actionbar [{"text":"CHILI FRENZY: ","color":"#EBDE6E"},{"color":"#FFAA00","bold":false,"score":{"name":"@s","objective":"chilitimer_s"}}]
execute as @s[scores={chilitimer=10}] run title @s actionbar [{"text":"CHILI FRENZY: ","color":"#D97373"},{"color":"#FFAA00","bold":false,"score":{"name":"@s","objective":"chilitimer_s"}}]
execute as @s[scores={chilitimer=20,chilitimer_s=1..}] at @s run playsound entity.blaze.ambient master @a ~ ~ ~ 0.5 0.6


# end frenzy
execute as @s[scores={chilitimer_s=..0}] run function platoons:customs/items/chilipowder/end

