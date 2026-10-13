tag @s add connected
playsound block.beacon.activate block @a
summon marker ~ ~ ~ {Tags:["summitpad_exit"]}
summon block_display ~ ~ ~ {Tags:["summitpadhitbox"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,0.125f,-.375f],scale:[.75f,.75f,.75f]},block_state:{Name:"minecraft:dark_prismarine"}}
summon block_display ~ ~ ~ {Tags:["summitpadhitbox"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.525f,-.025f,-.525f],scale:[1.05f,1.05f,1.05f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
summon shulker ~ ~ ~ {Color:9b,Tags:["summitpadhitbox"],Silent:1b,Invulnerable:1b,Glowing:0b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}