#Items
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=60..,Spell1=0}] hotbar.1 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Liquefies to a thin film of water light enough"}','{"text":"to fly and gains resistance and regeneration."}','{"text":"This effect lasts 10 seconds, during which time"}','{"text":"he can move where he wants, but very slowly."}','{"text":"However, he may abort to this effect at any time."}','{"text":"At the end of this skill, he drowns close enemies,"}','{"text":"inflicts damage on them."}'],Name:"{\"text\":\"Water Transformation  40✸  30s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Spell1=..-1}] hotbar.1 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Abort the Water Transformation."}'],Name:"{\"text\":\"Abort Water Transformation\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=20..,Spell2=..0}] hotbar.2 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Brutally cools the area around him, inflicting"}','{"text":"damage on nearby enemies. For 5 seconds,"}','{"text":"all nearby enemies are greatly slowed down."}'],Name:"{\"text\":\"Refresh  20✸  5s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=40..,Spell1=0..,Spell3=..0}] hotbar.3 snowball{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a wind of cold air in front of him, inflicting"}','{"text":"damage on nearby enemies and rooting them."}','{"text":"When this freezing wind hits a surface, it stops"}','{"text":"and gives poison and slowdown to the enemies."}'],Name:"{\"text\":\"Winter Blast  60✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=40..,Spell1=..-1,Spell3=..0}] hotbar.3 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a wind of cold air in front of him, inflicting"}','{"text":"damage on nearby enemies and rooting them."}','{"text":"When this freezing wind hits a surface, it stops"}','{"text":"and gives poison and slowdown to the enemies."}'],Name:"{\"text\":\"Winter Blast  60✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=..39,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=4,UseSnowball=2}] Mana 40
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=..19,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=4,UseCarrot=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=4,EffSilence=..0,InGame=1..,Mana=..59,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=4,Spell1=-198}] Mana 60

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=0,UsePotion=2}] Spell1 -200
scoreboard players set @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=..-200,UsePotion=2}] UsePotion 0
scoreboard players set @a[gamemode=adventure,scores={Class=4,InGame=1..,UseCarrot=2}] Spell2 200
scoreboard players set @a[gamemode=adventure,scores={Class=4,InGame=1..,UseSnowball=2}] Spell3 900

#Spell 1
execute as @r[scores={Class=4,InGame=1..,Spell1=..-1}] at @s run function hierarchy:game/kit/mage/freezer/spell1
tag @a[gamemode=adventure,scores={Class=4,InGame=1..,Spell1=500..}] add NoFall


#Spell 2
execute as @a[scores={Class=4,Spell2=200}] at @s run playsound block.sand.break record @a[distance=..30] ~ ~ ~ 2 1 1
tag @e[scores={Class=4},tag=DirMoving,tag=!MF3G] add MF2G
tag @e[scores={Class=-4},tag=DirMoving,tag=!MF3G] add MF2G
execute if entity @e[tag=MF2G] run function hierarchy:game/kit/mage/freezer/spell2


#Spell 3
execute as @a[scores={Class=4,Spell3=900}] at @s run playsound minecraft:entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 2 2 1
execute as @r[scores={Class=4,InGame=1..,Spell3=760..}] at @s run function hierarchy:game/kit/mage/freezer/spell3




