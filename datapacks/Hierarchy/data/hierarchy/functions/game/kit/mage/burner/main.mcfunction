#Fireball
tag @e[type=armor_stand,scores={Class=-2},tag=!Mage,tag=!Data] add MBG
tag @e[type=armor_stand,scores={Class=2},tag=!Mage,tag=!Data] add MBG
execute as @e[type=armor_stand,tag=MBG,limit=1,sort=nearest] at @s run function hierarchy:game/kit/mage/burner/fireball

execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @a[tag=InGame] Mana 300

#Items
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=25..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Turns into a trail of fire, increasing its"}','{"text":"speed of movement and giving it a light shield."}'],Name:"{\"text\":\"Fire Spirit  80✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffSilence=..0,InGame=1..,Mana=10..,Spell2=..0}] hotbar.2 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create and throw a ball that ignites and"}','{"text":"explodes at the first obstacle it encounters."}'],Name:"{\"text\":\"Fireball  10✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffSilence=..0,InGame=1..,Mana=80..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Launches 2 fireballs in the air per enemy"}','{"text":"(with a maximum of 20). Once at their maximum"}','{"text":"height, the fireballs will start a trajectory"}','{"text":"targeting all 10 nearest enemies, and will"}','{"text":"explode at the first obstacle encountered."}'],Name:"{\"text\":\"Meteor  25✸  75s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffSilence=..0,InGame=1..,Mana=..79,Spell3=0}] hotbar.3 minecraft:barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=2,UseXp=2}] Mana 80
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffSilence=..0,InGame=1..,Mana=..9,Spell2=0}] hotbar.2 minecraft:barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=2,UseCarrot=2}] Mana 10
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=..24,Spell1=0}] hotbar.1 minecraft:barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=2,UseFishing=2}] Mana 25

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=2,InGame=1..,UseFishing=2}] Spell1 300
scoreboard players set @a[gamemode=adventure,scores={Class=2,InGame=1..,UseCarrot=2}] Spell2 200
scoreboard players set @a[gamemode=adventure,scores={Class=2,InGame=1..,UseXp=2}] Spell3 1500

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=2,EffNoMove=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

# Spell 1
execute as @r[gamemode=adventure,scores={Class=2,InGame=1..,Spell1=160..}] at @s run function hierarchy:game/kit/mage/burner/spell1

# Spell 2
execute as @r[gamemode=adventure,scores={Class=2,InGame=1..,Spell2=198}] at @s run playsound entity.firework_rocket.blast record @a[distance=..10] ~ ~ ~ 2 0.5 1

# Spell 3
execute if entity @a[gamemode=adventure,scores={Class=2,InGame=1..,Spell3=1..}] run function hierarchy:game/kit/mage/burner/spell3










