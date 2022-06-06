scoreboard players add tickets Buffer 30
execute if score tickets Buffer matches ..35 run scoreboard players set tickets Buffer 35
data modify block 4995 202 5000 Text3 set value "[\"\",{\"score\":{\"name\":\"tickets\",\"objective\":\"Buffer\"}}]"
playsound block.stone_button.click_off record @s ~ ~ ~ 2 1 1