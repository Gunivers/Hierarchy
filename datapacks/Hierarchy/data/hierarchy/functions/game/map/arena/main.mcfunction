spreadplayers 3926 4000 0 3 false @a[gamemode=!creative,team=Orange,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 4074 4000 0 3 false @a[gamemode=!creative,team=Blue,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 3926 4000 0 3 false @a[gamemode=!creative,team=Orange,scores={Back=140..141}]
spreadplayers 4074 4000 0 3 false @a[gamemode=!creative,team=Blue,scores={Back=140..141}]

execute as @a[scores={InGame=1..}] at @s as @a[x=-20.5,y=200,z=-20.5,dx=42,dy=1,dz=42,scores={InGame=1..}] at @s run teleport 4000 140 4000

execute as @a[x=0.5,y=100,z=0.5,gamemode=spectator,distance=..100] at @s run teleport 4000 140 4000
# spawnpoint @a[team=Orange,scores={InGame=1..,LifeState=1..399}] 3926 101 4000
# spawnpoint @a[team=Blue,scores={InGame=1..,LifeState=1..399}] 4074 101 4000
execute as @e[type=armor_stand,scores={Class=2..},name=Blue] run setblock 4123 111 4000 air
execute as @e[type=armor_stand,scores={Class=..0},name=Blue] run setblock 4123 111 4000 air
execute as @e[type=armor_stand,scores={Class=2..},name=Blue] run setblock 3877 111 4000 air
execute as @e[type=armor_stand,scores={Class=..0},name=Blue] run setblock 3877 111 4000 air
execute as @e[type=armor_stand,scores={Class=3..},name=Blue] run setblock 4123 112 4000 air
execute as @e[type=armor_stand,scores={Class=..1},name=Blue] run setblock 4123 112 4000 air
execute as @e[type=armor_stand,scores={Class=3..},name=Blue] run setblock 3877 112 4000 air
execute as @e[type=armor_stand,scores={Class=..1},name=Blue] run setblock 3877 112 4000 air
