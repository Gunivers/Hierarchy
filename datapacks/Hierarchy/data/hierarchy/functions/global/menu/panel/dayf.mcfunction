#Day Cycle
playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
setblock 0 71 0 green_stained_glass
gamerule doDaylightCycle true
clone 3 111 2 4 111 2 5005 200 5002
particle firework 5005 200 5002 0.1 0.1 0.1 0.1 8 force
