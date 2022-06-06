
gamemode adventure @a[gamemode=spectator,scores={1=1..},tag=InLobby]
execute as @e[type=armor_stand,name=Blue,tag=!Setting_Game_Started] as @a[gamemode=!creative,tag=!InLobby] run teleport 5000 100 5000
# execute as @e[type=armor_stand,name=Blue,tag=!Setting_Game_Started] as @a[gamemode=spectator,team=Spec] run teleport 5000 100 5000
execute as @e[type=armor_stand,scores={Class=0},name=Orange,limit=1,sort=nearest] at @s run spreadplayers 3000 3000 0 50 false @a[x=3000.5,y=100,z=3000.5,gamemode=spectator,team=Spec,distance=300..]
execute as @e[type=armor_stand,scores={Class=0},name=Orange,limit=1,sort=nearest] at @s run spreadplayers 3000 3000 0 50 false @a[x=3000.5,y=100,z=3000.5,gamemode=adventure,tag=InGame,distance=300..]
execute as @e[type=armor_stand,scores={Class=1},name=Orange,limit=1,sort=nearest] at @s run spreadplayers 4000 4000 0 50 false @a[x=4000.5,y=100,z=4000.5,gamemode=spectator,team=Spec,distance=300..]
execute as @e[type=armor_stand,scores={Class=1},name=Orange,limit=1,sort=nearest] at @s run spreadplayers 4000 4000 0 50 false @a[x=4000.5,y=100,z=4000.5,gamemode=adventure,tag=InGame,distance=300..]
execute as @e[type=armor_stand,scores={Class=2},name=Orange,limit=1,sort=nearest] at @s run spreadplayers 6000 6000 0 50 false @a[x=6000.5,y=100,z=6000.5,gamemode=spectator,team=Spec,distance=300..]
execute as @e[type=armor_stand,scores={Class=2},name=Orange,limit=1,sort=nearest] at @s run spreadplayers 6000 6000 0 50 false @a[x=6000.5,y=100,z=6000.5,gamemode=adventure,tag=InGame,distance=300..]
