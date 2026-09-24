# temporarily store ID in fakeplayer #this
scoreboard players operation #this ID = @s ID

# always teleport self (marker) to corresponding player
tp @s @a[predicate=platoons:mannequin/this_id,limit=1]

# keep health and Kills up to date
scoreboard players operation @s healthstore = @a[predicate=platoons:mannequin/this_id,limit=1] health
scoreboard players operation @s Kills = @a[predicate=platoons:mannequin/this_id,limit=1] Kills

# if player is offline, create mannequin
execute unless entity @a[predicate=platoons:mannequin/this_id] run function platoons:mannequin/create

