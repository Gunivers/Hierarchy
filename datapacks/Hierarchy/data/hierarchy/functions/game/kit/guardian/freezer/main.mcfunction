#Items
replaceitem entity @a[gamemode=adventure,scores={Class=34,EffSilence=..0,InGame=1..,Mana=20..,Spell1=..0}] hotbar.1 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create and throw an ice ball exploding"}','{"text":"at the first obstacle encountered. On impact, thi"}','{"text":"ball explodes, inflicting damage, rooting nearby enemies"}','{"text":"and creating a regeneration zone for 3 seconds to the allies."}'],Name:"{\"text\":\"Iceball  20✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=34,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Wraps itself in ice for 5 seconds making"}','{"text":"it invulnerable and regenerating its life (cannot move or"}','{"text":"use spells), and offers 20% protection to"}','{"text":"allies within a radius of 15 blocks."}'],Name:"{\"text\":\"Winter Sleep  30✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=34,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"For 7 seconds, he slows down all"}','{"text":"nearby enemies and inflicts damage on them"}','{"text":"each time he receives it. If he dies using this skill,"}','{"text":"close allies receive a healing bonus."}'],Name:"{\"text\":\"Chilblain  70✸  70s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=34,EffSilence=..0,InGame=1..,Mana=..19,Spell1=0}] hotbar.1 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=34,UseCarrot=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=34,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=34,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=34,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=34,UseXp=2}] Mana 70

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=34,InGame=1..,UseCarrot=2}] Spell1 500
scoreboard players set @a[gamemode=adventure,scores={Class=34,InGame=1..,UseFishing=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=34,InGame=1..,UseXp=2}] Spell3 1400

#Spell1
execute if entity @e[type=armor_stand,scores={Class=-34}] run function hierarchy:game/kit/guardian/freezer/spell1
execute if entity @e[type=armor_stand,scores={Class=34}] run function hierarchy:game/kit/guardian/freezer/spell1bis

#Spell2
execute as @a[scores={Class=34,Spell2=300..},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/freezer/spell2

#Spell3
execute as @a[scores={Class=34,Spell3=1260..,TakeDamage=1999..},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/freezer/spell3
effect give @a[scores={Class=34,Spell3=1280..},tag=IsPlaying] glowing 1 1 true
execute as @e[tag=WF3G] at @s if block ~ ~-0.1 ~ air run kill @s
scoreboard players set @a[scores={Class=34,EffSpeed=..1002,Spell3=1260..},tag=IsPlaying] EffSpeed 1002
execute at @a[scores={Class=34,Spell3=1260..},tag=IsPlaying] run particle firework ~ ~1 ~ 0.1 0.7 0.1 0 3 force
execute as @a[scores={Class=34,Spell3=1260..},tag=IsPlaying] at @s run playsound block.snow.fall record @a[distance=..15] ~ ~ ~ 2 1 1
