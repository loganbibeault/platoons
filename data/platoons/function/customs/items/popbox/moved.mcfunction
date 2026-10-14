particle block{block_state:"minecraft:lime_shulker_box"} ~ ~ ~ 0.3 0.3 0.3 1 15
tp @n[tag=popbox_face] ~ -64 ~
tp @n[tag=popbox_face_low] ~ -64 ~
tp @s ~ -64 ~
execute positioned ~ -64 ~ run kill @n[tag=popbox_face]
execute positioned ~ -64 ~ run kill @n[tag=popbox]
execute positioned ~ -64 ~ run kill @n[tag=popbox_face_low]