# Kill score

# Give item
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffSilence=..0,InGame=1..,Mana=50..,Spell1=..0}] hotbar.1 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create and launch a paradoxical field through"}','{"text":"the walls inflicting damage to affected enemies."}'],Name:"{\"text\":\"Distorsion  70✸   10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=40..,Spell2=..0}] hotbar.2 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Causes several cracks in space-time to teleport "}','{"text":"to where he wants. Since nearby enemies are only"}','{"text":"partially sucked into these cracks, they are damaged"}','{"text":"and are randomly teleported within a radius of"}','{"text":"5 blocks around them on the highest structure."}'],Name:"{\"text\":\"Vortex  40✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Backs 5 seconds to its past, returning it to"}','{"text":"its previous position. When he uses this skill, a"}','{"text":"large part of his life and mana is regenerated"}','{"text":"and the cooldown of his first two skills are cancelled."}'],Name:"{\"text\":\"Checkpoint  50✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1

# Mana
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=1,UseXp=2}] Mana 70
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=..39,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=1,UseTp=2}] Mana 40
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffSilence=..0,InGame=1..,Mana=..49,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=1,UseCarrot=2}] Mana 50

# Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=1,UseCarrot=1..}] Spell1 200
scoreboard players set @a[gamemode=adventure,scores={Class=1,InGame=1..,UseTp=2}] Spell2 300
scoreboard players set @a[gamemode=adventure,scores={Class=1,InGame=1..,UseXp=1..}] Spell3 900

# NoMove
replaceitem entity @a[gamemode=adventure,scores={Class=1,EffNoTp=1..,InGame=1..,Spell2=..0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

# Spell 1
execute as @a[gamemode=adventure,scores={Class=1,Spell1=198..200}] at @s run tag @e[type=armor_stand,scores={Class=-1},tag=!Mage,tag=!DATA,tag=DirMoving,limit=1,sort=nearest,distance=..5] add MT1G
execute as @a[gamemode=adventure,scores={Class=1,Spell1=198..200}] at @s run tag @e[type=armor_stand,scores={Class=1},tag=!Mage,tag=!DATA,tag=DirMoving,limit=1,sort=nearest,distance=..5] add MT1G

execute as @a[scores={Class=1,UseCarrot=2}] at @s run playsound block.beacon.power_select record @a[distance=..30] ~ ~ ~ 1 2 1

execute as @e[type=armor_stand,tag=MT1G,limit=1,sort=random] at @s run function hierarchy:game/kit/mage/time/spell1



# Spell 2
execute as @r[gamemode=adventure,scores={Class=1,InGame=1..,Spell2=299}] at @s run function hierarchy:game/kit/mage/time/spell2



# Spell 3
execute as @r[gamemode=adventure,scores={Class=1,Spell3=..100}] at @s run function hierarchy:game/kit/mage/time/spell3bis
execute as @r[gamemode=adventure,scores={Class=1,Spell3=860..}] at @s run function hierarchy:game/kit/mage/time/spell3






