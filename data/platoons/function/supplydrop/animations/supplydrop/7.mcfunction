data merge entity @n[type=item_display,tag=supplydrop] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDkxMTBkN2U2MWZhMTFlMzEzNmZlYjc1ODdiY2JmYjhkZGU4OTg2ZTNjNDg1MWM1ZTUxYzc0NTVmODYzYTZiNCJ9fX0="}]}}}}
schedule function platoons:supplydrop/animations/supplydrop/0 3

waypoint modify @n[type=armor_stand,tag=supplydropwaypoint] color hex 6bdaff

execute at @n[type=item_display,tag=supplydrop] run playsound minecraft:block.note_block.bass master @a[distance=0..80] ~ ~ ~ 0.8 1.06 0.05