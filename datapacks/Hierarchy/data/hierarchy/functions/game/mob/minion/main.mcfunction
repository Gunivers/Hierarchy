#Compte le nombre de minions par team
scoreboard players set @e[type=armor_stand,name=Orange] Var1 0
scoreboard players set @e[type=armor_stand,name=Blue] Var1 0
execute as @e[team=Blue,tag=Minion] run scoreboard players add @e[type=armor_stand,name=Blue] Var1 1
execute as @e[team=Orange,tag=Minion] run scoreboard players add @e[type=armor_stand,name=Orange] Var1 1

#Regarde si il y a des minions a kill ou a summon
execute as @e[type=armor_stand,scores={Var1=..10},name=Blue] at @s run function hierarchy:game/mob/minion/limitbyplayers
execute as @e[type=armor_stand,scores={Var1=..10},name=Orange] at @s run function hierarchy:game/mob/minion/limitbyplayers

scoreboard players set @e[type=armor_stand,scores={Var1=11..},tag=Data] Var2 10
execute as @e[type=armor_stand,scores={Var1=11..},tag=Data] run scoreboard players operation @s Var2 -= @s Var1

#Kill des minions si il y en a trop et summon si pas assez
execute as @e[type=armor_stand,scores={Var2=..-1},name=Blue] run kill @e[limit=1,sort=random,type=zombie,team=Blue,tag=Minion]
execute as @e[type=armor_stand,scores={Var2=..-1},name=Orange] run kill @e[limit=1,sort=random,type=zombie,team=Orange,tag=Minion]

execute at @e[type=armor_stand,scores={Var2=1..},name=Blue] at @e[limit=1,sort=random,type=player,gamemode=adventure,team=Blue,scores={InGame=1..}] run summon zombie ~ ~100 ~ {Health:4.0f,Tags:["Permanent","InitMinion","Minion","Blue"],IsBaby:1,ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:884479}}},{id:leather_leggings,Count:1b,tag:{display:{color:884479}}},{id:leather_chestplate,Count:1b,tag:{display:{color:884479}}},{id:"zombie_head",Count:1b}],HandItems:[{id:iron_sword,Count:1b},{}],AttributeModifiers:[{AttributeName:"generic.followRange",Name:"generic.followRange",Amount:15},{Name:"generic.maxHealth",Base:4},{Name:"generic.movementSpeed",Base:0.3}]}
execute at @e[type=armor_stand,scores={Var2=1..},name=Orange] at @e[limit=1,sort=random,type=player,gamemode=adventure,team=Orange,scores={InGame=1..}] run summon zombie ~ ~100 ~ {Health:4.0f,Tags:["Permanent","InitMinion","Minion","Orange"],IsBaby:1,ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:16744448}}},{id:leather_leggings,Count:1b,tag:{display:{color:16744448}}},{id:leather_chestplate,Count:1b,tag:{display:{color:16744448}}},{id:"zombie_head",Count:1b}],HandItems:[{id:iron_sword,Count:1b},{}],AttributeModifiers:[{AttributeName:"generic.followRange",Name:"generic.followRange",Amount:15},{Name:"generic.maxHealth",Base:4},{Name:"generic.movementSpeed",Base:0.3}]}
scoreboard players set @e[tag=InitMinion] Timer -1
execute as @e[tag=InitMinion] at @s run spreadplayers ~ ~ 2 10 false @s
execute at @e[tag=InitMinion] run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 15 force
tag @e remove InitMinion

#Kill des minions inutiles
scoreboard players set @e[type=zombie,tag=Minion] Var1 0
execute as @a[tag=IsPlaying] at @s run scoreboard players set @e[type=zombie,tag=Minion,distance=..20] Var1 1
kill @e[type=zombie,scores={Var1=..0},tag=Minion]
kill @e[type=zombie,scores={Timer=..-600},tag=Minion]

#Degats entre minions
execute as @e[team=Blue,tag=Minion] at @s run scoreboard players set @e[team=Orange,tag=Minion,distance=..5] EffPoison 10
execute as @e[team=Orange,tag=Minion] at @s run scoreboard players set @e[team=Blue,tag=Minion,distance=..5] EffPoison 10
 
