$execute if score #custom$(customchange) general matches 1 run data modify storage platoons:shop buttons set value [{text:"[←]",color:"dark_gray"},{text:" "},{text:"[→]",color:"gold",click_event:{action:"run_command",command:"/trigger editcustom set $(customchange)"}}]
$execute if score #custom$(customchange) general matches 2..14 run data modify storage platoons:shop buttons set value [{text:"[←]",color:"gold",click_event:{action:"run_command",command:"/trigger editcustom set -$(customchange)"}},{text:" "},{text:"[→]",color:"gold",click_event:{action:"run_command",command:"/trigger editcustom set $(customchange)"}}]
$execute if score #custom$(customchange) general matches 15 run data modify storage platoons:shop buttons set value [{text:"[←]",color:"gold",click_event:{action:"run_command",command:"/trigger editcustom set -$(customchange)"}},{text:" "},{text:"[→]",color:"dark_gray"}]


function platoons:customs/shop/setup/lookup with storage platoons:shop