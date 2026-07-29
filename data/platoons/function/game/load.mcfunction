# ======================================================
# GAMERULES
# ======================================================

gamerule spawn_phantoms false
gamerule spawn_patrols false
gamerule spawn_wandering_traders false
gamerule limited_crafting true
gamerule max_block_modifications 999999999
gamerule send_command_feedback false
gamerule allow_entering_nether_using_portals false

# ======================================================
# WORLD
# ======================================================

forceload add 0 0

worldborder set 1000
worldborder damage amount .1
worldborder damage buffer 1
worldborder center 0 0 

execute positioned 0 0 0 positioned over world_surface run setworldspawn ~ ~ ~

# limbo stuff

time of platoons:limbo set 18000
time of platoons:limbo pause

# end setup for leaving
execute in the_end run forceload add 0 0
execute in the_end run fill -1 0 -1 1 8 1 barrier
execute in the_end run fill 0 2 0 0 6 0 air
execute in the_end run fill -1 1 -1 1 1 1 end_portal
kill @e[tag=respawn_gateway]
execute in the_end run summon block_display 0 0 0 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,8f,2.5f],scale:[-5f,-8f,-5f]},block_state:{Name:"minecraft:end_gateway"}}

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

# x and y to track distance to an event
scoreboard objectives add distx dummy
scoreboard objectives add distz dummy

# limbo timer
scoreboard objectives add limbotimer dummy
scoreboard objectives add limbotimer_s dummy
scoreboard objectives add limbotimer_m dummy

# spirit timer (post respawn state)
scoreboard objectives add spirittimer dummy

# tierup anim
scoreboard objectives add tierup dummy

# shop trigger
scoreboard objectives add shop trigger
# ======================================================
# TEAMS
# ======================================================

# LIMBO
team add limboteam
team modify limboteam seeFriendlyInvisibles true
team modify limboteam color dark_aqua

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

# NO SPIRIT
team add nospirit
team modify nospirit color dark_aqua
team modify nospirit prefix {"text":"[☠] ","color":"gray"}

# ======================================================
# MISC
# ======================================================

# pocket bossbar
bossbar add platoons:pocketcollapse {"text":"Dimension Collapsing In","color":"#B88BD6"}
bossbar set platoons:pocketcollapse color blue
bossbar set platoons:pocketcollapse max 18000
bossbar set platoons:pocketcollapse style notched_20

# refreshes item display entity used for calculating distances
kill 0000000d-0109-0097-0116-000000000104
summon item_display 0. 0 0. {UUID:[I;13,17367191,18219008,260]}


# ======================================================
# DEBUG (TEMP)
# ======================================================

say reloaded! 

# for debug: scoreboard players set #debug general 1
execute if score #debug general matches 1 run gamerule send_command_feedback true
execute if score #debug general matches 1 run say DEBUG MODE!

# ======================================================
# VFX / SFX
# ======================================================

schedule clear platoons:limbo/animations/respawn/1
schedule clear platoons:limbo/animations/respawn/2
schedule clear platoons:limbo/animations/respawn/3
schedule clear platoons:limbo/animations/respawn/4
schedule clear platoons:limbo/animations/respawn/5
schedule clear platoons:limbo/animations/respawn/6
schedule clear platoons:limbo/animations/respawn/7
schedule clear platoons:limbo/animations/respawn/8
schedule clear platoons:limbo/animations/respawn/9
schedule clear platoons:limbo/animations/respawn/10
schedule clear platoons:limbo/animations/respawn/11
schedule clear platoons:limbo/animations/respawn/12
schedule clear platoons:limbo/animations/respawn/13
schedule clear platoons:limbo/animations/respawn/14
schedule clear platoons:limbo/animations/respawn/15
schedule clear platoons:limbo/animations/respawn/16
schedule clear platoons:limbo/animations/respawn/17
function platoons:limbo/animations/respawn/1

# ======================================================
# BEGIN
# ======================================================

schedule clear platoons:game/loop
function platoons:game/loop