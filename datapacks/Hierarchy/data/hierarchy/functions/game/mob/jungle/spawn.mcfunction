#River
execute as @e[type=armor_stand,scores={Class=0},name=Orange,tag=SpawnJungleOrange] at @s positioned 2993 109 3072 if block ~ ~ ~ air run function hierarchy:game/mob/jungle/river/spawno
execute as @e[type=armor_stand,scores={Class=0},name=Orange,tag=SpawnJungleBlue] at @s positioned 3007 109 2928 if block ~ ~ ~ air run function hierarchy:game/mob/jungle/river/spawnb

#Arena
execute as @e[type=armor_stand,scores={Class=1},name=Orange,tag=SpawnJungleOrange] at @s positioned 4000 100 3968 if block ~ ~ ~ air run function hierarchy:game/mob/jungle/arena/spawno
execute as @e[type=armor_stand,scores={Class=1},name=Orange,tag=SpawnJungleBlue] at @s positioned 4000 100 4032 if block ~ ~ ~ air run function hierarchy:game/mob/jungle/arena/spawnb

#Ruins
execute as @e[type=armor_stand,scores={Class=2},name=Orange,tag=SpawnJungleOrange] at @s positioned 5993 101 6051 if block ~ ~ ~ air run function hierarchy:game/mob/jungle/ruins/spawno
execute as @e[type=armor_stand,scores={Class=2},name=Orange,tag=SpawnJungleBlue] at @s positioned 6007 101 5949 if block ~ ~ ~ air run function hierarchy:game/mob/jungle/ruins/spawnb

#The detect air are there to test if the area is charged

#Stops the system
execute as @e[type=armor_stand,name=Orange,tag=!SpawnJungleBlue] run tag @e[type=armor_stand,name=Orange,tag=!SpawnJungleOrange] remove SpawnJungle

