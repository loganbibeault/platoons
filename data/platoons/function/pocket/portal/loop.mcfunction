# LOOPS WHEN A PORTAL IS OPEN/OPENING

# particles for opening portal
function platoons:pocket/portal/particles

# general is used as a portal opening timer
scoreboard players remove @s general 1

# one min alert
execute if score @s general matches 1200 run function platoons:pocket/alerts/onemin/1
execute if score @s general matches 1200 run tellraw @a [{"text":"A portal to a ","color":"#B88BD6"},{"text":"pocket dimension","color":"gold"},{"text":" is opening at "},{"text":"[","color":"#7EB4CC"},{"score":{"name":"@s","objective":"x"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"y"}},{"text":"] [","color":"#7EB4CC"},{"score":{"name":"@s","objective":"z"}},{"text":"]","color":"#7EB4CC"},{"text":" in"},{"text":" one minute","color":"#9DE07E"},{"text":"!"}]

# open
execute if score @s general matches 0 at @s run function platoons:pocket/portal/open/open

# loop while open
execute as @n[type=interaction,tag=keyhole_open] at @s run function platoons:pocket/portal/openloop with storage platoons:pocket