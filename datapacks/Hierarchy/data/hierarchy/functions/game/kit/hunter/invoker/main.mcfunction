#Item
replaceitem entity @a[gamemode=adventure,scores={Class=26,EffSilence=..0,InGame=1..,Spell1=..0}] hotbar.1 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Launches a projectile with strange"}','{"text":"magic, inflicting damage on enemies and"}','{"text":"regenerating allies. Bounce off a wall."}'],Name:"{\"text\":\"Dark Energy  0✸  7s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=26,EffNoMove=..0,EffSilence=..0,InGame=1..,Spell2=0}] hotbar.2 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Damage nearby enemies, then fly"}','{"text":"away and glide through the air."}'],Name:"{\"text\":\"Migration  0✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=26,EffSilence=..0,InGame=1..,Spell3=0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Blind, rooted and silenced enemies whose"}','{"text":"enemies he was the last person to inflict"}','{"text":"damage on them."}'],Name:"{\"text\":\"Shadow Fear  0✸  90s\",\"color\":\"red\"}"},HideFlags:63} 1

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=26,InGame=1..,UseCarrot=2}] Spell1 140
scoreboard players set @a[gamemode=adventure,scores={Class=26,InGame=1..,UsePotion=2}] Spell2 -1000
scoreboard players set @a[gamemode=adventure,scores={Class=26,InGame=1..,UseXp=2}] Spell3 1800

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=26,EffNoMove=1..,InGame=1..,Spell2=..0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Spell 1
tag @e[type=armor_stand,scores={Class=26}] add HI1G
tag @e[type=armor_stand,scores={Class=-26}] add HI1G
execute as @e[tag=HI1G,limit=1,sort=nearest] at @s run function hierarchy:game/kit/hunter/invoker/spell1

#Spell 2
execute as @r[scores={Class=26,Spell2=..-1},tag=IsPlaying] at @s run function hierarchy:game/kit/hunter/invoker/spell2


#Spell 3
execute as @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell3=1799},tag=IsPlaying] at @s run function hierarchy:game/kit/hunter/invoker/spell3

execute as @e[tag=HI3G] at @s at @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell3=1600..},tag=IsPlaying,limit=1,sort=nearest] positioned ~ ~1 ~ run function gunivers-lib:entity/vector/get_as_to_at
execute as @e[tag=HI3G] run function gunivers-lib:entity/vector/normalize
scoreboard players set @e[tag=HI3G] VectorSpeed 2000
execute as @e[tag=HI3G] at @s run function gunivers-lib:entity/move/by_vector
execute as @e[tag=HI3G] at @s run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0 3 force

execute as @a[gamemode=adventure,scores={Class=26,InGame=1..},tag=IsPlaying] at @s if entity @e[tag=HI3G,distance=..1.5] run scoreboard players add @s EffRegen 20
execute as @a[gamemode=adventure,scores={Class=26,InGame=1..},tag=IsPlaying] at @s if entity @e[tag=HI3G,distance=..1.5] run scoreboard players add @s EffSpeed 20
execute as @a[gamemode=adventure,scores={Class=26,InGame=1..},tag=IsPlaying] at @s if entity @e[tag=HI3G,distance=..1.5] run particle dust 2 2 2 2 ~ ~1 ~ 0.3 0.5 0.3 1 30 force
execute as @a[gamemode=adventure,scores={Class=26,InGame=1..},tag=IsPlaying] at @s if entity @e[tag=HI3G,distance=..1.5] run playsound minecraft:entity.donkey.hurt master @a ~ ~ ~ 2 2 1

execute as @e[tag=HI3G] at @s if entity @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell3=1600..},tag=IsPlaying,distance=..1.5] run kill @s


