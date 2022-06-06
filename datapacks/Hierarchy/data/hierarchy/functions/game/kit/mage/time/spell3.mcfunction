scoreboard players set @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell3=870..}] EffSlow 3002
kill @e[tag=Anti-fall]
execute as @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell3=870..}] at @s run summon boat ~ ~-0.565 ~ {NoGravity:1b,Type:"birch",Tags:["Anti-fall"]}

execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run teleport @s @e[type=armor_stand,tag=MT3B,distance=..50,limit=1,sort=nearest]
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run kill @e[type=armor_stand,tag=MT3B,distance=..1,limit=1,sort=nearest]
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run scoreboard players set @e[team=!Blue,tag=IsPlaying,distance=..5] EffDamage 1
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run scoreboard players set @e[team=!Blue,tag=IsPlaying,distance=..5] EffSilence 20

execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run teleport @s @e[type=armor_stand,tag=MT3R,distance=..50,limit=1,sort=nearest]
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run kill @e[type=armor_stand,tag=MT3R,distance=..1,limit=1,sort=nearest]
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run scoreboard players set @e[team=!Orange,tag=IsPlaying,distance=..5] EffDamage 1
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=842..870}] at @s run scoreboard players set @e[team=!Orange,tag=IsPlaying,distance=..5] EffSilence 20

scoreboard players set @a[scores={Class=1,Spell3=870..873}] Spell1 0
scoreboard players set @a[scores={Class=1,Spell3=870..873}] Spell2 0
scoreboard players set @a[scores={Class=1,Spell3=870..873}] EffHeal 2
scoreboard players add @a[scores={Class=1,Spell3=870}] Mana 30
execute as @a[scores={Class=1,Spell3=899}] at @s run playsound minecraft:block.portal.trigger master @a[distance=..30] ~ ~ ~ 2 2 1

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell3=842..870}] run particle mycelium ~ ~ ~ 1 1 1 0 100 force
execute at @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell3=870..900}] run particle witch ~ ~1 ~ 0.5 0.5 0.5 0 10 force
execute at @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell3=870..900}] run particle witch ~ ~1 ~ 0.1 5 0.1 0 10 force
execute at @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell3=842..870}] run particle large_smoke ~ ~ ~ 1 1 1 0 10 force
