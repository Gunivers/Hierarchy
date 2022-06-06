#Maps
execute as @e[type=armor_stand,scores={Class=0},name=Orange] at @s run gamemode spectator @a[x=3000.5,y=120,z=3000.5,gamemode=adventure,team=Spec,distance=..5]
execute at @e[type=armor_stand,scores={Class=0},name=Orange] as @r[x=2000.5,y=100,z=2000.5,tag=InGame,distance=150..] at @s as @a[gamemode=adventure,team=Spec] run teleport 3000 120 3000

execute as @e[type=armor_stand,scores={Class=1},name=Orange] at @s run gamemode spectator @a[x=4000.5,y=140,z=4000.5,gamemode=adventure,team=Spec,distance=..5]
execute at @e[type=armor_stand,scores={Class=1},name=Orange] as @r[x=2000.5,y=100,z=2000.5,tag=InGame,distance=150..] at @s as @a[gamemode=adventure,team=Spec] run teleport 4000 140 4000

execute as @e[type=armor_stand,scores={Class=2},name=Orange] at @s run gamemode spectator @a[x=6000.5,y=120,z=6000.5,gamemode=adventure,team=Spec,distance=..5]
execute at @e[type=armor_stand,scores={Class=2},name=Orange] as @r[x=2000.5,y=100,z=2000.5,tag=InGame,distance=150..] at @s as @a[gamemode=adventure,team=Spec] run teleport 6000 120 6000

execute as @e[type=armor_stand,scores={Class=3},name=Orange] at @s run gamemode spectator @a[x=1000.5,y=110,z=1000.5,gamemode=adventure,team=Spec,distance=..5]
execute at @e[type=armor_stand,scores={Class=3},name=Orange] as @r[x=2000.5,y=100,z=2000.5,tag=InGame,distance=150..] at @s as @a[gamemode=adventure,team=Spec] run teleport 1000 105 1000


tellraw @a[gamemode=adventure,team=Spec] ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> If you want to leave the spectate mode, look up.","color":"none"}]
execute as @a[gamemode=adventure,team=Spec] run playsound minecraft:block.note.hat record @p


scoreboard players set @a[tag=InSpec] LocationCheck 0

tellraw @a[team=Spec,tag=!SpecLookUp,x_rotation=-90..-85] ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> You can return to lobby by ","color":"none"},{"text":"clicking here","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger Action set 100"}}]
execute as @a[team=Spec,tag=!SpecLookUp,x_rotation=-90..-85] run playsound minecraft:block.note.hat record @p

tag @a remove SpecLookUp
tag @a[x_rotation=-90..-85] add SpecLookUp
