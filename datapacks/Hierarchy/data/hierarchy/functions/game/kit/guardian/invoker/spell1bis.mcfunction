execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] as @e[type=!player,tag=WI1B] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Blue,tag=IsPlaying]
execute at @e[type=!player,scores={Timer=..-20},tag=WI1G] as @a[tag=IsPlaying,distance=..1] at @s run playsound block.lava.pop record @a[distance=..30]
execute as @e[type=!player,scores={Timer=..-20},tag=WI1B] at @s run scoreboard players set @a[team=Blue,scores={EffHeal=..1},tag=IsPlaying,distance=..1] EffHeal 1
execute as @e[type=!player,scores={Timer=..-20},tag=WI1B] at @s run scoreboard players set @a[team=Orange,scores={EffDamage=..1002},tag=IsPlaying,distance=..1] EffDamage 1002
execute as @e[type=!player,scores={Timer=..-20},tag=WI1B] at @s run scoreboard players operation @a[team=Orange,tag=IsPlaying,distance=..1] TouchID = @s ID
execute at @e[type=!player,scores={Timer=..-20},tag=WI1B] at @a[team=Blue,tag=IsPlaying,distance=..1] run particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.2 50 force
execute at @e[type=!player,scores={Timer=..-20},tag=WI1B] at @a[team=Orange,tag=IsPlaying,distance=..1] run particle dust 2 2 2 1 ~ ~1 ~ 0.3 0.5 0.3 1 50 force
execute at @e[type=!player,scores={Timer=..-20},tag=WI1B] as @a[tag=IsPlaying,distance=..1] at @s run kill @e[type=!player,tag=WI1B,distance=..2,limit=1,sort=nearest]
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=!player,tag=WI1G] run particle dust 2 2 2 1 ~ ~0.8 ~ 0.2 0.2 0.2 1 3
execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s as @e[type=!player,scores={Timer=..-35},tag=WI1G] at @s run teleport @s ~ ~ ~ ~7.2 0
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] as @e[type=!player,tag=WI1G] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Orange,tag=IsPlaying]
execute as @e[type=!player,scores={Timer=..-20},tag=WI1R] at @s run scoreboard players set @a[team=Orange,scores={EffHeal=..1},tag=IsPlaying,distance=..1] EffHeal 1
execute as @e[type=!player,scores={Timer=..-20},tag=WI1R] at @s run scoreboard players set @a[team=Blue,scores={EffDamage=..1002},tag=IsPlaying,distance=..1] EffDamage 1002
execute as @e[type=!player,scores={Timer=..-20},tag=WI1R] at @s run scoreboard players operation @a[team=Blue,tag=IsPlaying,distance=..1] TouchID = @s ID
execute at @e[type=!player,scores={Timer=..-20},tag=WI1R] at @a[team=Orange,tag=IsPlaying,distance=..1] run particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.2 50 force
execute at @e[type=!player,scores={Timer=..-20},tag=WI1R] at @a[team=Blue,tag=IsPlaying,distance=..1] run particle dust 2 2 2 1 ~ ~1 ~ 0.3 0.5 0.3 1 50 force
execute at @e[type=!player,scores={Timer=..-20},tag=WI1R] as @a[tag=IsPlaying,distance=..1] at @s run kill @e[type=!player,tag=WI1R,distance=..2,limit=1,sort=nearest]
