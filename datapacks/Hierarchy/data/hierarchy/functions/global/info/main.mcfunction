function hierarchy:global/info/global
execute if entity @a[x=5000.5,y=100,z=5000.5,distance=..30] run function hierarchy:global/info/lobby
execute if entity @e[type=armor_stand,name=Blue,tag=Setting_Game_Started,limit=1,sort=nearest] run function hierarchy:global/info/ingame
execute if entity @e[type=armor_stand,name=Blue,tag=!Setting_Game_Started,limit=1,sort=nearest] run function hierarchy:global/info/notingame
