# spawns the drop one minute after announcing it
#schedule function platoons:shop/activate 60s

function platoons:supplydrop/alerts/announce/1

tellraw @a [{"text":"A","color":"gold"},{"text":" supply drop","color":"#9DE07E"},{"text":" will arrive in"},{"text":" one minute","color":"#EBDE6E"},{"text":"!"}]