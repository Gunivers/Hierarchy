
# Tous ceux qui ont le tag RandomKit vont avoir un kit aléatoire
summon armor_stand 0 100 0 {Tags:["Random","Random1"]}
summon armor_stand 0 100 0 {Tags:["Random","Random2"]}
summon armor_stand 0 100 0 {Tags:["Random","Random3"]}
summon armor_stand 0 100 0 {Tags:["Random","Random4"]}
summon armor_stand 0 100 0 {Tags:["Random","Random5"]}
summon armor_stand 0 100 0 {Tags:["Random","Random6"]}

scoreboard players set @e[tag=Random1] Var1 1
scoreboard players set @e[tag=Random2] Var1 2
scoreboard players set @e[tag=Random3] Var1 3
scoreboard players set @e[tag=Random4] Var1 4
scoreboard players set @e[tag=Random5] Var1 5
scoreboard players set @e[tag=Random6] Var1 6

execute as @a[tag=RandomKit] run scoreboard players operation @s Class = @e[limit=1,sort=random,type=armor_stand,tag=Random,scores={Var1=..4}] Var1
scoreboard players remove @a[tag=RandomKit] Class 1
execute as @a[tag=RandomKit] run scoreboard players operation @s Class *= 10 Constant
execute as @a[tag=RandomKit] run scoreboard players operation @s Class += @e[limit=1,sort=random,type=armor_stand,tag=Random] Var1

tag @a remove RandomKit
kill @e[type=armor_stand,tag=Random]