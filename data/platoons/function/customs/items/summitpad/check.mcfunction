execute if block ~ ~ ~ air run function platoons:customs/items/summitpad/rescan
execute unless block ~ ~ ~ air unless block ~ ~1 ~ air run function platoons:customs/items/summitpad/rescan
execute unless block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~2 ~ air run function platoons:customs/items/summitpad/rescan

execute as @s[tag=!connected] unless block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run function platoons:customs/items/summitpad/connect