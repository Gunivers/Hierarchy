execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell2=199}] run particle cloud ~ ~0.2 ~ 5 0 5 0 70
execute at @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell2=199}] run particle sweep_attack ~ ~0.2 ~ 5 0 5 0 15

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=25}] run particle cloud ~ ~ ~ 0.4 0.4 0.4 0 5 force
execute at @e[type=armor_stand,scores={Class=-25}] run particle explosion ~ ~ ~ 0 0 0 0 1 force


#Player class(25) Spell2(199) inGame(1:) m:adventure set [r:7 IsPlaying] EffRegen 1020 {block Spell2EffRegen}
execute as @a[gamemode=adventure,team=Blue,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players set @a[team=Blue,scores={EffRegen=..1020},tag=IsPlaying,distance=..7] EffRegen 1020
execute as @a[gamemode=adventure,team=Orange,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players set @a[team=Orange,scores={EffRegen=..1020},tag=IsPlaying,distance=..7] EffRegen 1020
#END: Spell2EffRegen

#Player class(25) Spell2(199) InGame(1:) m:adventure {block class(25)Spell2}
#[team:"Blue"]
execute as @a[gamemode=adventure,team=Blue,scores={Class=25,InGame=1..,Spell2=199}] at @s run effect give @e[team=!Blue,tag=IsPlaying,distance=..7] levitation 1 10 true
execute as @a[gamemode=adventure,team=Blue,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players set @a[team=!Blue,tag=IsPlaying,distance=..7] EffSilence 60
execute as @a[gamemode=adventure,team=Blue,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players operation @a[team=!Blue,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @a[gamemode=adventure,team=Blue,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players set @a[team=!Blue,scores={EffDamage=..1001},tag=IsPlaying,distance=..7] EffDamage 1001
#[team:"Orange"]
execute as @a[gamemode=adventure,team=Orange,scores={Class=25,InGame=1..,Spell2=199}] at @s run effect give @e[team=!Orange,tag=IsPlaying,distance=..7] levitation 1 10 true
execute as @a[gamemode=adventure,team=Orange,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players set @a[team=!Orange,tag=IsPlaying,distance=..7] EffSilence 60
execute as @a[gamemode=adventure,team=Orange,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players operation @a[team=!Orange,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=25,InGame=1..,Spell2=199}] at @s run scoreboard players set @a[team=!Orange,scores={EffDamage=..1001},tag=IsPlaying,distance=..7] EffDamage 1001
#[]
execute as @e[gamemode=adventure,scores={Class=25,InGame=1..,Spell2=199}] at @s run playsound entity.ender_dragon.flap record @a[distance=..30] ~ ~ ~ 2 0.5 1
#END: class(25)Spell2
