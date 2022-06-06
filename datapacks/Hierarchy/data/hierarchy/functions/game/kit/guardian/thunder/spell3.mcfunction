execute as @a[gamemode=adventure,scores={Class=33,InGame=1..,Spell3=..200}] run scoreboard players operation @s Var1 = @s Timer
scoreboard players operation @a[gamemode=adventure,scores={Class=33,InGame=1..,Spell3=..200}] Var1 %= 10 Constant

execute at @a[gamemode=adventure,team=Blue,scores={Class=33,InGame=1..,Spell3=..200,Var1=1}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["333B","333G"],NoGravity:0}
execute at @a[gamemode=adventure,team=Orange,scores={Class=33,InGame=1..,Spell3=..200,Var1=1}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["333R","333G"],NoGravity:0}

execute as @a[gamemode=adventure,team=Blue,scores={Class=33,InGame=1..,Spell3=..200,Var1=1}] run scoreboard players operation @e[tag=333B] ID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=33,InGame=1..,Spell3=..200,Var1=1}] run scoreboard players operation @e[tag=333R] ID = @s ID
