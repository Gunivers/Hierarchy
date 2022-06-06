execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] as @e[tag=363B] at @s run particle end_rod ~ ~2 ~ 0 0 0 0 1 force @a[team=Blue,tag=IsPlaying]
execute as @e[tag=363B] at @s run scoreboard players set @a[team=Blue,scores={Class=36},tag=IsPlaying,distance=..1] UpgradedWeapon 2
execute as @e[tag=363B] at @s run scoreboard players set @a[team=Blue,scores={EffResistance=..2},tag=IsPlaying,distance=..1] EffResistance 2
execute as @e[tag=363B] at @s run scoreboard players set @a[scores={EffPoison=..1002},tag=AffectByBlue,distance=..2] EffPoison 1002
execute as @e[tag=363B] at @s run scoreboard players operation @a[tag=AffectByBlue,distance=..2] TouchID = @s ID

scoreboard players set @e[scores={Timer=38..},tag=363G] Timer -1
execute as @e[tag=363G] at @s as @a[scores={HaveObjective=1..},tag=IsPlaying,distance=..2] at @s run teleport @s ~ ~ ~
scoreboard players set @e[scores={Timer=0..},tag=363G] Timer -1

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] as @e[tag=363R] at @s run particle end_rod ~ ~2 ~ 0 0 0 0 1 force @a[team=Orange,tag=IsPlaying]
execute as @e[tag=363R] at @s run scoreboard players set @a[team=Orange,scores={Class=36},tag=IsPlaying,distance=..1] UpgradedWeapon 2
execute as @e[tag=363R] at @s run scoreboard players set @a[team=Orange,scores={EffResistance=..2},tag=IsPlaying,distance=..1] EffResistance 2
execute as @e[tag=363R] at @s run scoreboard players set @a[scores={EffPoison=..1002},tag=AffectByOrange,distance=..2] EffPoison 1002
execute as @e[tag=363R] at @s run scoreboard players operation @a[tag=AffectByOrange,distance=..2] TouchID = @s ID
