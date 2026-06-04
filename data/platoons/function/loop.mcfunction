tag @a[scores={killed_by_player=1..}] add isdead

# adds 0 to kills so unset values show/can be detected as 0
scoreboard players add @a Kills 0
scoreboard players add @a killed_by_player 0
scoreboard players add @a player_kills 0

# updates player xyz scores
execute as @a run execute store result score @s x run data get entity @s Pos[0]
execute as @a run execute store result score @s y run data get entity @s Pos[1]
execute as @a run execute store result score @s z run data get entity @s Pos[2]

# limbo
function limbo:loop

# tiers
execute if entity @a[scores={player_kills=1..}] as @a[scores={killed_by_player=1..,player_kills=0}] run function platoons:tier/death
execute as @a[tag=!isdead,team=!nospirit] run function platoons:tier/set

# post-limbo spirit cooldown
scoreboard players set @a[tag=isdead] spirittimer 1200
scoreboard players remove @a spirittimer 1

team join nospirit @a[scores={spirittimer=1..,Kills=..0}]
team join Tier0 @a[scores={spirittimer=..0},team=nospirit]

# ======================================================
# END OF LINE / RESETS
# ======================================================

# resets the sub-tick kill/death checks
scoreboard players reset @a killed_by_player
scoreboard players reset @a player_kills

team join limboteam @a[tag=isdead]
scoreboard players set @a[tag=isdead] Kills 0


# ======================================================
# RE - LOOP
# ======================================================
schedule clear platoons:loop
schedule function platoons:loop 1