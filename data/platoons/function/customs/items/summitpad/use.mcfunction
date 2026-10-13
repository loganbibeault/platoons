setblock ~ ~ ~ air replace
stopsound @a[distance=0..10] block block.beacon.ambient
playsound minecraft:block.respawn_anchor.deplete block @a
particle block{block_state:"minecraft:end_portal_frame"} ~ ~-.5 ~ .3 .3 .3 2 60
particle minecraft:sonic_boom ~ ~1.5 ~
kill @s