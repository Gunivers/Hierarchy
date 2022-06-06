#Items
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffSilence=..0,InGame=1..,Mana=20..,Spell1=..0}] hotbar.1 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Summon 4 orbs of vital energy remaining on the ground"}','{"text":"for 10 seconds. Allies recovering orbs receive"}','{"text":"regeneration while enemies receive heavy damage."}'],Name:"{\"text\":\"Life Orbs  20✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1

tag @a[scores={Class=36}] remove InRangeSpell2
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=36},tag=AffectByOrange,distance=..10] add InRangeSpell2
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=36},tag=AffectByBlue,distance=..10] add InRangeSpell2
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0},tag=InRangeSpell2] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create an area that blinds enemies and"}','{"text":"gives allies a speed bonus. just after creating"}','{"text":"the area, it teleports to the nearest enemy (present"}','{"text":"in the area), scaring them and inflicting damage."}'],Name:"{\"text\":\"Nightmare  30✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0},tag=!InRangeSpell2] hotbar.2 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create an area that blinds enemies and"}','{"text":"gives allies a speed bonus. just after creating"}','{"text":"the area, it teleports to the nearest enemy (present"}','{"text":"in the area), scaring them and inflicting damage."}'],Name:"{\"text\":\"Nightmare  30✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Makes 4 horses of death appear, allowing"}','{"text":"him and his allies to move faster. When he"}','{"text":"is on his horse, his basic weapon does slightly"}','{"text":"less damage but his recharging time is reduced"}','{"text":"to 0 seconds."}'],Name:"{\"text\":\"Cavalry  70✸  70s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffSilence=..0,InGame=1..,Mana=..19,Spell1=0}] hotbar.1 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=36,UsePotion=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=36,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=36,UseXp=2}] Mana 70

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=36,InGame=1..,UsePotion=2}] Spell1 500
scoreboard players set @a[gamemode=adventure,scores={Class=36,InGame=1..,UseFishing=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=36,InGame=1..,UseXp=2}] Spell3 1400

#Upgraded Weapon
replaceitem entity @a[gamemode=adventure,scores={Class=36,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 iron_axe{Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack (Upgraded)\",\"color\":\"aqua\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]} 1

#Spell1
execute as @a[scores={Class=36,Spell1=499},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/invoker/spell1
execute if entity @e[tag=WI1G] run function hierarchy:game/kit/guardian/invoker/spell1bis

#Spell2
execute as @a[scores={Class=36,Spell2=398},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/invoker/spell2

#Spell3
execute as @a[scores={Class=36,Spell3=1399},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/invoker/spell3
execute if entity @e[tag=363G] run function hierarchy:game/kit/guardian/invoker/spell3bis

