#Edit momory
setblock 0 77 0 green_stained_glass

#Random Team
function hierarchy:game/team/random


#Random Kit
execute as @a[tag=Ready] run scoreboard players operation @s Var1 = @s Class
execute as @a[tag=Ready] run scoreboard players operation @s Var1 %= 10 Constant
tag @a[scores={Var1=0},tag=Ready] add RandomKit
execute if entity @a[tag=RandomKit] run function hierarchy:game/kit/random


#Team parameters
team modify Blue collisionRule always
team join Blue Blue
team modify Blue collisionRule always
team join Orange Orange

#Game variables
tag @e remove Surrend
scoreboard players operation @e[x=0.5,y=65,z=0.5,tag=DATA,type=armor_stand] Score = tickets Buffer
scoreboard objectives setdisplay sidebar Tickets
effect clear @a[tag=Ready]
scoreboard players set @a TouchID 0
scoreboard players set @a Timer 0
scoreboard players set @e HaveObjective 0
scoreboard players set @a[tag=Ready] LifeState 200
scoreboard players set @a[tag=Ready] InGame 1
scoreboard players set @a[tag=Ready] Coins 100
scoreboard players set @a[tag=Ready] DeathNumber 0
scoreboard players set @a[tag=Ready] KillNumber 0
scoreboard players set @a[tag=Ready] KillStreak 0
scoreboard players set @a[tag=Ready] MaxKillStreak 0
scoreboard players set @a[tag=Ready] CoinsNumber 0
scoreboard players set @a[tag=Ready] Spell1 0
scoreboard players set @a[tag=Ready] Spell2 0
scoreboard players set @a[tag=Ready] Spell3 0
gamemode spectator @a[tag=Ready]


#Teleport to map
execute as @a[tag=Ready] run function hierarchy:game/map/teleport_to_map
execute as @a[team=Spec] run function hierarchy:game/map/teleport_to_map
clear @a[tag=Ready]

#Notif
execute as @a run playsound minecraft:block.note.snare record @p
title @a times 0 5 10




#Disco easter egg reset
setblock 30 73 31 redstone_block





#WTF modes
execute as @e[type=armor_stand,scores={Class=3},name=Blue] run playsound minecraft:block.stone_button.click_on record @a

execute if entity @e[type=armor_stand,scores={Class=3},name=Blue] run function hierarchy:game/mode/wtf/main

#WTF 1 - I believe you an fly
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! I believe you can fly!","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Orange] Class 3
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 1
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=1..,InGame=0..}] Class 5
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=1..,InGame=0..}] Class 5

#WTF 2 - Big muscles but little heart
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! Big muscles but little heart ...","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 0
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Blue,scores={Class=1..10,InGame=0..}] Class 30
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Orange,scores={Class=1..10,InGame=0..}] Class 30
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Blue,scores={Class=10..20,InGame=0..}] Class 20
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Orange,scores={Class=10..20,InGame=0..}] Class 20
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Blue,scores={Class=20..30,InGame=0..}] Class 10
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Orange,scores={Class=20..30,InGame=0..}] Class 10


#WTF 3 - Who am I
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_3,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! Who am I?","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_3,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Orange] Class 1
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_3,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 0

#WTF 4 - MICHAEL BAY MODAKOKA!!!
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_4,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! MICHAEL BAY MODAFOKA!!!","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_4,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 0
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_4,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=1..,InGame=0..}] Class 2
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_4,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=1..,InGame=0..}] Class 2

#WTF 5 - More love, less war <3
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! More love, less war <3","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 1
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Blue,scores={Class=1..10,InGame=0..}] Class 10
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players add @a[team=Orange,scores={Class=1..10,InGame=0..}] Class 10
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players remove @a[team=Blue,scores={Class=20..30,InGame=0..}] Class 10
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players remove @a[team=Orange,scores={Class=20..30,InGame=0..}] Class 10
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players remove @a[team=Blue,scores={Class=30..40,InGame=0..}] Class 20
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @s run scoreboard players remove @a[team=Orange,scores={Class=30..40,InGame=0..}] Class 20

#WTF 6 - One in the chamber
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_6,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! One in the chamber!","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_6,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 0
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_6,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=1..,InGame=0..}] Class 26
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_6,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=1..,InGame=0..}] Class 26

#WTF 7 - Winter is coming
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! Winter is coming!","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 1
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=1..10,InGame=0..}] Class 4
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=1..10,InGame=0..}] Class 2
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=10..20,InGame=0..}] Class 14
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=10..20,InGame=0..}] Class 12
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=20..30,InGame=0..}] Class 24
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=20..30,InGame=0..}] Class 22
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Blue,scores={Class=30..40,InGame=0..}] Class 34
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_7,limit=1,sort=nearest] at @s run scoreboard players set @a[team=Orange,scores={Class=30..40,InGame=0..}] Class 32

#WTF 8 -?
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_8,limit=1,sort=nearest] at @s run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! Where the hell am I?","color":"green"}]
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_8,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,name=Blue] Class 0


#TP on the map
execute as @e[type=armor_stand,scores={Class=0},name=Orange] as @a[gamemode=!creative,scores={LifeState=..-1}] run teleport 3000 120 3000
execute as @e[type=armor_stand,scores={Class=1},name=Orange] as @a[gamemode=!creative,scores={LifeState=..-1}] run teleport 4000 140 4000
execute as @e[type=armor_stand,scores={Class=2},name=Orange] as @a[gamemode=!creative,scores={LifeState=..-1}] run teleport 6000 120 6000
