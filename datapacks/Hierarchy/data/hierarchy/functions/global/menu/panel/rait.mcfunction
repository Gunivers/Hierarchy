#Rain Cycle
playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
setblock 0 85 0 red_stained_glass
gamerule doWeatherCycle false
#~ 'weather clear' no longer has random duration. The duration is now 5 minutes
weather clear
clone 3 123 2 4 123 2 5005 202 5002
particle firework 5005 202 5002 0.1 0.1 0.1 0.1 8 force
