#Items
replaceitem entity @a[gamemode=adventure,scores={Class=6,EffSilence=..0,InGame=1..,Mana=30..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Summon four archers skeletons, nearby,"}','{"text":"attacking enemies from a distance."}'],Name:"{\"text\":\"Archer Army  90✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=6,EffSilence=..0,InGame=1..,Mana=20..,Spell2=..0}] hotbar.2 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a zone of vital energy, giving poison and"}','{"text":"slowness to enemies in the zone and offering"}','{"text":"protection to allies. In addition, enemies in the"}','{"text":"area are prohibited from using their move skills."}'],Name:"{\"text\":\"Vital Energy Zone  20✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=6,EffSilence=..0,InGame=1..,Mana=90..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Uses vital energy to blind, root and inflict damage"}','{"text":"on nearby enemies. Nearby allies receive care."}'],Name:"{\"text\":\"Fountain of Youth  30✸  90s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=6,EffSilence=..0,InGame=1..,Mana=..89,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=6,UseXp=2}] Mana 90
replaceitem entity @a[gamemode=adventure,scores={Class=6,EffSilence=..0,InGame=1..,Mana=..19,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=6,UsePotion=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=6,EffSilence=..0,InGame=1..,Mana=..29,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=6,UseFishing=2}] Mana 30

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=6,InGame=1..,UseFishing=2}] Spell1 300
scoreboard players set @a[gamemode=adventure,scores={Class=6,InGame=1..,UsePotion=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=6,InGame=1..,UseXp=2}] Spell3 1800

#Spell 1
execute as @a[scores={Class=6,Spell1=298..300}] at @s run function hierarchy:game/kit/mage/invoker/spell1

#Spell 2
execute as @a[scores={Class=6,Spell2=299..}] at @s run function hierarchy:game/kit/mage/invoker/spell2

#Spell 3
execute as @a[scores={Class=6,Spell3=1799..}] at @s run function hierarchy:game/kit/mage/invoker/spell3

