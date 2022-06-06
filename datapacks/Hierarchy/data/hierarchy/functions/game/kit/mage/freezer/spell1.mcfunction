scoreboard players add @a[scores={Class=4,Spell1=..-1}] Spell1 1
execute as @a[scores={Class=4,InGame=1..,Spell1=-199}] at @s run playsound minecraft:ambient.underwater.enter master @a[distance=..7] ~ ~ ~ 2 1 1
execute as @a[scores={Class=4,InGame=1..,Spell1=-199}] at @s run particle minecraft:falling_water ~ ~1 ~ 0.2 0.5 0.2 1 300 force

effect give @e[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=..-25}] slowness 1 1 true
scoreboard players set @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=..-1}] EffInvisibility 2
scoreboard players set @a[gamemode=adventure,scores={Class=4,EffInvulnerable=..10,InGame=1..,Spell1=..-1}] EffInvulnerable 10
scoreboard players set @a[gamemode=adventure,scores={Class=4,EffFly=..10,InGame=1..,Spell1=..-1}] EffFly 5
execute at @e[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=..-5}] run particle dripping_water ~ ~1 ~ 3 3 3 0 1 force

scoreboard players set @a[scores={Class=4,InGame=1..,Spell1=-2..-1}] Spell1 600
scoreboard players set @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=..-1,UsePotion=2}] Spell1 600
execute at @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=600..}] run particle splash ~ ~0.5 ~ 7 0.1 7 1 1000 force
execute at @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=600..}] run particle falling_water ~ ~1 ~ 0.3 0.6 0.3 1 300 force
execute as @a[scores={Class=4,InGame=1..,Spell1=600..}] at @s run playsound entity.player.splash record @a[distance=..15] ~ ~ ~ 2 1 1

execute as @a[gamemode=adventure,team=Blue,scores={Class=4,InGame=1..,Spell1=600..}] at @s run scoreboard players set @e[team=!Blue,tag=IsPlaying,distance=..10] EffDamage 2
execute as @a[gamemode=adventure,team=Orange,scores={Class=4,InGame=1..,Spell1=600..}] at @s run scoreboard players set @e[team=!Orange,tag=IsPlaying,distance=..10] EffDamage 2
execute as @a[gamemode=adventure,team=Blue,scores={Class=4,InGame=1..,Spell1=600..}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..10] TouchID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=4,InGame=1..,Spell1=600..}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..10] TouchID = @s ID
