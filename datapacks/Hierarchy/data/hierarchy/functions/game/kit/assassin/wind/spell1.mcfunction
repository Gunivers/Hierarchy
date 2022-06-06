
scoreboard players set @a[scores={Class=15,Spell1=399..}] UpgradedWeapon 100
scoreboard players set @a[scores={Class=15,EffSpeed=..2100,Spell1=399..}] EffSpeed 2100
scoreboard players set @a[scores={Class=15,Spell1=399..}] EffJump 3100
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[gamemode=adventure,scores={Class=15,Spell1=300..}] run particle cloud ~ ~0.2 ~ 0 0 0 0 1 force
