#Items
replaceitem entity @a[gamemode=adventure,scores={Class=24,EffSilence=..0,InGame=1..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Just like the time hunter, he holds 2 states (or positions)."}','{"text":"In his initial position (hunter), he has one bow,"}','{"text":"while in the other (warrior)he has a sword."}','{"text":""}','{"text":"When it switches to HUNTER mode,"}','{"text":"its first 3 arrows will have a slowing effect."}','{"text":"On the other hand, when in the GUARDIAN position,"}','{"text":"it has a permanent protection of 20%."}','{"text":""}','{"text":"When it changes state, the cooldown"}','{"text":"of its second capacity is cancelled."}'],Name:"{\"text\":\"Melting  0✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=24,EffNoMove=..0,EffSilence=..0,InGame=1..,Spell2=..0}] hotbar.2 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a frosty path in front of him, allowing"}','{"text":"him and his allies to move faster on it."}','{"text":"Enemies are slowed down and given poison."}'],Name:"{\"text\":\"Frozen Path  0✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1

tag @a[scores={Class=24}] remove InRangeSpell3
execute at @a[tag=AffectByBlue] as @a[tag=AffectByOrange,distance=..7] at @s run tag @a[scores={Class=24},tag=AffectByOrange] add InRangeSpell3
execute at @a[tag=AffectByOrange] as @a[tag=AffectByBlue,distance=..7] at @s run tag @a[scores={Class=24},tag=AffectByBlue] add InRangeSpell3
replaceitem entity @a[gamemode=adventure,scores={Class=24,EffSilence=..0,InGame=1..,Spell3=..0},tag=InRangeSpell3] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a frozen wind around all allies,"}','{"text":"rooting and inflicting damage on all"}','{"text":"enemies in their vicinity."}'],Name:"{\"text\":\"Cold Breath  0✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=24,EffSilence=..0,InGame=1..,Spell3=..0},tag=!InRangeSpell3] hotbar.3 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a frozen wind around all allies,"}','{"text":"rooting and inflicting damage on all"}','{"text":"enemies in their vicinity."}'],Name:"{\"text\":\"Cold Breath  0✸  45s\",\"color\":\"red\"}"},HideFlags:63} 1

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=24,InGame=1..,UseFishing=2}] Spell1 300
scoreboard players set @a[gamemode=adventure,scores={Class=24,InGame=1..,UseCarrot=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=24,InGame=1..,UseXp=2}] Spell3 900

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=24,EffNoMove=1..,InGame=1..,Spell2=..0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1


#Spell 1
execute as @r[scores={Class=24,InGame=1..,Spell1=299}] at @s run function hierarchy:game/kit/hunter/freezer/spell1

#Spell 2
#execute @a[tag=IsPlaying,score_Class_min=24,score_Class=24,team=Orange,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ /tp @e[r=5,c=1,type=armor_stand,score_Class_min=24,score_Class=24] ~ ~-2 ~
#execute @a[tag=IsPlaying,score_Class_min=24,score_Class=24,team=Blue,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ /tp @e[r=5,c=1,type=armor_stand,score_Class_min=-24,score_Class=-24] ~ ~-2 ~

tag @e[type=armor_stand,scores={Class=-24}] add No-Ally-Indic
tag @e[type=armor_stand,scores={Class=24}] add No-Ally-Indic
execute at @e[type=armor_stand,scores={Class=-24}] run summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["HF2B","HF2G"]}
execute at @e[type=armor_stand,scores={Class=24}] run summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["HF2R","HF2G"]}
execute as @e[type=armor_stand,scores={Class=-24}] at @s run scoreboard players operation @e[type=armor_stand,tag=HF2B,distance=..5,limit=1,sort=nearest] ID = @s ID
execute as @e[type=armor_stand,scores={Class=24}] at @s run scoreboard players operation @e[type=armor_stand,tag=HF2R,distance=..5,limit=1,sort=nearest] ID = @s ID
execute as @e[tag=HF2G,tag=!Old] at @s run spreadplayers ~ ~ 0 3 false @s
tag @e[tag=HF2G] add Old
execute as @e[tag=HF2G] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"snow"},NoGravity:1,Tags:["AF2G-item2"]}
execute as @e[type=armor_stand,tag=HF2G,limit=1,sort=nearest] at @s run function hierarchy:game/kit/hunter/freezer/spell2

#Spell 3
execute as @a[scores={Class=24,InGame=1..,Spell3=899}] at @s run function hierarchy:game/kit/hunter/freezer/spell3


#UpgradedWeapon
clear @a[scores={Class=24,InGame=1..,UpgradedWeapon=0..}] iron_sword
clear @a[gamemode=adventure,scores={Class=24,InGame=1..,UpgradedWeapon=..-1}] tipped_arrow
scoreboard players set @a[scores={Class=24,EffResistance=..1002,InGame=1..,UpgradedWeapon=..-1}] EffResistance 1002
