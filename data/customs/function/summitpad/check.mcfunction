execute as @s[tag=!sp_connected] unless block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run function customs:summitpad/connectfinal
execute as @s[tag=sp_connected] unless block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run function customs:summitpad/connect


execute if block ~ ~ ~ air run function customs:summitpad/rescan
execute unless block ~ ~ ~ air unless block ~ ~1 ~ air run function customs:summitpad/rescan
execute unless block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~2 ~ air run function customs:summitpad/rescan
