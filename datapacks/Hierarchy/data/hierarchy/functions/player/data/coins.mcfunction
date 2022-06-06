#Coins
execute as @a[gamemode=adventure,scores={InGame=1..}] at @s run scoreboard players operation @p[distance=..1] NextCoins = @p[distance=..1] KillNumber
execute as @a[gamemode=adventure,scores={DeathNumber=1..,InGame=1..}] at @s run scoreboard players operation @p[distance=..1] NextCoins /= @p[distance=..1] DeathNumber
scoreboard players add @a[gamemode=adventure,scores={InGame=1..}] NextCoins 1
execute as @a[gamemode=adventure,scores={Timer=1},tag=InGame] at @s run scoreboard players operation @p[distance=..1] Coins += @p[distance=..1] NextCoins
execute as @a[gamemode=adventure,scores={Timer=1},tag=InGame] at @s run scoreboard players operation @p[distance=..1] CoinsNumber += @p[distance=..1] NextCoins
