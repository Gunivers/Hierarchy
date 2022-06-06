scoreboard players operation @s Var1 = @s KillNumber
scoreboard players operation @s Var1 /= @s DeathNumber
scoreboard players operation @s Var2 = @s KillNumber
scoreboard players operation @s Var2 *= 100 Constant
scoreboard players operation @s Var2 /= @s DeathNumber
scoreboard players operation @s Var2 %= 100 Constant

scoreboard players operation @s Var3 = @s WinNumber
scoreboard players operation @s Var3 /= @s LoseNumber
scoreboard players operation @s Var4 = @s WinNumber
scoreboard players operation @s Var4 *= 100 Constant
scoreboard players operation @s Var4 /= @s LoseNumber
scoreboard players operation @s Var4 %= 100 Constant

scoreboard players operation @s Var5 = @s TimePlayed
scoreboard players operation @s Var5 /= 20 Constant
scoreboard players operation @s Var6 = @s Var5
scoreboard players operation @s Var7 = @s Var5

scoreboard players operation @s Var5 %= 60 Constant

scoreboard players operation @s Var6 /= 60 Constant
scoreboard players operation @s Var6 %= 60 Constant

scoreboard players operation @s Var7 /= 3600 Constant



tellraw @s ["",{"text":"\n\nSCORES:\n","color":"aqua","bold":true},{"text":"\n - Global:","color":"aqua","bold":false},{"text":"\n      Games played: ","color":"gray"},{"score":{"name":"@p","objective":"GameNumber"},"color":"gray"},{"text":"\n      Games won: ","color":"green"},{"score":{"name":"@p","objective":"WinNumber"},"color":"green"},{"text":"\n      Games lost: ","color":"red"},{"score":{"name":"@p","objective":"LoseNumber"},"color":"red"},{"text":"\n      Ratio: ","color":"blue"},{"score":{"name":"@p","objective":"Var3"},"color":"blue"},{"text":".","color":"blue"},{"score":{"name":"@p","objective":"Var4"},"color":"blue"},{"text":"\n      Time played: ","color":"dark_purple"},{"score":{"name":"@p","objective":"Var7"},"color":"dark_purple"},{"text":"h ","color":"dark_purple"},{"score":{"name":"@p","objective":"Var6"},"color":"dark_purple"},{"text":"m ","color":"dark_purple"},{"score":{"name":"@p","objective":"Var5"},"color":"dark_purple"},{"text":"s ","color":"dark_purple"},{"text":"\n - Last Game:","color":"aqua"},{"text":"\n      Kills: ","color":"green"},{"score":{"name":"@p","objective":"KillNumber"},"color":"green"},{"text":"\n      Deaths: ","color":"red"},{"score":{"name":"@p","objective":"DeathNumber"},"color":"red"},{"text":"\n      Ratio: ","color":"blue"},{"score":{"name":"@p","objective":"Var1"},"color":"blue"},{"text":".","color":"blue"},{"score":{"name":"@p","objective":"Var2"},"color":"blue"},{"text":"\n      Best Kill Streak: ","color":"dark_purple"},{"score":{"name":"@p","objective":"MaxKillStreak"},"color":"dark_purple"},{"text":"\n      Earned coins: ","color":"gold"},{"score":{"name":"@p","objective":"CoinsNumber"},"color":"gold"},{"text":"\n\nNOTE: Scores are reset when the map is reset.\n\n","color":"aqua"}]
tag @s remove DispScores
