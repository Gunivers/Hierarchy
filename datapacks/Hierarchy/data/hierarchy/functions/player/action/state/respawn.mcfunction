# When in spec
gamemode spectator @a[gamemode=adventure,scores={LifeState=..300},tag=InGame]
# execute as @e[type=armor_stand,scores={Score=600..},name=Blue] as @e[type=armor_stand,scores={Score=600..},name=Orange] run scoreboard players set @a[scores={LifeState=0..199}] LifeState 200
scoreboard players set @a[scores={LifeState=..300}] Back 0

# Reset variables
scoreboard players set @a[scores={LifeState=..1}] UpgradedWeapon 0
scoreboard players set @a[scores={LifeState=..1}] HaveObjective 0
scoreboard players set @a[scores={LifeState=..1}] EffNoMalus 2
scoreboard players set @a[scores={LifeState=..1}] EffNoBonus 2
scoreboard players set @a[scores={LifeState=..1}] C3 0
clear @a[scores={LifeState=..1}]
effect clear @a[scores={LifeState=..1}]

# Variable respawn Time
tag @a remove RespawnCalc
tag @a[scores={LifeState=0..1}] add RespawnCalc
scoreboard players set @a[tag=RespawnCalc] Var1 300
scoreboard players operation @a[team=Blue,tag=RespawnCalc] Var1 = @e[type=armor_stand,scores={Score=2..300},name=Orange,limit=1,sort=nearest] Score
scoreboard players operation @a[team=Orange,tag=RespawnCalc] Var1 = @e[type=armor_stand,scores={Score=2..300},name=Blue,limit=1,sort=nearest] Score
execute as @a[tag=RespawnCalc] run scoreboard players operation @s LifeState = @s Var1

execute as @e[type=armor_stand,scores={Class=4},name=Blue] run scoreboard players set @a[scores={InGame=1..,DeathNumber=1..}] LifeState 1

# Cooldown display
execute as @a[scores={LifeState=1..400}] run scoreboard players operation @s Var1 = @s LifeState
execute as @a[scores={LifeState=1..400}] run scoreboard players operation @s Var1 /= 20 Constant
execute as @a[scores={LifeState=1..400}] run scoreboard players remove @s Var1 20
execute as @a[scores={LifeState=1..400}] run scoreboard players operation @s Var1 *= Neg Constant
execute as @e[type=armor_stand,scores={Class=4},name=Blue] run scoreboard players set @a[scores={InGame=1..,DeathNumber=1..}] Var1 0
execute as @a[gamemode=spectator,team=!Spec,scores={Var1=1..3}] run title @s title ["",{"score":{"name":"@s","objective":"Var1"},"color":"red"}]
execute as @a[gamemode=spectator,team=!Spec,scores={Var1=4..10}] run title @s title ["",{"score":{"name":"@s]","objective":"Var1"},"color":"gold"}]
execute as @a[gamemode=spectator,team=!Spec,scores={Var1=11..20}] run title @s title ["",{"score":{"name":"@s]","objective":"Var1"},"color":"yellow"}]

execute as @a[scores={LifeState=340}] at @s run playsound minecraft:entity.experience_orb.pickup record @s
execute as @a[scores={LifeState=360}] at @s run playsound minecraft:entity.experience_orb.pickup record @s
execute as @a[scores={LifeState=380}] at @s run playsound minecraft:entity.experience_orb.pickup record @s
execute as @a[scores={LifeState=400}] at @s run playsound entity.enderman.teleport record @a[distance=..15]


#Init
gamemode adventure @a[gamemode=spectator,scores={LifeState=400}]
scoreboard players set @a[scores={InGame=1..,LifeState=2..400}] Mana 300
effect give @a[scores={EffNoDie=..0,InGame=1..,LifeState=398..400}] resistance 5 100 true
effect give @a[scores={InGame=1..,LifeState=400}] regeneration 2 127 true
effect give @a[scores={Class=1..9,InGame=1..,LifeState=400}] health_boost 999999 9 true
effect give @a[scores={Class=11..19,InGame=1..,LifeState=400}] health_boost 999999 4 true
effect give @a[scores={Class=21..39,InGame=1..,LifeState=400}] health_boost 999999 9 true
