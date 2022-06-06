execute at @e[type=item,scores={Menu=1..,Timer=1}] at @p[gamemode=adventure,scores={Drop=2..,InGame=1..}] run particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 1 30
execute at @e[type=item,scores={Menu=1..,Timer=1}] as @p[gamemode=adventure,scores={Drop=2..,InGame=1..}] at @s run playsound entity.zombie.infect record @a[distance=..30] ~ ~ ~ 2 1 1

#Debug
#execute @e[type=Item,score_Menu_min=1,score_Timer_min=1,score_Timer=1] ~ ~ ~ /tellraw @a ["",{"selector":"@s"},{"text":"'s score Menu: "},{"score":{"name":"@s","objective":"Menu"}}]
#execute @e[type=Item,score_Menu_min=1,score_Timer_min=1,score_Timer=1] ~ ~ ~ execute @p[score_Drop_min=1] ~ ~ ~ /tellraw @a ["",{"selector":"@s"},{"text":"'s score Drop: "},{"score":{"name":"@s","objective":"Drop"}}]

scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Regeneration"}'}}}}] Menu 1
execute as @e[type=item,scores={Menu=1,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffRegen=..200,InGame=1..}] EffRegen 100
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Speed"}'}}}}] Menu 2
execute as @e[type=item,scores={Menu=2,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffSpeed=..200,InGame=1..}] EffSpeed 200
execute as @e[type=item,scores={Menu=2,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffJump=..200,InGame=1..}] EffJump 200
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Resistance"}'}}}}] Menu 3
execute as @e[type=item,scores={Menu=3,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffResistance=..200,InGame=1..}] EffResistance 200
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Mana"}'}}}}] Menu 4
execute as @e[type=item,scores={Menu=4,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffMana=..200,InGame=1..}] EffMana 200
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Power"}'}}}}] Menu 5
execute as @e[type=item,scores={Menu=5,Timer=1}] at @s run effect give @p[gamemode=adventure,scores={Drop=1..,InGame=1..}] strength 5 0 true
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Invisibility"}'}}}}] Menu 6
execute as @e[type=item,scores={Menu=6,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffInvisibility=..60,InGame=1..}] EffInvisibility 100
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Invulnerability"}'}}}}] Menu 7
execute as @e[type=item,scores={Menu=7,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffInvulnerable=..20,InGame=1..}] EffInvulnerable 100
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Potion of Heal"}'}}}}] Menu 8
execute as @e[type=item,scores={Menu=8,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffHeal=..20,InGame=1..}] EffHeal 1002
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Legendary Potion"}'}}}}] Menu 9
execute as @e[type=item,scores={Menu=9,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffRegen=..200,InGame=1..}] EffRegen 100
execute as @e[type=item,scores={Menu=9,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffSpeed=..200,InGame=1..}] EffSpeed 200
execute as @e[type=item,scores={Menu=9,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffJump=..200,InGame=1..}] EffJump 200
execute as @e[type=item,scores={Menu=9,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffResistance=..200,InGame=1..}] EffResistance 200
execute as @e[type=item,scores={Menu=9,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffMana=..200,InGame=1..}] EffMana 200
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Divin Potion"}'}}}}] Menu 10
execute as @e[type=item,scores={Menu=10,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffInvulnerable=..20,InGame=1..}] EffInvulnerable 100
execute as @e[type=item,scores={Menu=10,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffHeal=..20,InGame=1..}] EffHeal 1002
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Darkness Potion"}'}}}}] Menu 11
execute as @e[type=item,scores={Menu=11,Timer=1}] at @s run effect give @p[gamemode=adventure,scores={Drop=1..,InGame=1..}] strength 5 0 true
execute as @e[type=item,scores={Menu=11,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffInvisibility=..60,InGame=1..}] EffInvisibility 100
scoreboard players set @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Ultimate Potion"}'}}}}] Menu 12
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffRegen=..200,InGame=1..}] EffRegen 100
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffSpeed=..200,InGame=1..}] EffSpeed 200
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffJump=..200,InGame=1..}] EffJump 200
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffResistance=..200,InGame=1..}] EffResistance 200
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffMana=..200,InGame=1..}] EffMana 200
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffInvulnerable=..20,InGame=1..}] EffInvulnerable 100
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffHeal=..20,InGame=1..}] EffHeal 1002
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run effect give @p[gamemode=adventure,scores={Drop=1..,InGame=1..}] strength 5 0 true
execute as @e[type=item,scores={Menu=12,Timer=1}] at @s run scoreboard players set @p[gamemode=adventure,scores={Drop=1..,EffInvisibility=..60,InGame=1..}] EffInvisibility 100
