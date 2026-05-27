tag @a[scores={killed_by_player=1..}] add isdead
function limbo:loop



# ======================================================
# END OF LINE / RESETS
# ======================================================
scoreboard players reset @a killed_by_player
team join limboteam @a[tag=isdead]


# ======================================================
# RE - LOOP
# ======================================================
schedule clear platoons:loop
schedule function platoons:loop 1