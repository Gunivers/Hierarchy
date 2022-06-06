execute as @e[gamemode=adventure,team=Blue,scores={Class=5,InGame=1..,Spell2=499}] at @s run scoreboard players set @a[team=Blue,tag=IsPlaying,distance=..10] EffHeal 1002
execute as @e[gamemode=adventure,scores={Class=5,InGame=1..,Spell2=499}] at @s run playsound entity.zombie.infect record @a[distance=..10] ~ ~ ~ 2 2 1
execute as @e[gamemode=adventure,team=Orange,scores={Class=5,InGame=1..,Spell2=499}] at @s run scoreboard players set @e[team=Orange,tag=IsPlaying,distance=..10] EffHeal 1002
execute at @e[gamemode=adventure,team=Blue,scores={Class=5,InGame=1..,Spell2=499..}] at @e[team=Blue,tag=IsPlaying,distance=..10] run particle happy_villager ~ ~1 ~ 0.3 0.8 0.3 0 20 force
execute at @e[gamemode=adventure,team=Orange,scores={Class=5,InGame=1..,Spell2=499..}] at @e[team=Orange,tag=IsPlaying,distance=..10] run particle happy_villager ~ ~1 ~ 0.3 0.8 0.3 0 20 force
