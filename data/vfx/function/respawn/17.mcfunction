execute in platoons:limbo run execute as @e[type=player,distance=0..] run title @s times 0 100 0
schedule function vfx:respawn/1 5 replace


execute in platoons:limbo run execute as @e[type=player,distance=0..,scores={limbotimer_s=10..}] run title @s actionbar [{"text":"RESPAWNING... ","bold":true,"color":"#2a6e98"},{"color":"dark_gray","bold":false,"score":{"name":"@s","objective":"limbotimer_m"}},{"color":"dark_gray","bold":false,"text":":"},{"color":"dark_gray","bold":false,"score":{"name":"@s","objective":"limbotimer_s"}}]

execute in platoons:limbo run execute as @e[type=player,distance=0..,scores={limbotimer_s=..9}] run title @s actionbar [{"text":"RESPAWNING... ","bold":true,"color":"#2a6e98"},{"color":"dark_gray","bold":false,"score":{"name":"@s","objective":"limbotimer_m"}},{"color":"dark_gray","bold":false,"text":":0"},{"color":"dark_gray","bold":false,"score":{"name":"@s","objective":"limbotimer_s"}}]