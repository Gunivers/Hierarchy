#Day Cycle
playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
setblock 0 71 0 red_stained_glass
gamerule doDaylightCycle false
time set 6000
clone 3 121 2 4 121 2 5005 200 5002
particle firework 5005 200 5002 0.1 0.1 0.1 0.1 8 force
