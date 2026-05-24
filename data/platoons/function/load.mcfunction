# ======================================================
# GAMERULES
# ======================================================

gamerule spawn_phantoms false
gamerule limited_crafting true
gamerule max_block_modifications 999999999
gamerule send_command_feedback false

# ======================================================
# WORLD
# ======================================================

worldborder set 1000
worldborder damage amount .1
worldborder damage buffer 1
worldborder center 0 0 

execute positioned 0 0 0 positioned over world_surface run setworldspawn ~ ~ ~

# ======================================================
# SCOREBOARD
# ======================================================

# pay attention to the last field! 'dummy' means it doesnt have any inherent function

# this is the main variable objective
scoreboard objectives add general dummy

scoreboard objectives add totalkills totalKillCount
scoreboard objectives add permadeaths deathCount
scoreboard objectives add deathmatch dummy
scoreboard objectives add Deaths deathCount

# current killstreak count, shown in tab menu
scoreboard objectives add Kills playerKillCount
scoreboard objectives setdisplay list Kills

# simple kill detection: these detect when a player is currently killing or being killed within a tick, gets reset after every tick
scoreboard objectives add player_kills minecraft.custom:minecraft.player_kills
scoreboard objectives add killed_by_player minecraft.killed_by:minecraft.player

# xyz coordinates that can be stored seperately for each entity. will be set later using execute store commands
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

# ======================================================
# TEAMS
# ======================================================

# LIMBO
team add limboteam
team modify limboteam seeFriendlyInvisibles true
team modify limboteam color dark_aqua

# STANDARD TIMER
scoreboard objectives add tickdownseconds dummy
scoreboard objectives add tickdownminutes dummy
scoreboard objectives add tickdown dummy

# TIERS
team modify limboteam prefix {"text":"[L] ","color":"gray"}
team add Tier0
team modify Tier0 prefix {"text":"[☠] ","color":"gray"}
team add Tier1
team modify Tier1 prefix {"text":"[I] ","color":"aqua"}
team add Tier2
team modify Tier2 prefix {"text":"[II] ","color":"green"}
team add Tier3
team modify Tier3 prefix {"text":"[III] ","color":"#EED126"}
team add Tier4
team modify Tier4 prefix {"text":"[IV] ","color":"#EE7D26"}
team add Tier5
team modify Tier5 prefix {"text":"[V] ","color":"#EE2644"}
team modify Tier0 seeFriendlyInvisibles false
team modify Tier1 seeFriendlyInvisibles false
team modify Tier2 seeFriendlyInvisibles false
team modify Tier3 seeFriendlyInvisibles false
team modify Tier4 seeFriendlyInvisibles false
team modify Tier5 seeFriendlyInvisibles false

# ======================================================
# DEBUG (TEMP)
# ======================================================

say reloaded! 

# for debug: scoreboard players set #debug general 1
execute if score #debug general matches 1 run gamerule send_command_feedback true
execute if score #debug general matches 1 run say DEBUG MODE!

# ======================================================
# BEGIN
# ======================================================

function platoons:loop