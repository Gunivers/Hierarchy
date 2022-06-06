#Called by Player/Main

#Initialization
scoreboard players set @a[team=Blue,scores={Class=1..,InGame=0},tag=InTraining] InGame 1
scoreboard players set @a[team=Orange,scores={Class=1..,InGame=0},tag=InTraining] InGame 1

#Basic effects
scoreboard players add @a[scores={InGame=1..,Mana=..299},tag=InTraining] Mana 1
effect give @a[scores={InGame=1..},tag=InTraining] regeneration 1 127 true
scoreboard players set @a[tag=InTraining] Coins 0
team join Blue @a[tag=InTraining,team=!Orange,team=!Blue]

#Clear inventory
replaceitem entity @a[gamemode=adventure,scores={Class=0,InGame=1..},tag=InTraining] weapon.mainhand air 1
replaceitem entity @a[gamemode=adventure,scores={Class=0,InGame=1..},tag=InTraining] weapon.offhand air 1
replaceitem entity @a[gamemode=adventure,scores={Class=0,InGame=1..},tag=InTraining] armor.feet air 1
replaceitem entity @a[gamemode=adventure,scores={Class=0,InGame=1..},tag=InTraining] armor.legs air 1
replaceitem entity @a[gamemode=adventure,scores={Class=0,InGame=1..},tag=InTraining] armor.chest air 1
replaceitem entity @a[gamemode=adventure,scores={InGame=1..},tag=InTraining] hotbar.8 air
replaceitem entity @a[gamemode=adventure,scores={InGame=1..},tag=InTraining] hotbar.5 air
replaceitem entity @a[gamemode=adventure,scores={InGame=1..},tag=InTraining] hotbar.6 air
replaceitem entity @a[gamemode=adventure,scores={InGame=1..},tag=InTraining] hotbar.7 air
spreadplayers 2000 2000 0 50 false @a[x=1992.5,y=103,z=2041.5,dx=5,dy=0,dz=3]
