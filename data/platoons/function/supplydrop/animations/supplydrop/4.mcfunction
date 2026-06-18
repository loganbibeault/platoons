data merge entity @n[type=item_display,tag=supplydrop] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk0YzMxNjczYmQ0ZGNhZjc0YzIwN2FhMTU0MjM5NDRkMzY4YjU4OWQwMWViMTU1ZjU3NzM0MTM3MGM5ZDEyZiJ9fX0="}]}}}}
schedule function platoons:supplydrop/animations/supplydrop/5 3

execute at @n[type=item_display,tag=supplydrop] run playsound minecraft:block.note_block.bit master @a[distance=0..55] ~ ~ ~ 0.6 0.79 0.05