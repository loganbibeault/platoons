# summon mannequin
summon mannequin ~ ~ ~ {Rotation:[0F,60F],Tags:["offlineplayer","new"],immovable:true,CustomName:"a",description:{"color":gray,"text":"OFFLINE"}}

# link mannequin to marker    
scoreboard players operation @n[tag=new,tag=offlineplayer] ID = @s ID

# copies skin by referencing UUID
data modify entity @n[type=minecraft:mannequin,tag=new] profile.id set from entity @s data.UUID

# copies name by referencing name stored from player head trick
data modify entity @n[type=minecraft:mannequin,tag=new] CustomName set from entity @s data.playername

# copies equipment
data modify entity @n[type=minecraft:mannequin,tag=new] equipment set from entity @s data.equipment

# updates mannequin health
execute store result entity @n[type=minecraft:mannequin,tag=new] Health float 1 run scoreboard players get @s healthstore

# spawns a tiny slime so manneuqin can sit
summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["offlineseat"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.01}]}

# makes mannequin sit on slime
ride @n[type=minecraft:mannequin,tag=new] mount @n[type=slime,tag=offlineseat]

# link slime
scoreboard players operation @n[tag=offlineseat] ID = @s ID


tag @e[tag=offlineplayer,tag=new] remove new

say create
tag @s add offline