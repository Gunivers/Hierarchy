#Edit memory
setblock 0 77 0 red_stained_glass


tag @e remove Game_WTF_1
tag @e remove Game_WTF_2
tag @e remove Game_WTF_3
tag @e remove Game_WTF_4
tag @e remove Game_WTF_5
tag @e remove Game_WTF_6
tag @e remove Game_WTF_7
tag @e remove Game_WTF_8

#Sets
scoreboard players set @a Respawn -20
scoreboard objectives setdisplay sidebar Info
scoreboard players add @a[team=!Spec,scores={InGame=1..}] GameNumber 1
execute as @a[gamemode=!creative,scores={InGame=1..}] run teleport @s 5000 100 5000 90 0
execute as @a[gamemode=!creative,team=Spec] run teleport @s 5000 100 5000 90 0
clear @a[gamemode=!creative]
effect clear @a[gamemode=!creative,scores={1=1..}]
gamemode adventure @a[gamemode=!creative,scores={1=1..}]
team modify Blue collisionRule never
team modify Orange collisionRule never
scoreboard players set * InGame 0
team empty Spec
scoreboard players set @e HaveObjective 0
tag @e remove Surrend
title @a times 0 5 10
effect clear @a

#Effects scores reset
scoreboard players set @a EffDamage 0
scoreboard players set @a EffFly 0
scoreboard players set @a EffHeal 0
scoreboard players set @a EffInvisibility 0
scoreboard players set @a EffInvulnerable 0
scoreboard players set @a EffJump 0
scoreboard players set @a EffMana 0
scoreboard players set @a EffNoBonus 0
scoreboard players set @a EffNoDie 0
scoreboard players set @a EffNoMalus 0
scoreboard players set @a EffNoMove 0
scoreboard players set @a EffNoTp 0
scoreboard players set @a EffPlane 0
scoreboard players set @a EffPoison 0
scoreboard players set @a EffRegen 0
scoreboard players set @a EffResistance 0
scoreboard players set @a EffScare 0
scoreboard players set @a EffSilence 0
scoreboard players set @a EffSilencePrim 0
scoreboard players set @a EffSlow 0
scoreboard players set @a EffSpeed 0


#Disco easter egg start
setblock 30 73 31 daylight_detector[power=0]
