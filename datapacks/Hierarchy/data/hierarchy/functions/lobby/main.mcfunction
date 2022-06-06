tellraw @a[tag=Debug] ["",{"text":". Lobby/Main | As: "},{"selector":"@s"}]

#Hall of Creator & Dressing
execute if entity @a[x=5065.5,y=107,z=5000.5,distance=..30] run function hierarchy:lobby/hoc
execute as @e[type=armor_stand,scores={Timer05=1},name=Blue,limit=1,sort=nearest] at @s if entity @a[x=5000.5,y=100,z=5000.5,distance=..30] run function hierarchy:lobby/sign
execute as @e[type=armor_stand,scores={Timer05=1},name=Blue,limit=1,sort=nearest] at @s if entity @a[x=5000.5,y=100,z=5000.5,distance=..30] run function hierarchy:lobby/paint

team join Blue @e[scores={Timer=10},tag=ASLobbyColored]
team join Orange @e[scores={Timer=20},tag=ASLobbyColored]
team leave @e[scores={Timer=30},tag=ASLobbyColored]
execute as @e[type=armor_stand,scores={Timer=1},name=Blue,limit=1,sort=nearest] at @s run function hierarchy:lobby/holotext

#Tardis
function hierarchy:easter-egg/tardis/main

#Hats
scoreboard players enable @a SelectedHat
execute as @a[scores={SelectedHat=1..}] at @s run function hierarchy:easter-egg/hat/gethat
execute as @a[scores={SelectedHat=..-1}] at @s run function hierarchy:easter-egg/hat/signgethat