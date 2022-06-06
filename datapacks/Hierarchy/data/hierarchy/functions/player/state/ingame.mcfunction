#Called by Player/Main

#Spawnpoint
execute as @a[gamemode=adventure,tag=InGame] at @s if block ~ ~ ~ air if block ~ ~1 ~ air run spawnpoint @s ~ ~ ~

tag @a[tag=InGame] add Ready

#Hats 
execute as @e[type=armor_stand,name=Blue,tag=Setting_Game_Started] at @s at @s[tag=Setting_Hats] if entity @a[scores={Hat=1..}] run function hierarchy:easter-egg/hat/effects/main
execute as @e[type=armor_stand,scores={Timer=1},name=Blue,tag=Setting_Game_Started] at @s at @s[tag=Setting_Hats] as @a[scores={Coins=2000..},tag=!blingbling] at @s run function hierarchy:easter-egg/hat/getblingbling

#WTF?! More love less war
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players set @a[tag=InGame] EffNoMalus 2010

 
