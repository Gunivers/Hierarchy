execute as @a[gamemode=adventure,scores={Class=3,InGame=1..,Spell1=139..}] at @s run playsound entity.ender_dragon.flap record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[gamemode=adventure,scores={Class=3,InGame=1..,Spell1=119..}] run particle effect ~ ~1 ~ 0.3 1 0.3 0 3 force
scoreboard players set @e[gamemode=adventure,scores={Class=3,InGame=1..,Spell1=139..}] EffSpeed 3002

execute at @a[team=Blue,scores={Class=3,InGame=1..,Spell1=140}] run effect give @e[tag=AffectByOrange,distance=..4] resistance 2 100 true
execute at @a[team=Blue,scores={Class=3,InGame=1..,Spell1=140}] run summon lightning_bolt
execute at @a[team=Blue,scores={Class=3,InGame=1..,Spell1=140}] run scoreboard players operation @a[tag=AffectByBlue,distance=..3] TouchID = @s ID
execute at @a[team=Orange,scores={Class=3,InGame=1..,Spell1=140}] run effect give @e[tag=AffectByBlue,distance=..4] resistance 2 100 true
execute at @a[team=Orange,scores={Class=3,InGame=1..,Spell1=140}] run summon lightning_bolt
execute at @a[team=Orange,scores={Class=3,InGame=1..,Spell1=140}] run scoreboard players operation @a[tag=AffectByOrange,distance=..3] TouchID = @s ID

execute as @a[gamemode=adventure,team=Blue,scores={Class=3,InGame=1..,Spell1=119..}] at @s run scoreboard players set @e[team=Orange,tag=IsPlaying,distance=..2] C3 400
execute as @a[gamemode=adventure,team=Orange,scores={Class=3,InGame=1..,Spell1=119..}] at @s run scoreboard players set @e[team=Blue,tag=IsPlaying,distance=..2] C3 400
execute as @a[gamemode=adventure,team=Blue,scores={Class=3,InGame=1..,Spell1=119..}] at @s run scoreboard players set @e[team=Orange,scores={EffSlow=..3020},tag=IsPlaying,distance=..2] EffSlow 3020
execute as @a[gamemode=adventure,team=Orange,scores={Class=3,InGame=1..,Spell1=119..}] at @s run scoreboard players set @e[team=Blue,scores={EffSlow=..3020},tag=IsPlaying,distance=..2] EffSlow 3020
