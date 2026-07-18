# timer bar is only shown to those in the dimension
bossbar set platoons:pocketcollapse players @a[distance=0..]

# every tick the timer score decreases and is updated on the bar
scoreboard players remove #pocketbar general 1
execute store result bossbar platoons:pocketcollapse value run scoreboard players get #pocketbar general