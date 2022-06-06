#Mana
scoreboard players add @a[scores={InGame=1..,Mana=..299,Timer=1}] Mana 1
scoreboard players add @a[scores={InGame=1..,Mana=..299,Timer=21}] Mana 1
scoreboard players add @a[scores={EffMana=1..,InGame=1..,Mana=..299,Timer=11}] Mana 1
scoreboard players add @a[scores={EffMana=1..,InGame=1..,Mana=..299,Timer=31}] Mana 1

execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_4,limit=1,sort=nearest] at @s run scoreboard players set @a Mana 300
