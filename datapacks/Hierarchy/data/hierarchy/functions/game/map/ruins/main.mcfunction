spreadplayers 5935 6000 0 3 false @a[gamemode=!creative,team=Orange,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 6065 6000 0 3 false @a[gamemode=!creative,team=Blue,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 5935 6000 0 3 false @a[gamemode=!creative,team=Orange,scores={Back=140..141}]
spreadplayers 6065 6000 0 3 false @a[gamemode=!creative,team=Blue,scores={Back=140..141}]

spreadplayers 6000 6000 0 50 false @e[x=6015.5,y=106,z=5927.5,dx=5,dy=0,dz=3,tag=IsPlaying]
spreadplayers 6000 6000 0 50 false @e[x=5980.5,y=106,z=6070.5,dx=5,dy=0,dz=3,tag=IsPlaying]

execute as @a[scores={InGame=1..}] at @s as @a[x=-20.5,y=200,z=-20.5,dx=42,dy=1,dz=42,scores={InGame=1..}] at @s run teleport 6000 140 6000

execute as @a[x=0.5,y=100,z=0.5,gamemode=spectator,distance=..100] at @s run teleport 6000 120 6000
# spawnpoint @a[team=Orange,scores={InGame=1..,LifeState=1..399}] 5935 101 6000
# spawnpoint @a[team=Blue,scores={InGame=1..,LifeState=1..399}] 6065 101 6000
