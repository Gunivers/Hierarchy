execute as @a[scores={InGame=1..}] at @s as @a[x=0.5,y=100,z=0.5,gamemode=spectator,distance=..100] at @s run teleport 3000 120 3000

spreadplayers 2892 2999 0 3 false @a[gamemode=!creative,team=Orange,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 3108 3001 0 3 false @a[gamemode=!creative,team=Blue,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 2892 2999 0 3 false @a[gamemode=!creative,team=Orange,scores={Back=140..141}]
spreadplayers 3108 3001 0 3 false @a[gamemode=!creative,team=Blue,scores={Back=140..141}]

# spawnpoint @a[team=Orange,scores={InGame=1..,LifeState=1..399}] 2892 99 2999
# spawnpoint @a[team=Blue,scores={InGame=1..,LifeState=1..399}] 3108 99 3001
execute as @e[type=armor_stand,scores={Class=2..},name=Blue] run setblock 2855 110 2951 air
execute as @e[type=armor_stand,scores={Class=..0},name=Blue] run setblock 2855 110 2951 air
execute as @e[type=armor_stand,scores={Class=2..},name=Blue] run setblock 3145 110 3049 air
execute as @e[type=armor_stand,scores={Class=..0},name=Blue] run setblock 3145 110 3049 air
execute as @e[type=armor_stand,scores={Class=3..},name=Blue] run setblock 2855 111 2951 air
execute as @e[type=armor_stand,scores={Class=..1},name=Blue] run setblock 2855 111 2951 air
execute as @e[type=armor_stand,scores={Class=3..},name=Blue] run setblock 3145 111 3049 air
execute as @e[type=armor_stand,scores={Class=..1},name=Blue] run setblock 3145 111 3049 air
