scoreboard players add #debug general 1
execute if score #debug general matches 1 run say debug ON
execute if score #debug general matches 2 run say debug OFF
execute if score #debug general matches 2 run scoreboard players set #debug general 0


