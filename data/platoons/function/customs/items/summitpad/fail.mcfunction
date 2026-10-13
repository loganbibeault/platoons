setblock ~ ~ ~ air replace
playsound minecraft:block.stone.break block @a
particle block{block_state:"minecraft:end_portal_frame"} ~ ~-.5 ~ .3 .3 .3 2 60
summon item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",count:1b,components:{custom_name:'[{"italic":false,"text":"S","color":"#29BAFF"},{"text":"u","color":"#52D4D9"},{"text":"m","color":"#56EE9E"},{"text":"m","color":"#63F58E"},{"text":"i","color":"#7FEF70"},{"text":"t ","color":"#d6fa82"},{"text":"P","color":"#EEE677"},{"text":"a","color":"#EECE7A"},{"text":"d","color":"#E6B770"}]',custom_data:{tag:{summitpad:1}}}}}
kill @s