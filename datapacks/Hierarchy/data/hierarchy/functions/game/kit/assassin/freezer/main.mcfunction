#Items
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=40..,Spell1=..0}] hotbar.1 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Become transparent like pure water\"}","{\"text\":\" for 5 seconds and propel yourself\"}","{\"text\":\" wherever you want.\"}","{\"text\":\"\"}","{\"text\":\"During your invisibility,\"}","{\"text\":\" you gain in travel speed.\"}"],Name:"{\"text\":\"Transparency  40✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1

tag @a[scores={Class=14}] remove InRangeSpell2
execute as @e[tag=AffectByBlue] at @s run tag @a[scores={Class=14},tag=AffectByOrange,distance=..7] add InRangeSpell2
execute as @e[tag=AffectByOrange] at @s run tag @a[scores={Class=14},tag=AffectByBlue,distance=..7] add InRangeSpell2
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffSilence=..0,InGame=1..,Mana=25..,Spell2=..0},tag=InRangeSpell2] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Freeze nearby enemies,\"}","{\"text\":\" inflicting damage and preventing\"}","{\"text\":\" them from using their spells\"}","{\"text\":\" for 3 seconds.\"}"],Name:"{\"text\":\"Winter Silence  25✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffSilence=..0,InGame=1..,Mana=25..,Spell2=..0},tag=!InRangeSpell2] hotbar.2 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Freeze nearby enemies,\"}","{\"text\":\" inflicting damage and preventing\"}","{\"text\":\" them from using their spells\"}","{\"text\":\" for 3 seconds.\"}"],Name:"{\"text\":\"Winter Silence  25✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Create a cold zone that slows down enemies\"}","{\"text\":\" and inflicts continuous damage for 3.5 seconds.\"}","{\"text\":\"\"}","{\"text\":\"At the end of this time,\"}","{\"text\":\" this area quickly warms up,\"}","{\"text\":\" inflicting additional damage and rooting\"}","{\"text\":\" enemies still present in the area.\"}","{\"text\":\"\"}","{\"text\":\"If a fireball passes near the heart of\"}","{\"text\":\" this area, it explodes instantly.\"}"],Name:"{\"text\":\"Cooling  70✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffSilence=..0,InGame=1..,Mana=..39,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=14,UseTp=2}] Mana 40
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffSilence=..0,InGame=1..,Mana=..24,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=14,UseFishing=2}] Mana 25
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=14,UseXp=2}] Mana 70

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=14,InGame=1..,UseTp=2}] Spell1 500
scoreboard players set @a[gamemode=adventure,scores={Class=14,InGame=1..,UseFishing=2}] Spell2 300
scoreboard players set @a[gamemode=adventure,scores={Class=14,InGame=1..,UseXp=2}] Spell3 900

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=14,EffNoTp=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Spell 1
execute as @a[scores={Class=14,Spell1=499..}] at @s run function hierarchy:game/kit/assassin/freezer/spell1

#Spell 2
execute as @a[scores={Class=14,Spell2=298..}] at @s run function hierarchy:game/kit/assassin/freezer/spell2
execute as @e[tag=AF2G-item] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"snow"},NoGravity:1,Tags:["AF2G-item2"]}

#Spell 3
execute as @a[scores={Class=14,Spell3=790..}] at @s run function hierarchy:game/kit/assassin/freezer/spell3





