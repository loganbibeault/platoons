$execute unless score #custom1 general matches $(tempbuy) unless score #custom2 general matches $(tempbuy) unless score #custom3 general matches $(tempbuy) unless score #custom4 general matches $(tempbuy) run function platoons:customs/shop/buy/notavail 
execute unless score #notavail general matches 1 unless dimension platoons:limbo run function platoons:customs/shop/buy/checkafford
execute at @s if dimension platoons:limbo run function platoons:customs/shop/buy/limbo
scoreboard players reset #notavail general