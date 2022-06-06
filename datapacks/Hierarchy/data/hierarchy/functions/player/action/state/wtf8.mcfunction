tag @a remove WhereAmI
team join Random @a[gamemode=adventure,scores={IsDead=..0},tag=InGame]
execute if entity @a[team=Random,tag=InGame] run function hierarchy:game/team/random
tag @a[tag=InGame] add WhereAmI
tag @e[tag=!Data,scores={InGame=1..},tag=IsPlaying] add WhereAmI
execute as @s[scores={Timer=..4}] run scoreboard players add @e[type=armor_stand,name=Orange] Class 1
execute as @s[scores={Timer=..4}] run scoreboard players set @e[type=armor_stand,scores={Class=3..},name=Orange] Class 0
execute as @e[type=armor_stand,scores={Class=0},name=Orange] at @s run spreadplayers 3000 3000 0 100 false @a[tag=WhereAmI]
execute as @e[type=armor_stand,scores={Class=1},name=Orange] at @s run spreadplayers 4000 4000 0 100 false @a[tag=WhereAmI]
execute as @e[type=armor_stand,scores={Class=2},name=Orange] at @s run spreadplayers 6000 6000 0 100 false @a[tag=WhereAmI]
execute as @a[tag=WhereAmI] run playsound minecraft:entity.endermen.teleport record @p
