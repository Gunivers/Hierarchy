execute as @e[tag=InLobby] run spawnpoint @s 5000 101 5000

execute as @r[tag=InGame] run scoreboard players set @a[scores={InGame=1..},tag=!InGame] InGame 0

execute as @a[gamemode=!creative,scores={InGame=1..},tag=InLobby] run scoreboard players set @s[tag=!InTraining] InGame 0

#Basic effects
effect give @a[scores={InGame=..0},tag=InLobby] resistance 1 127 true
effect give @a[scores={InGame=..0},tag=InLobby] saturation 1 127 true
effect give @a[scores={InGame=..0},tag=InLobby] regeneration 1 127 true
scoreboard players set @a[scores={InGame=..0}] Spell1 0
scoreboard players set @a[scores={InGame=..0}] Spell2 0
scoreboard players set @a[scores={InGame=..0}] Spell3 0
scoreboard players set @a[scores={InGame=..0}] UseEgg 0

scoreboard players set @a[scores={InGame=..0}] UpgradedWeapon 0
scoreboard players set @a[scores={InGame=..0}] PrivateSpell 0

function hierarchy:easter-egg/hat/gethatwithevent
execute as @e[type=armor_stand,name=Blue,tag=!Setting_Game_Started] at @s if entity @a[scores={Hat=1..}] run function hierarchy:easter-egg/hat/effects/main
execute at @e[type=armor_stand,name=Blue,tag=!Setting_Game_Started] as @a[scores={NoteClicked=50..},tag=!disco] at @s run function hierarchy:easter-egg/hat/getdisco

#Tp epee
tag @a[x=4966.5,y=126,z=5001.5,dx=6,dy=10,dz=10] add Sword
execute as @a[x=4992.5,y=102,z=5041.5,dx=5,dy=2,dz=3,tag=!Sword] at @s run teleport 5000 100 5000
execute as @a[x=4992.5,y=102,z=5041.5,dx=5,dy=2,dz=3,tag=Sword] at @s run teleport 4971 142 5000
