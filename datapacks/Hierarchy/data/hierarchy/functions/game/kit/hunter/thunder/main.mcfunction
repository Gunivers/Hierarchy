#Items
replaceitem entity @a[gamemode=adventure,scores={Class=23,EffSilence=..0,InGame=1..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Electrifies his bow to give more power to his arrows"}','{"text":"and thus inflict more damage for 3 seconds."}'],Name:"{\"text\":\"Electric Charge  0✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=23,EffSilence=..0,InGame=1..,Spell2=..0}] hotbar.2 snowball{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"It causes lightning to strike the target area."}','{"text":"The affected enemies will then suffer damage"}','{"text":"and receive the same mark as the Mage Thunder."}'],Name:"{\"text\":\"Shock  0✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=23,EffNoMove=..0,EffSilence=..0,InGame=1..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Accelerates and reaches very quickly the speed"}','{"text":"of lightning which it will be able to keep for 3 seconds."}','{"text":"If a player with the mark is near him, then a lightning"}','{"text":"bolt will fall on him."}'],Name:"{\"text\":\"Under Voltage  0✸  50s\",\"color\":\"red\"}"},HideFlags:63} 1

#Cooldowns
scoreboard players set @a[gamemode=adventure,scores={Class=23,InGame=1..,UseFishing=2}] Spell1 300
scoreboard players set @a[gamemode=adventure,scores={Class=23,InGame=1..,UseSnowball=2}] Spell2 200
scoreboard players set @a[gamemode=adventure,scores={Class=23,InGame=1..,UseXp=2}] Spell3 1000

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=23,EffNoMove=1..,InGame=1..,Spell3=..0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Werapon upgrade
replaceitem entity @a[gamemode=adventure,scores={Class=23,EffSilencePrim=..0,HaveBow=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 bow{Unbreakable:1,Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:infinity",lvl:1s}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"}} 1

#Spell 1
scoreboard players set @a[scores={Class=23,LifeState=500..,Spell1=299..}] UpgradedWeapon 140
scoreboard players set @a[scores={Class=23,LifeState=500..,Spell1=299..}] UseBow 1

#Spell 2
execute at @a[scores={Class=23,LifeState=500..,UseSnowball=2}] run summon armor_stand ~ ~ ~ {Tags:["HT2G"],Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoGravity:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
execute as @a[scores={Class=23,LifeState=500..,UseSnowball=2}] at @s run scoreboard players operation @e[type=armor_stand,tag=HT2G,distance=..5,limit=1,sort=nearest] ID = @s ID
execute as @e[type=armor_stand,tag=HT2G,limit=1,sort=nearest] at @s run function hierarchy:game/kit/hunter/thunder/spell2

#Spell 3
execute as @r[scores={Class=23,Spell3=940..}] at @s run function hierarchy:game/kit/hunter/thunder/spell3
