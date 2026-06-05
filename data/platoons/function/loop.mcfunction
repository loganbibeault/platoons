tag @a[scores={killed_by_player=1..}] add isdead

# adds 0 so unset values show/detect as 0
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
function platoons:tier/loop


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