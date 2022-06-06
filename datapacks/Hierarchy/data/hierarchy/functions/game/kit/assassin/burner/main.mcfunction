#Items
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffSilence=..0,InGame=1..,Mana=15..,Spell1=..0}] hotbar.1 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Light your sword, causing much more damage.\"}"],Name:"{\"text\":\"Flaming Touch   15✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=20..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Move quickly and briefly leaving\"}","{\"text\":\" a trail of fire behind you.\"}","{\"text\":\"\"}","{\"text\":\"This acceleration has the effect\"}","{\"text\":\" of frightening close enemies.\"}"],Name:"{\"text\":\"Fuse  20✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffSilence=..0,InGame=1..,Mana=90..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Create an area that burns enemies,\"}","{\"text\":\" as well as two fire trails\"}","{\"text\":\" that will also burn enemies.\"}","{\"text\":\"\"}","{\"text\":\"During this period, you transform\"}","{\"text\":\" yourself into a trail of fire,\"}","{\"text\":\" and you get confused with the other two.\"}"],Name:"{\"text\":\"Ignition  90✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffSilence=..0,InGame=1..,Mana=..14,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=12,UsePotion=2}] Mana 15
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffSilence=..0,InGame=1..,Mana=..19,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=12,UseFishing=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffSilence=..0,InGame=1..,Mana=..89,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=12,UseXp=2}] Mana 90

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=12,InGame=1..,UsePotion=2}] Spell1 400
scoreboard players set @a[gamemode=adventure,scores={Class=12,InGame=1..,UseFishing=2}] Spell2 300
scoreboard players set @a[gamemode=adventure,scores={Class=12,InGame=1..,UseXp=2}] Spell3 900

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffNoMove=1..,InGame=1..,Spell2=..0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Weapon Upgrade
replaceitem entity @a[gamemode=adventure,scores={Class=12,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 golden_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:9s},{id:"minecraft:fire_aspect",lvl:2s}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:2,UUID:[I;1060973598,1016629095,1057302382,1683534071]}]} 1

#Spell 1
execute as @r[gamemode=adventure,scores={Class=12,Spell1=399..}] at @s run function hierarchy:game/kit/assassin/burner/spell1
execute at @a[gamemode=adventure,scores={Class=12,UpgradedWeapon=1..}] run particle lava ~ ~ ~ 0 0 0 0 1

#Spell 2
execute as @r[gamemode=adventure,scores={Class=12,Spell2=278..}] at @s run function hierarchy:game/kit/assassin/burner/spell2

#Spell 2
execute as @r[gamemode=adventure,scores={Class=12,Spell3=800..}] at @s run function hierarchy:game/kit/assassin/burner/spell3
