#State tags
tag @e remove InTraining
tag @e[x=2000.5,y=100,z=2000.5,distance=..100] add InTraining

tag @e remove InLobby
tag @e[x=5000.5,y=100,z=5000.5,distance=..100] add InLobby
tag @e[x=5000.5,y=200,z=5000.5,distance=..70] add InLobby

tag @a[x=-999.5,y=100,z=-999.5,distance=..100] add InLobby
tag @a[x=-1999.5,y=100,z=-1999.5,distance=..100] add InLobby

tag @e[tag=InTraining] add InLobby

tag @a remove InGame
execute as @e[type=armor_stand,name=Blue,tag=Setting_Game_Started,limit=1,sort=nearest] at @s run tag @a[scores={InGame=1..}] add InGame

tag @e remove InSpec
execute as @r[tag=InGame] run tag @e[team=Spec] add InSpec

tag @e remove IsPlaying
tag @a[gamemode=adventure,team=Blue,scores={Class=1..,InGame=1..}] add IsPlaying
tag @a[gamemode=adventure,team=Orange,scores={Class=1..,InGame=1..}] add IsPlaying
execute as @e[type=!player] run tag @s[tag=!Data] add IsPlaying


tag @e remove AffectByBlue
tag @e[team=Orange,tag=IsPlaying] add AffectByBlue
tag @e remove AffectByOrange
tag @e[team=Blue,tag=IsPlaying] add AffectByOrange

tag @e[tag=JungleMob] add AffectByOrange
tag @e[tag=JungleMob] add AffectByBlue
tag @e[tag=JungleMob] add IsPlaying



#Spec -> Spawn
execute as @a[gamemode=spectator,team=Spawn] run teleport 5000 101 5000
gamemode adventure @a[gamemode=spectator,team=Spawn]


#Call /Player/*
execute as @r[scores={InGame=1..}] at @s run function hierarchy:player/state/isplaying
execute as @r[tag=InTraining] at @s run function hierarchy:player/state/intraining
execute as @r[tag=InLobby] at @s run function hierarchy:player/state/inlobby
execute as @r[tag=InGame] at @s run function hierarchy:player/state/ingame
execute as @r[tag=InSpec] at @s run function hierarchy:player/state/inspec
