#Detection of players in the Tardis
tag @a remove InTardis
tag @a[x=-1009.5,y=80,z=-1049.5,dx=65,dy=35,dz=65] add InTardis

tag @a add SpawnTardis
execute as @e[type=armor_stand,tag=Tardis] run tag @a remove SpawnTardis
execute as @r[tag=SpawnTardis] run summon armor_stand -991.0 92.0 -1048.0 {Tags:["Permanent","Tardis"],NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Damage:10,Count:1b}],DisabledSlots:2039583,Rotation:[180f]}

#Tardis Lights and Location Check
scoreboard players set @a[tag=InTardis] LocationCheck 0
scoreboard players set @e[type=armor_stand,name=Blue] Var1 0
execute as @a[tag=InTardis] run scoreboard players set @e[type=armor_stand,name=Blue] Var1 1
execute as @e[type=armor_stand,scores={Var1=..0},name=Blue] run fill -987 95 -1021 -987 95 -1021 redstone_block replace stone
execute as @e[type=armor_stand,scores={Var1=1..},name=Blue] run fill -987 95 -1021 -987 95 -1021 stone replace redstone_block

#Tardis Enter
execute as @a[x=-989.5,y=93,z=-1015.5,distance=..10] at @s if block ~ ~-2 ~ coal_block run playsound minecraft:block.iron_door.open ambient @s
execute as @a[x=-989.5,y=88,z=-1015.5,distance=..5] at @s if block ~ ~-2 ~ coal_block run teleport @s ~ ~9 ~
execute as @a[x=-989.5,y=97,z=-1015.5,distance=..5] at @s if block ~ ~-2 ~ coal_block run teleport @s ~ ~-9 ~
