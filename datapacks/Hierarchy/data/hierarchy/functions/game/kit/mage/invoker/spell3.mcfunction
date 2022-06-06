execute at @a[scores={Class=6,Spell3=1799..}] run particle dust 2 2 2 2 ~ ~1 ~ 7 1 7 1 250 force
execute at @a[scores={Class=6,Spell3=1799..}] run particle smoke ~ ~1 ~ 0 0.5 0 1 300 force
execute as @a[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1002},tag=IsPlaying,distance=..10] EffDamage 1002
execute as @a[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players set @e[team=!Blue,scores={EffSlow=..3040},tag=IsPlaying,distance=..10] EffSlow 3040
execute as @a[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players set @e[team=Blue,scores={EffHeal=..2002},tag=IsPlaying,distance=..10] EffHeal 2002
execute as @a[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run effect give @e[team=Orange,tag=IsPlaying,distance=..10] blindness 3 1 true
execute as @a[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force @a[team=Orange,tag=IsPlaying,distance=..10]
execute as @a[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..10] TouchID = @s ID
execute as @a[scores={Class=6,Spell3=1799}] at @s run playsound entity.firework_rocket.twinkle record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @a[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1002},tag=IsPlaying,distance=..10] EffDamage 1002
execute as @a[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players set @e[team=!Orange,scores={EffSlow=..3040},tag=IsPlaying,distance=..10] EffSlow 3040
execute as @a[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players set @e[team=Orange,scores={EffHeal=..2002},tag=IsPlaying,distance=..10] EffHeal 2002
execute as @a[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run effect give @e[team=Blue,tag=IsPlaying,distance=..10] blindness 3 1 true
execute as @a[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force @a[team=Blue,tag=IsPlaying,distance=..10]
execute as @a[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell3=1799..}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..10] TouchID = @s ID
