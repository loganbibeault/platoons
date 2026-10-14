# store spiritcount as a macro bc dialogs cant do scores for some godforsaken reason ok
execute store result storage platoons:shop spiritcount int 1 run scoreboard players get @s spiritcount

# display list of customs
execute if score @s shop matches 0 run function platoons:customs/shop/display with storage platoons:shop

# check if item is available
execute store result storage platoons:shop tempbuy int 1 run scoreboard players get @s shop
execute if score @s shop matches 1.. run function platoons:customs/shop/buy/checkavail with storage platoons:shop