# particles for opening portal
function platoons:pocket/portal/particles

# general is used as a portal opening timer
scoreboard players remove @s general 1

# one min alert
execute if score @s general matches 1200 run function platoons:pocket/alerts/onemin/1
execute if score @s general matches 1200 run tellraw @a [{"text":"A portal to a ","color":"#B88BD6"},{"text":"pocket dimension","color":"gold"},{"text":" is opening at "},{"text":"[","color":"#7EB4CC"},{"score":{"name":"@s","objective":"x"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"y"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"z"}},{"text":"]","color":"#7EB4CC"},{"text":" in"},{"text":" one minute","color":"#9DE07E"},{"text":"!"}]

# open
execute if score @s general matches 0 at @s run function platoons:pocket/portal/open

# portal travel
execute positioned ~ ~2 ~-1 as @e[distance=0..1.9] run function platoons:pocket/portal/enter with storage platoons:pocket
execute at @e[tag=pocket_exit] positioned ~ ~-1 ~ as @e[tag=!pocket_exit,distance=..1.5] run function platoons:pocket/portal/exit

# loop while open
execute as @e[type=marker,tag=pocket_exit] at @s run function platoons:pocket/portal/openloop