execute as @a[team=Blue,scores={Class=13,Spell1=398..}] at @s run scoreboard players set @e[team=Blue,scores={EffInvulnerable=..20},distance=..10] EffInvulnerable 20
execute as @a[team=Blue,scores={Class=13,Spell1=398..}] at @s run scoreboard players operation @e[team=!Blue,distance=..10] TouchID = @s ID
execute at @a[scores={Class=13,Spell1=384}] run summon lightning_bolt ~4 ~ ~
execute at @a[scores={Class=13,Spell1=386}] run summon lightning_bolt ~4 ~ ~4
execute at @a[scores={Class=13,Spell1=390}] run summon lightning_bolt ~-4 ~ ~-4
execute at @a[scores={Class=13,Spell1=388}] run summon lightning_bolt ~-4 ~ ~
execute at @a[scores={Class=13,Spell1=394}] run summon lightning_bolt ~-4 ~ ~4
execute at @a[scores={Class=13,Spell1=392}] run summon lightning_bolt ~ ~ ~4
execute at @a[scores={Class=13,Spell1=398}] run summon lightning_bolt ~4 ~ ~-4
execute at @a[scores={Class=13,Spell1=396}] run summon lightning_bolt ~ ~ ~-4
execute as @a[team=Orange,scores={Class=13,Spell1=398..}] at @s run scoreboard players set @e[team=Orange,scores={EffInvulnerable=..20},distance=..10] EffInvulnerable 20
execute as @a[team=Orange,scores={Class=13,Spell1=398..}] at @s run scoreboard players operation @e[team=!Orange,distance=..10] TouchID = @s ID


execute at @a[scores={Class=13,Spell1=384..}] run particle minecraft:sweep_attack ~ ~0.2 ~ 5 0 5 0 3 force


#WTF?! More Love less War
execute at @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] as @a[team=Blue,scores={Class=13,Spell1=398..}] at @s run scoreboard players set @e[team=Orange,scores={EffInvulnerable=..20},distance=..10] EffInvulnerable 20
execute at @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] as @a[team=Orage,scores={Class=13,Spell1=398..}] at @s run scoreboard players set @e[team=Blue,scores={EffInvulnerable=..20},distance=..10] EffInvulnerable 20
execute at @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] as @a[team=Blue,scores={Class=13,Spell1=398..}] at @s run scoreboard players set @e[team=Orange,scores={EffRegen=..1020},distance=..10] EffRegen 1020
execute at @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] as @a[team=Orage,scores={Class=13,Spell1=398..}] at @s run scoreboard players set @e[team=Blue,scores={EffRegen=..1020},distance=..10] EffRegen 1020
