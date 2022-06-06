#Rain Cycle
playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
setblock 0 85 0 green_stained_glass
gamerule doWeatherCycle true
clone 3 113 2 4 113 2 5005 202 5002
particle firework 5005 202 5002 0.1 0.1 0.1 0.1 8 force
