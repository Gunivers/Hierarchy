execute as @a[gamemode=adventure,team=Blue,scores={Class=5,InGame=1..,Spell1=298}] at @s run effect give @e[team=!Blue,tag=IsPlaying,distance=..7] levitation 1 10 true
execute as @a[gamemode=adventure,scores={Class=5,InGame=1..,Spell1=298}] at @s run particle cloud ~ ~0.2 ~ 3 0 3 0.1 30 force
execute as @a[gamemode=adventure,team=Blue,scores={Class=5,InGame=1..,Spell1=298}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @a[gamemode=adventure,team=Blue,scores={Class=5,InGame=1..,Spell1=298}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1001},tag=IsPlaying,distance=..7] EffDamage 1001
execute as @e[gamemode=adventure,scores={Class=5,InGame=1..,Spell1=299..}] at @s run playsound entity.enderdragon.flap record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @a[gamemode=adventure,team=Orange,scores={Class=5,InGame=1..,Spell1=298}] at @s run effect give @e[team=!Orange,tag=IsPlaying,distance=..7] levitation 1 10 true
execute as @a[gamemode=adventure,team=Orange,scores={Class=5,InGame=1..,Spell1=298}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=5,InGame=1..,Spell1=298}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1001},tag=IsPlaying,distance=..7] EffDamage 1001
