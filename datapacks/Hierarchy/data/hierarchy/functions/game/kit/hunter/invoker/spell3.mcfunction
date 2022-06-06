scoreboard players add @e[scores={InGame=1..}] TouchID 0
scoreboard players operation @e[scores={InGame=1..}] TouchID -= @s ID
execute as @s[team=Blue] run scoreboard players set @e[scores={EffDamage=..1,TouchID=0},tag=AffectByBlue] EffDamage 1
execute as @s[team=Blue] run scoreboard players set @e[scores={EffSilence=..20,TouchID=0},tag=AffectByBlue] EffSilence 40
execute as @s[team=Blue] run scoreboard players set @e[scores={EffSlow=..3040,TouchID=0},tag=AffectByBlue] EffSlow 3040
execute at @s[team=Blue] as @e[scores={TouchID=0},tag=AffectByBlue] at @s run playsound entity.enderdragon.growl record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @s[team=Blue] run effect give @e[scores={TouchID=0},tag=AffectByBlue] blindness 4 1 true
execute as @s[team=Blue] run effect give @e[scores={TouchID=0},tag=AffectByBlue] glowing 1 1 true
execute at @s[team=Blue] at @e[scores={TouchID=0},tag=AffectByBlue] run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.3 20
playsound entity.enderdragon.growl record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @s[team=Orange] run scoreboard players set @e[scores={EffDamage=..1,TouchID=0},tag=AffectByOrange] EffDamage 1
execute as @s[team=Orange] run scoreboard players set @e[scores={EffSilence=..20,TouchID=0},tag=AffectByOrange] EffSilence 40
execute as @s[team=Orange] run scoreboard players set @e[scores={EffSlow=..3040,TouchID=0},tag=AffectByOrange] EffSlow 3040
execute at @s[team=Orange] as @e[scores={TouchID=0},tag=AffectByOrange] at @s run playsound entity.enderdragon.growl record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @s[team=Orange] run effect give @e[scores={TouchID=0},tag=AffectByOrange] blindness 4 1 true
execute as @s[team=Orange] run effect give @e[scores={TouchID=0},tag=AffectByOrange] glowing 1 1 true
execute at @s[team=Orange] at @e[scores={TouchID=0},tag=AffectByOrange] run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.3 20


execute as @s[team=Blue] at @e[scores={EffDamage=..1,TouchID=0},tag=AffectByBlue] run summon armor_stand ~ ~1 ~ {Invisible:1,Marker:1,Tags:["HI3G"]}
execute as @s[team=Orange] at @e[scores={EffDamage=..1,TouchID=0},tag=AffectByOrange] run summon armor_stand ~ ~1 ~ {Invisible:1,Marker:1,Tags:["HI3G"]}
scoreboard players set @e[tag=HI3G,scores={Timer=0..}] Timer -1




particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.3 20

scoreboard players operation @e[scores={InGame=1..}] TouchID += @s ID
