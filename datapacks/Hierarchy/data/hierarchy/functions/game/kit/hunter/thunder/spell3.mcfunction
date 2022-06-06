execute at @a[team=Blue,scores={Class=23,EffSpeed=3002..,IsWalking=10..,Spell3=960..}] as @a[team=Orange,scores={C3=1..,LifeState=500..},distance=..5] at @s run scoreboard players set @a[team=Blue,scores={EffInvulnerable=..20,LifeState=500..},distance=..3] EffInvulnerable 20
execute at @a[team=Blue,scores={Class=23,Spell3=960..}] at @e[team=Orange,scores={C3=1..,LifeState=500..},distance=..5] run summon lightning_bolt ~ ~ ~
execute as @a[team=Blue,scores={Class=23,Spell3=960..}] at @s run scoreboard players set @e[team=Orange,scores={C3=1..,LifeState=500..},distance=..5] C3 0
execute as @a[team=Blue,scores={Class=23,Spell3=960..}] at @s run scoreboard players set @a[team=Orange,scores={EffPoison=40..,LifeState=500..},distance=..5] EffPoison 40
execute as @a[team=Blue,scores={Class=23,Spell3=960..}] at @s run scoreboard players operation @a[team=Orange,scores={C3=1..,LifeState=500..},distance=..5] TouchID = @s ID
execute as @a[team=Blue,scores={Class=23,Spell3=960..}] at @s run scoreboard players operation @a[team=Orange,scores={LifeState=500..},distance=..5] TouchID = @s ID
execute as @a[scores={Class=23,IsWalking=1..,LifeState=500..,Spell3=940..}] at @s run playsound entity.enderdragon.flap record @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @a[scores={Class=23,EffSpeed=..3002,LifeState=500..,Spell3=960..}] EffSpeed 3002
scoreboard players set @a[scores={Class=23,EffSilence=..2,IsWalking=10..,LifeState=500..,Spell3=940..}] EffSilence 10
# scoreboard players set @a[score_IsWalking_min=10,score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=940,score_EffEffSilencePrim=2] EffEffSilencePrim 2
# execute @a[score_IsWalking_min=10,score_Class_min=23,score_Class=23,score_Spell3_min=960,score_EffSpeed_min=3002,team=Orange] ~ ~ ~ /execute @a[team=Blue,r=5,score_LifeState_min=500,score_C3_min=1] ~ ~ ~ /sscoreboard players set @a[score_LifeState_min=500,team=Orange,r=3,score_EffInvulnerable=20] EffInvulnerable 20
execute at @a[team=Orange,scores={Class=23,Spell3=960..}] at @e[team=Blue,scores={C3=1..,LifeState=500..},distance=..5] run summon lightning_bolt ~ ~ ~
execute as @a[team=Orange,scores={Class=23,Spell3=960..}] at @s run scoreboard players set @e[team=Blue,scores={C3=1..,LifeState=500..},distance=..5] C3 0
execute as @a[team=Orange,scores={Class=23,Spell3=960..}] at @s run scoreboard players set @a[team=Blue,scores={EffPoison=40..,LifeState=500..},distance=..5] EffPoison 40
execute as @a[team=Orange,scores={Class=23,Spell3=960..}] at @s run scoreboard players operation @a[team=Blue,scores={C3=1..,LifeState=500..},distance=..5] TouchID = @s ID
execute as @a[team=Orange,scores={Class=23,Spell3=960..}] at @s run scoreboard players operation @a[team=Blue,scores={LifeState=500..},distance=..5] TouchID = @s ID

execute at @a[scores={Class=23,IsWalking=1..,LifeState=500..,Spell3=940..}] run particle sweep_attack ~ ~1 ~ 2 1 2 0 10 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=23,IsWalking=1..,LifeState=500..,Spell3=940..}] run particle effect ~ ~1 ~ 2 1 2 0 50 force
