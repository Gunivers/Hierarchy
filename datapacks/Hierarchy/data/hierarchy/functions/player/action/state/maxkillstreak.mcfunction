scoreboard players operation @s Var1 = @s MaxKillStreak
scoreboard players operation @s Var1 -= @s KillStreak
scoreboard players operation @s[scores={Var1=..-1}] MaxKillStreak = @s KillStreak
