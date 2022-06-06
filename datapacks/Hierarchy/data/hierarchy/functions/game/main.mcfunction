tellraw @a[tag=Debug] ["",{"text":". Game/Main | As: "},{"selector":"@s"}]

execute if entity @a[tag=IsPlaying] run function hierarchy:game/kit/main
execute if entity @a[tag=IsPlaying] run function hierarchy:game/visual/main

execute if entity @e[type=armor_stand,name=Blue,tag=Setting_Game_Started,limit=1,sort=nearest] run function hierarchy:game/main-if-gamestarted
