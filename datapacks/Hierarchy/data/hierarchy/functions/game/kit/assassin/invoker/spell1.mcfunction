execute as @a[team=Blue,scores={Class=16,Spell1=599..}] at @s run scoreboard players set @e[team=Blue,tag=IsPlaying,distance=..10] EffInvisibility 40
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Blue,scores={Class=16,Spell1=592..598}] at @e[team=Blue,tag=IsPlaying,distance=..10] run summon bat ~ ~-70 ~ {Silent:1}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Blue,scores={Class=16,Spell1=592..598}] at @e[team=Blue,tag=IsPlaying,distance=..10] run summon bat ~ ~-69.5 ~ {Silent:1}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Blue,scores={Class=16,Spell1=592..598}] at @e[team=Blue,tag=IsPlaying,distance=..10] run summon bat ~ ~-69 ~
execute as @a[team=Orange,scores={Class=16,Spell1=599..}] at @s run scoreboard players set @e[team=Orange,tag=IsPlaying,distance=..10] EffInvisibility 40
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Orange,scores={Class=16,Spell1=592..598}] at @e[team=Orange,tag=IsPlaying,distance=..10] run summon bat ~ ~-70 ~ {Silent:1}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Orange,scores={Class=16,Spell1=592..598}] at @e[team=Orange,tag=IsPlaying,distance=..10] run summon bat ~ ~-69.5 ~ {Silent:1}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Orange,scores={Class=16,Spell1=592..598}] at @e[team=Orange,tag=IsPlaying,distance=..10] run summon bat ~ ~-69 ~

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Orange,scores={Class=16,Spell1=599..}] at @e[team=Orange,tag=IsPlaying,distance=..10] run particle minecraft:dust 2 2 2 3 ~ ~1 ~ 0.5 1 0.5 1 50
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Blue,scores={Class=16,Spell1=599..}] at @e[team=Blue,tag=IsPlaying,distance=..10] run particle minecraft:dust 2 2 2 3 ~ ~1 ~ 0.5 1 0.5 1 50

execute as @e[type=bat,scores={Timer=1}] at @s run tp @s ~ ~75 ~

