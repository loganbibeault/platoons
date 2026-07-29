# LOOPS WHILE ANY DIMENSION IS OPEN

# timer bar is only shown to those in the dimension
execute as @n[tag=pocket_exit,type=marker] at @s run bossbar set platoons:pocketcollapse players @a[distance=0..]

# every tick the timer score decreases and is updated on the bar
scoreboard players remove #pocketbar general 1
execute store result bossbar platoons:pocketcollapse value run scoreboard players get #pocketbar general

# portal travel
execute positioned ~ ~2 ~-1 as @e[distance=0..1.9,type=!item_display] run function platoons:pocket/portal/enter with storage platoons:pocket

# collapse timer
scoreboard players remove #pockettimer general 1
execute if score #pockettimer general matches 0 run scoreboard players remove #pockettimer_s general 1
execute if score #pockettimer general matches 0 run scoreboard players set #pockettimer general 20

# when seconds hits -1 it loops back to 59 before it can display as -1, also removes 1 from minutes
execute if score #pockettimer_s general matches -1 run scoreboard players remove #pockettimer_m general 1
execute if score #pockettimer_s general matches -1 run scoreboard players set #pockettimer_s general 59

# apply timer to bossbar
bossbar set platoons:pocketcollapse name [{"text":"Dimension Collapsing In ","color":"#B88BD6"},{"score":{"name":"#pockettimer_m","objective":"general"},"color":"#EBDE6E"},{"text":":","color":"#EBDE6E"},{"score":{"name":"#pockettimer_s","objective":"general"},"color":"#EBDE6E"}]
execute if score #pockettimer_s general matches 0..9 run bossbar set platoons:pocketcollapse name [{"text":"Dimension Collapsing In ","color":"#B88BD6"},{"score":{"name":"#pockettimer_m","objective":"general"},"color":"#EBDE6E"},{"text":":0","color":"#EBDE6E"},{"score":{"name":"#pockettimer_s","objective":"general"},"color":"#EBDE6E"}]

# dimension-specific loop
$execute as @e[tag=pocket_exit,type=marker] at @s run function platoons:pocket/dimensions/$(loop)/loop

