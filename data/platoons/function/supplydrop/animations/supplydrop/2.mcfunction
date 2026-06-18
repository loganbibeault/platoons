data merge entity @n[type=item_display,tag=supplydrop] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhYmQ2ZGY3ZjcxMTdmYzkwOTkzMDEzMGE4ZjkwNzUyOGZhNGU0YjAwZWM4NGEwMjRmNDU3NzM1NDRlZTM0ZiJ9fX0="}]}}}}
schedule function platoons:supplydrop/animations/supplydrop/3 3

execute at @n[type=item_display,tag=supplydrop] run playsound minecraft:block.note_block.bit master @a[distance=0..55] ~ ~ ~ 0.6 1 0.05


waypoint modify @n[type=armor_stand,tag=supplydropwaypoint] color hex 24a7ff