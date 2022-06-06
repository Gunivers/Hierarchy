execute at @r if block 2855 111 2951 air run setblock 2855 111 2951 end_gateway
execute at @r if block 3145 111 3049 air run setblock 3145 111 3049 end_gateway
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=OrangeInib] run summon armor_stand 2855 111 2951 {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1}]}
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=BlueInib] run summon armor_stand 3145 111 3049 {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1}]}


tag @a remove HaveObjective
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueRightInib] as @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueLeftInib] run tag @a[team=Orange] add InibStand
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeRightInib] as @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeLeftInib] run tag @a[team=Blue] add InibStand

#Jump into Bulk with no destroyed inhibitor
execute as @a[x=3145.5,y=111,z=3049.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=InibStand] at @s run tellraw @s ["",{"text":">> You have to destroy at least 1 inhibitor before you jump into the Bulk","color":"red","bold":true}]
execute as @a[x=2855.5,y=111,z=2951.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=InibStand] at @s run tellraw @s ["",{"text":">> You have to destroy at least 1 inhibitor before you jump into the Bulk","color":"red","bold":true}]
execute as @a[x=3145.5,y=111,z=3049.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=InibStand] at @s run playsound minecraft:entity.endermen.teleport record @a[distance=..30]
execute as @a[x=2855.5,y=111,z=2951.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=InibStand] at @s run playsound minecraft:entity.endermen.teleport record @a[distance=..30]
execute as @a[x=3145.5,y=111,z=3049.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=InibStand] at @s run teleport @s ~-3 ~ ~
execute as @a[x=2855.5,y=111,z=2951.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=InibStand] at @s run teleport @s ~3 ~ ~
#Jump into Bulk with destroyed inhibitor
tag @a[x=3145.5,y=111,z=3049.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=!InibStand] add HaveObjective
tag @a[x=2855.5,y=111,z=2951.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=!InibStand] add HaveObjective
effect give @a[tag=HaveObjective] resistance 1 100 true
execute at @a[tag=HaveObjective] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
execute as @a[team=Orange,tag=HaveObjective] run teleport 2892 99 2999
execute as @a[team=Blue,tag=HaveObjective] run teleport 3108 99 3001
execute as @a[team=Blue,tag=HaveObjective] run scoreboard players remove @e[type=armor_stand,name=Orange] Score 20
execute as @a[team=Orange,tag=HaveObjective] run scoreboard players remove @e[type=armor_stand,name=Blue] Score 20
execute as @a[team=Blue,tag=HaveObjective] run scoreboard players set @e[type=armor_stand,scores={HaveObjective=..-1000},tag=OrangeInib] HaveObjective -900
execute as @a[team=Orange,tag=HaveObjective] run scoreboard players set @e[type=armor_stand,scores={HaveObjective=..-1000},tag=BlueInib] HaveObjective -900
tag @a remove InibStand
execute at @a[tag=HaveObjective] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
execute as @a[team=Blue,tag=HaveObjective] run tellraw @a ["",{"text":"\n>> ","color":"aqua","bold":true},{"selector":"@s","color":"blue","bold":true},{"text":" jumped into the Orange bulk!\n","color":"aqua","bold":true}]
execute as @a[team=Orange,tag=HaveObjective] run tellraw @a ["",{"text":"\n>> ","color":"gold","bold":true},{"selector":"@s","color":"gold","bold":true},{"text":" jumped into the Blue bulk!\n","color":"gold","bold":true}]


#Villagers
scoreboard players set @e[type=armor_stand,scores={Timer=1},name=Orange] Var1 0
execute as @e[type=armor_stand,tag=Conquest] run scoreboard players add @e[type=armor_stand,scores={Timer=1},name=Orange] Var1 1
execute as @e[type=armor_stand,scores={Timer=1,Var1=..11},name=Orange] run kill @e[type=armor_stand,tag=Conquest]
execute as @e[type=armor_stand,scores={Timer=1,Var1=13..},name=Orange] run kill @e[type=armor_stand,tag=Conquest]
execute as @e[type=armor_stand,scores={Timer=1,Var1=..5},name=Orange] at @s run function hierarchy:game/mode/conquest/river/spawntowers
