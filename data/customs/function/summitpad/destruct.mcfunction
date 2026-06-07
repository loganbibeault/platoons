setblock ~ ~ ~ air destroy
stopsound @a block minecraft:block.beacon.ambient
playsound minecraft:block.respawn_anchor.deplete block @a
particle falling_dust{block_state:"minecraft:end_stone"} ~ ~-.5 ~ .3 .3 .3 2 15
particle falling_dust{block_state:"minecraft:warped_stem"} ~ ~-.5 ~ .3 .3 .3 2 15
kill @s
