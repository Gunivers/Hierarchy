execute at @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=..100,Timer05=1}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B","MT3G"],NoGravity:1}
execute at @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell3=..100,Timer05=6}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B","MT3G"],NoGravity:1}

execute at @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=..100,Timer05=1}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R","MT3G"],NoGravity:1}
execute at @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell3=..100,Timer05=6}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R","MT3G"],NoGravity:1}

execute as @e[type=armor_stand,scores={Timer=0..},tag=MT3G] at @s run tp @s @p
scoreboard players set @e[type=armor_stand,scores={Timer=1..},tag=MT3G] Timer -60
