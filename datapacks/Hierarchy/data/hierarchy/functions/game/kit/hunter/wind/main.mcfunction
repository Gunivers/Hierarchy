#InRangeSpell2
tag @a[scores={Class=25}] remove InRangeSpell2
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=25},tag=AffectByOrange,distance=..7] add InRangeSpell2
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=25},tag=AffectByBlue,distance=..7] add InRangeSpell2

#Items
tag @a[scores={Class=25}] remove InRangeSpell2
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=25},tag=AffectByOrange,distance=..7] add InRangeSpell2
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=25},tag=AffectByBlue,distance=..7] add InRangeSpell2

#Items
replaceitem entity @a[gamemode=adventure,scores={Class=25,EffSilencePrim=..0,HaveBow=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 bow{Unbreakable:1,ench:[{id:51,lvl:1},{id:49,lvl:2},{id:50,lvl:0}],display:{Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"}} 1
replaceitem entity @a[gamemode=adventure,scores={Class=25,EffSilence=..0,InGame=1..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Improves his bow so that the arrows fired carry the"}','{"text":"wind, pushing the affected enemies over a long distance."}'],Name:"{\"text\":\"Breeze  0✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=25,EffSilence=..0,InGame=1..,Spell2=..0},tag=InRangeSpell2] hotbar.2 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Does fly nearby enemies away and silences and then"}','{"text":"lets them fall so they can suffer the fall damage."}'],Name:"{\"text\":\"Mistrale  0✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=25,EffSilence=..0,InGame=1..,Spell2=..0},tag=!InRangeSpell2] hotbar.2 barrier{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Does fly nearby enemies away and silences and then"}','{"text":"lets them fall so they can suffer the fall damage."}'],Name:"{\"text\":\"Mistrale  0✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=25,EffSilence=..0,InGame=1..,Spell3=0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Flies away, stabilizes and then shoots"}','{"text":"3 long-range explosive arrows. During the"}','{"text":"duration of this ultimate, the wind hunter is"}','{"text":"invulnerable."}'],Name:"{\"text\":\"Hawkeyes  0✸  90s\",\"color\":\"red\"}"},HideFlags:63} 1

#UpgradeWeapon
replaceitem entity @a[gamemode=adventure,scores={Class=25,EffSilencePrim=..0,HaveBow=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 bow{Unbreakable:1,Enchantments:[{id:"minecraft:power",lvl:1s},{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}],display:{Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"}} 1

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,UseFishing=2}] Spell1 300
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,UsePotion=2}] Spell2 200
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,UseXp=2}] Spell3 -1800

#Spell 1
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=25,InGame=1..,UseFishing=2}] run particle cloud ~ ~1 ~ 1 0.5 1 0 20 force
execute as @a[scores={Class=25,InGame=1..,UseFishing=1..}] at @s run playsound entity.shulker.close record @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @a[scores={Class=25,InGame=1..,UseFishing=2}] UpgradedWeapon 100

#Spell 2
execute as @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell2=199}] at @s run function hierarchy:game/kit/hunter/wind/spell2

#Spell 3
execute as @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=..-1}] at @s run function hierarchy:game/kit/hunter/wind/spell3

#Shoot
tag @e[type=armor_stand,scores={Class=25}] add HW3G
tag @e[type=armor_stand,scores={Class=-25}] add HW3G
execute if entity @e[tag=HW3G] run function hierarchy:game/kit/hunter/wind/spell3bis
