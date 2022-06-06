#Items
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=15..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Spontaneously starts running as fast as he can,"}','{"text":"rooting close enemies and leaving them the mark."}'],Name:"{\"text\":\"Electrical Speed  50✸  7s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffSilence=..0,InGame=1..,Mana=25..,Spell2=..0}] hotbar.2 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Strikes down enemies marked with its passive"}','{"text":"mark, and throws an electric cloud bouncing off"}','{"text":"the walls and giving the mark to the affected enemies."}'],Name:"{\"text\":\"Strike  25✸  5s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffSilence=..0,InGame=1..,Mana=50..,Spell3=..0}] hotbar.3 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a storm around him where enemies are struck"}','{"text":"by lightning every second for 5 seconds. In addition,"}','{"text":"enemies in the area are prohibited from teleport skills"}','{"text":"and they receive the mark."}'],Name:"{\"text\":\"Tempest  15✸  60s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffSilence=..0,InGame=1..,Mana=..49,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=3,UsePotion=2}] Mana 50
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffSilence=..0,InGame=1..,Mana=..24,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=3,UseCarrot=2}] Mana 25
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=..14,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=3,UseFishing=2}] Mana 15

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=3,InGame=1..,UseFishing=2}] Spell1 140
scoreboard players set @a[gamemode=adventure,scores={Class=3,InGame=1..,UseCarrot=2}] Spell2 100
scoreboard players set @a[gamemode=adventure,scores={Class=3,InGame=1..,UsePotion=2}] Spell3 1200

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=3,EffNoMove=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Spell 1
execute if entity @a[scores={Class=3,InGame=1..,Spell1=119..}] run function hierarchy:game/kit/mage/thunder/spell1

#Spell2
execute if entity @a[scores={Class=3,InGame=1..,Spell2=60..}] run function hierarchy:game/kit/mage/thunder/spell2

#Spell3
execute if entity @a[scores={Class=3,InGame=1..,Spell3=1100..}] run function hierarchy:game/kit/mage/thunder/spell3

