# debug marker tracking
#execute at @e[tag=marker_id] run particle flame ~ ~3 ~

# function to keep player markers synced with the players
execute as @e[type=marker,tag=marker_id,tag=!offline] at @s[tag=!offline_dead] run function platoons:mannequin/follow

# offline checks
execute as @e[type=marker,tag=marker_id,tag=offline] at @s run function platoons:mannequin/offline
execute as @e[type=marker,tag=marker_id,tag=offline_dead] at @s run function platoons:mannequin/offline_dead

# apply damage difference at relog
scoreboard players remove @a applydamage 1
execute as @a[scores={applydamage=1}] run function platoons:mannequin/update_health

# clear ppl who died
clear @a[tag=clearself]