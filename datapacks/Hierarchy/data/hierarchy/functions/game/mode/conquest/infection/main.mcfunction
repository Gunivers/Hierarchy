execute at @r if block 1020 125 1000 air run setblock 1020 125 1000 end_gateway
execute at @r if block 980 125 1000 air run setblock 980 125 1000 end_gateway
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=OrangeInib] run summon armor_stand 980 125 1000 {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1}]}
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=BlueInib] run summon armor_stand 1020 125 1000 {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1}]}

tag @a remove HaveObjective
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=BlueMiddleInib] run tag @a[team=Orange] add InibStand
execute as @e[type=armor_stand,scores={HaveObjective=-999..},tag=OrangeMiddleInib] run tag @a[team=Blue] add InibStand

#Jump into Bulk with no destroyed inhibitor
execute as @a[x=1020.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=InibStand] at @s run tellraw @s ["",{"text":">> You have to destroy at least 1 inhibitor before you jump into the Bulk","color":"red","bold":true}]
execute as @a[x=980.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=InibStand] at @s run tellraw @s ["",{"text":">> You have to destroy at least 1 inhibitor before you jump into the Bulk","color":"red","bold":true}]
execute as @a[x=1020.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=InibStand] at @s run playsound minecraft:entity.endermen.teleport record @a[distance=..30]
execute as @a[x=980.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=InibStand] at @s run playsound minecraft:entity.endermen.teleport record @a[distance=..30]
execute as @a[x=1020.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=InibStand] at @s run teleport @s ~1 ~ ~
execute as @a[x=980.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=InibStand] at @s run teleport @s ~-1 ~ ~

#Jump into Bulk with destroyed inhibitor
tag @a[x=1020.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Orange,scores={InGame=1..},tag=!InibStand] add HaveObjective
tag @a[x=980.5,y=125,z=1000.5,dx=0,dy=0,dz=0,gamemode=adventure,team=Blue,scores={InGame=1..},tag=!InibStand] add HaveObjective
effect give @a[tag=HaveObjective] resistance 1 100 true
execute at @a[tag=HaveObjective] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
execute as @a[team=Orange,tag=HaveObjective] run teleport 980 100 1000
execute as @a[team=Blue,tag=HaveObjective] run teleport 1020 100 1000
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
execute as @e[type=armor_stand,scores={Timer=1,Var1=..1},name=Orange] run kill @e[type=armor_stand,tag=Conquest]
execute as @e[type=armor_stand,scores={Timer=1,Var1=3..},name=Orange] run kill @e[type=armor_stand,tag=Conquest]
execute as @e[type=armor_stand,scores={Timer=1,Var1=..1},name=Orange] at @s run function hierarchy:game/mode/conquest/infection/spawntowers
