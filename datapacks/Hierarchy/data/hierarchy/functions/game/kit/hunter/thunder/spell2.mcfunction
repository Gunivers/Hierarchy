execute as @a[team=Orange,scores={Class=23,LifeState=500..,UseSnowball=2}] at @s run scoreboard players set @e[type=armor_stand,distance=..10,limit=1,sort=nearest] Class 23
execute as @a[team=Blue,scores={Class=23,LifeState=500..,UseSnowball=2}] at @s run scoreboard players set @e[type=armor_stand,distance=..10,limit=1,sort=nearest] Class -23
execute at @e[type=armor_stand,scores={Class=-23,Timer=35}] run summon lightning_bolt ~3 ~ ~
execute at @e[type=armor_stand,scores={Class=-23,Timer=35}] run summon lightning_bolt ~ ~ ~3
execute at @e[type=armor_stand,scores={Class=-23,Timer=35}] run summon lightning_bolt ~ ~ ~-3
execute at @e[type=armor_stand,scores={Class=-23,Timer=35}] run summon lightning_bolt ~-3 ~ ~
execute as @e[type=armor_stand,scores={Class=-23,Timer=35}] run scoreboard players operation @e[team=!Blue,tag=IsPlaying] TouchID = @s ID
execute as @a[scores={Class=23,LifeState=500..,UseSnowball=2}] at @s run scoreboard players set @e[type=armor_stand,distance=..10,limit=1,sort=nearest] Timer 30
execute as @a[team=Orange,scores={Class=23,LifeState=500..,UseSnowball=2}] at @s run scoreboard players set @e[type=snowball,distance=..10,limit=1,sort=nearest] Class 23
execute as @a[team=Blue,scores={Class=23,LifeState=500..,UseSnowball=2}] at @s run scoreboard players set @e[type=snowball,distance=..10,limit=1,sort=nearest] Class -23
execute as @e[type=armor_stand,scores={Class=23}] at @s run teleport @e[type=armor_stand,scores={Class=23},distance=..3,limit=1,sort=nearest] @e[type=snowball,scores={Class=23},distance=..15,limit=1,sort=nearest]
execute as @e[type=armor_stand,scores={Class=-23}] at @s run teleport @e[type=armor_stand,scores={Class=-23},distance=..3,limit=1,sort=nearest] @e[type=snowball,scores={Class=-23},distance=..15,limit=1,sort=nearest]
execute as @e[type=snowball,scores={Class=23}] at @s run scoreboard players set @e[type=armor_stand,scores={Class=23},distance=..10,limit=1,sort=nearest] Timer 30
execute as @e[type=snowball,scores={Class=-23}] at @s run scoreboard players set @e[type=armor_stand,scores={Class=-23},distance=..10,limit=1,sort=nearest] Timer 30
execute as @e[type=armor_stand,scores={Class=23,Timer=34}] at @s run scoreboard players set @a[team=Orange,scores={EffInvulnerable=..20,LifeState=500..},distance=..7] EffInvulnerable 20
execute as @e[type=armor_stand,scores={Class=-23,Timer=34}] at @s run scoreboard players set @a[team=Blue,scores={EffInvulnerable=..20,LifeState=500..},distance=..7] EffInvulnerable 20
execute as @e[type=armor_stand,scores={Class=23,Timer=34}] at @s run scoreboard players set @a[team=Orange,scores={EffHeal=..2,LifeState=500..},distance=..7] EffHeal 2
execute as @e[type=armor_stand,scores={Class=-23,Timer=34}] at @s run scoreboard players set @a[team=Blue,scores={EffHeal=..2,LifeState=500..},distance=..7] EffHeal 2
execute at @e[type=armor_stand,scores={Class=23,Timer=35}] run summon lightning_bolt ~3 ~ ~
execute at @e[type=armor_stand,scores={Class=23,Timer=35}] run summon lightning_bolt ~ ~ ~3
execute at @e[type=armor_stand,scores={Class=23,Timer=35}] run summon lightning_bolt ~ ~ ~-3
execute at @e[type=armor_stand,scores={Class=23,Timer=35}] run summon lightning_bolt ~-3 ~ ~
execute as @e[type=armor_stand,scores={Class=23,Timer=35}] run scoreboard players operation @e[team=!Orange,tag=IsPlaying] TouchID = @s ID
execute as @a[scores={Class=23,InGame=1..,UseFishing=1..}] at @s run playsound entity.shulker.close record @a[distance=..30] ~ ~ ~ 2 2 1
execute as @e[type=armor_stand,scores={Class=-23,Timer=34}] at @s run scoreboard players set @e[team=Orange,scores={LifeState=500..},distance=..7] C3 200
execute as @e[type=armor_stand,scores={Class=23,Timer=34}] at @s run scoreboard players set @e[team=Blue,scores={LifeState=500..},distance=..7] C3 200

execute at @e[type=snowball,scores={Class=23}] run particle cloud ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=snowball,scores={Class=-23}] run particle cloud ~ ~ ~ 0 0 0 0 1 force
