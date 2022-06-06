#Spawn Towers
execute as @e[tag=TowerAlive] at @s if block ~ ~5 ~ purpur_pillar[axis=x] if block ~ ~-1 ~ white_terracotta run setblock ~ ~5 ~ air
execute as @e[tag=TowerAlive] at @s if block ~ ~-1 ~ white_terracotta if block ~ ~5 ~ air run function hierarchy:game/mode/conquest/spawntower
execute as @e[tag=TowerAlive,limit=1,sort=nearest] at @s run function hierarchy:game/mode/conquest/endercrystal

#Tower Life display
scoreboard players set @a Var1 0
execute as @e[tag=TowerAlive] at @s positioned ~ ~5 ~ run scoreboard players operation @a[distance=..7] Var1 = @e[type=armor_stand,tag=Conquest,limit=1,sort=nearest] HaveObjective
execute as @e[tag=TowerAlive] at @s positioned ~ ~5 ~ run scoreboard players operation @a[distance=..7] Var1 += 1000 Constant
execute as @e[tag=TowerAlive] at @s positioned ~ ~5 ~ run scoreboard players operation @a[distance=..7] Var1 /= 10 Constant
execute as @e[tag=TowerAlive9] at @s positioned ~ ~5 ~ run scoreboard players add @a[distance=..7] Var1 1
execute at @e[tag=TowerAlive] positioned ~ ~5 ~ as @a[gamemode=adventure,distance=..7] at @s run title @p title ["",{"text":""}]
execute at @e[tag=TowerAlive] positioned ~ ~5 ~ as @a[team=Spec,distance=..7] at @s run title @p title ["",{"text":""}]
execute at @e[tag=TowerAlive] positioned ~ ~5 ~ as @a[distance=..7] at @s run title @p subtitle ["",{"text":"Tower life: ","color":"green"},{"score":{"name":"@p","objective":"Var1"},"color":"red"},{"text":"%","color":"red"}]


#Tower defense
tag @e remove OrangeTowerActive
tag @e remove BlueTowerActive
tag @e remove TowerActive
execute as @e[team=Orange,tag=IsPlaying,tag=!Bulk] at @s positioned ~ ~-5 ~ run tag @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeConquest,distance=..7] add OrangeTowerActive
execute as @e[team=Blue,tag=IsPlaying,tag=!Bulk] at @s positioned ~ ~-5 ~ run tag @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueConquest,distance=..7] add BlueTowerActive
tag @e[tag=BlueTowerActive] add TowerActive
tag @e[tag=OrangeTowerActive] add TowerActive
execute as @e[tag=TowerActive,limit=1,sort=nearest] at @s run function hierarchy:game/mode/conquest/toweractive

#Tower attacked
tag @e remove TowerAttacked
execute as @e[team=Blue,tag=IsPlaying] at @s positioned ~ ~-5 ~ run tag @e[tag=OrangeConquest,distance=..7] add TowerAttacked
execute as @e[team=Orange,tag=IsPlaying] at @s positioned ~ ~-5 ~ run tag @e[tag=BlueConquest,distance=..7] add TowerAttacked
execute as @e[tag=TowerAttacked,limit=1,sort=nearest] at @s run function hierarchy:game/mode/conquest/towerattacked

#Inhibitor protection
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueLeftTower] run scoreboard players set @e[type=armor_stand,tag=BlueLeftInib] HaveObjective 0
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueMiddleTower] run scoreboard players set @e[type=armor_stand,tag=BlueMiddleInib] HaveObjective 0
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueRightTower] run scoreboard players set @e[type=armor_stand,tag=BlueRightInib] HaveObjective 0
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeLeftTower] run scoreboard players set @e[type=armor_stand,tag=OrangeLeftInib] HaveObjective 0
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeMiddleTower] run scoreboard players set @e[type=armor_stand,tag=OrangeMiddleInib] HaveObjective 0
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeRightTower] run scoreboard players set @e[type=armor_stand,tag=OrangeRightInib] HaveObjective 0

#Inhibitor regeneration
execute as @e[type=armor_stand,scores={Timer=1},name=Blue] run scoreboard players add @e[type=armor_stand,scores={HaveObjective=-999..-10},tag=OrangeInib] HaveObjective 5
execute as @e[type=armor_stand,scores={Timer=1},name=Blue] run scoreboard players add @e[type=armor_stand,scores={HaveObjective=-999..-10},tag=BlueInib] HaveObjective 5
