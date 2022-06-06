execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[team=Blue] run particle large_smoke ~ ~0.1 ~ 5 0 5 0.2 50 force
execute at @s[team=Blue] run effect give @e[tag=AffectByBlue,distance=..10] blindness 5 1 true
execute at @s[team=Blue] run scoreboard players set @e[scores={EffSlow=..1060},tag=AffectByBlue,distance=..10] EffSlow 1060
execute at @s[team=Blue] run scoreboard players set @e[scores={EffSilencePrim=..60},tag=AffectByBlue,distance=..10] EffSilencePrim 60
execute at @s[team=Blue] as @e[scores={EffSilencePrim=..60},tag=AffectByBlue,distance=..10] at @s run teleport @s ~ ~ ~ ~180 ~
execute at @s[team=Blue] run teleport @p @p[tag=AffectByBlue,distance=..10]
execute at @s[team=Blue] run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByBlue,distance=..1] EffDamage 2
execute at @s[team=Blue] run scoreboard players operation @e[scores={EffDamage=..2},tag=AffectByBlue,distance=..1] TouchID = @s ID
execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[team=Blue] run particle large_smoke ~ ~ ~ 0.5 1 0.5 0.2 50 force

execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[team=Orange] run particle large_smoke ~ ~0.1 ~ 5 0 5 0.2 50 force
execute at @s[team=Orange] run effect give @e[tag=AffectByOrange,distance=..10] blindness 5 1 true
execute at @s[team=Orange] run scoreboard players set @e[scores={EffSlow=..1060},tag=AffectByOrange,distance=..10] EffSlow 1060
execute at @s[team=Orange] run scoreboard players set @e[scores={EffSilencePrim=..60},tag=AffectByOrange,distance=..10] EffSilencePrim 60
execute at @s[team=Orange] as @e[scores={EffSilencePrim=..60},tag=AffectByOrange,distance=..10] at @s run teleport @s ~ ~ ~ ~180 ~
execute at @s[team=Orange] run teleport @p @p[tag=AffectByOrange,distance=..10]
execute at @s[team=Orange] run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByOrange,distance=..1] EffDamage 2
execute at @s[team=Orange] run scoreboard players operation @e[scores={EffDamage=..2},tag=AffectByOrange,distance=..1] TouchID = @s ID
execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[team=Orange] run particle large_smoke ~ ~ ~ 0.5 1 0.5 0.2 50 force
