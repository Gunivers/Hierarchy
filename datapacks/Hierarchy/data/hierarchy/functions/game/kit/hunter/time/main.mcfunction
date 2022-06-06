#Items
tag @a[scores={Class=21}] remove InRangeSpell1
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=21},tag=AffectByOrange,distance=..7] add InRangeSpell1
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=21},tag=AffectByBlue,distance=..7] add InRangeSpell1
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffSilence=..0,InGame=1..,Spell1=..0},tag=InRangeSpell1] hotbar.1 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"HUNTER position: Causes slight damage and extends the time"}','{"text":"of slowing and rooting effects of nearby enemies by 2 seconds."}','{"text":"If these enemies do not have any slowing or rooting effects,"}','{"text":"they are then slightly slowed down for 2 seconds."}','{"text":""}','{"text":"ASSASSIN position: Causes heavy damage to nearby enemies."}'],Name:"{\"text\":\"Time Law  0✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffSilence=..0,InGame=1..,Spell1=..0},tag=!InRangeSpell1] hotbar.1 barrier{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"HUNTER position: Causes slight damage and extends the time"}','{"text":"of slowing and rooting effects of nearby enemies by 2 seconds."}','{"text":"If these enemies do not have any slowing or rooting effects,"}','{"text":"they are then slightly slowed down for 2 seconds."}','{"text":""}','{"text":"ASSASSIN position: Causes heavy damage to nearby enemies."}'],Name:"{\"text\":\"Time Law  0✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffNoTp=..0,EffSilence=..0,InGame=1..,Spell2=..0,UpgradedWeapon=0..}] hotbar.2 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"HUNTER position: The launcher teleports to the target location."}','{"text":""}','{"text":"ASSASSIN position: All enemies targeted by the player"}','{"text":"are teleported to him and are rooted for 2 seconds."}'],Name:"{\"text\":\"Travel  0✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffNoTp=..0,EffSilence=..0,InGame=1..,Spell2=..0,UpgradedWeapon=..-1}] hotbar.2 snowball{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"HUNTER position: The launcher teleports to the target location."}','{"text":""}','{"text":"ASSASSIN position: All enemies targeted by the player"}','{"text":"are teleported to him and are rooted for 2 seconds."}'],Name:"{\"text\":\"Travel  0✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffSilence=..0,InGame=1..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"This hunter can change state, so he can be an chasseur,"}','{"text":"with a bow, or he can be an assassin, with a sword."}','{"text":"Of course, he has the abilities corresponding to his condition."}'],Name:"{\"text\":\"Inversion  0✸  10s\",\"color\":\"red\"}"},HideFlags:63} 1

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=21,InGame=1..,UsePotion=1..}] Spell1 200
scoreboard players set @a[gamemode=adventure,scores={Class=21,InGame=1..,UseTp=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=21,InGame=1..,UseSnowball=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=21,InGame=1..,UseXp=2}] Spell3 200

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffNoTp=1..,InGame=1..,Spell2=..0,UpgradedWeapon=0..}] hotbar.2 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Weapon Upgrade
replaceitem entity @a[gamemode=adventure,scores={Class=21,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=..-1}] hotbar.0 iron_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:0s}],display:{Name:"{\"text\":\"Basic Attack  0✸  0s\",\"color\":\"yellow\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]} 1

#Spell 1
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Blue,scores={Class=21,InGame=1..,Spell1=199..}] at @e[team=!Blue,tag=IsPlaying,distance=..7] run particle dragon_breath ~ ~ ~ 0.2 0.5 0.2 0 20 force
execute as @a[team=Blue,scores={Class=21,InGame=1..,UpgradedWeapon=0..,UsePotion=2}] at @s run scoreboard players add @e[team=!Blue,tag=IsPlaying,distance=..7] EffSlow 40
execute as @a[team=Blue,scores={Class=21,InGame=1..,Spell1=199..,UpgradedWeapon=..-1}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1002},tag=IsPlaying,distance=..7] EffDamage 1002
execute as @a[team=Blue,scores={Class=21,InGame=1..,Spell1=199..,UpgradedWeapon=0..}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..2},tag=IsPlaying,distance=..7] EffDamage 2
execute as @a[gamemode=adventure,team=Blue,scores={Class=21,InGame=1..,Spell1=199..}] at @s run scoreboard players operation @a[gamemode=adventure,team=Orange,scores={InGame=1..},distance=..7] TouchID = @s ID
execute as @a[scores={Class=21,InGame=1..,Spell1=199}] at @s run playsound entity.firework_rocket.twinkle record @a[distance=..30] ~ ~ ~ 2 2 1
clear @a[scores={Class=21,InGame=1..,UpgradedWeapon=0..}] iron_axe
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[team=Orange,scores={Class=21,InGame=1..,Spell1=199..}] at @e[team=!Orange,tag=IsPlaying,distance=..7] run particle dragon_breath ~ ~ ~ 0.2 0.5 0.2 0 20 force
execute as @a[team=Orange,scores={Class=21,InGame=1..,UpgradedWeapon=0..,UsePotion=2}] at @s run scoreboard players add @e[team=!Orange,tag=IsPlaying,distance=..7] EffSlow 40
execute as @a[team=Orange,scores={Class=21,InGame=1..,Spell1=199..,UpgradedWeapon=..-1}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1002},tag=IsPlaying,distance=..7] EffDamage 1002
execute as @a[team=Orange,scores={Class=21,InGame=1..,Spell1=199..,UpgradedWeapon=0..}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..2},tag=IsPlaying,distance=..7] EffDamage 2
execute as @a[gamemode=adventure,team=Orange,scores={Class=21,InGame=1..,Spell1=199..}] at @s run scoreboard players operation @a[gamemode=adventure,team=Blue,scores={InGame=1..},distance=..7] TouchID = @s ID

execute at @a[scores={Class=21,InGame=1..,Spell1=199..}] run particle dragon_breath ~ ~ ~ 3 0 3 0 20 force

#Spell 2
execute as @a[team=Blue,scores={Class=21,InGame=1..,UseSnowball=2}] at @s run scoreboard players set @e[type=snowball,distance=..10,limit=1,sort=nearest] Class -21
execute as @e[type=snowball,scores={Class=-21}] at @s run scoreboard players set @e[team=Orange,tag=IsPlaying,distance=..3] EffSlow 3040
execute as @e[type=snowball,scores={Class=-21}] at @s run teleport @e[team=Orange,tag=IsPlaying,distance=..3] @p[team=Blue,scores={Class=21,Spell2=370..},tag=IsPlaying]
execute as @a[team=Blue,scores={Class=21,InGame=1..,Spell2=399..}] at @s run playsound entity.endermen.teleport record @a[distance=..30] ~ ~ ~ 2 2 1
execute as @a[scores={Class=21,InGame=1..,Spell2=399..}] at @s run playsound entity.endermen.teleport record @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @a[scores={Class=21,EffInvisibility=..10,InGame=1..,Spell2=499..,UpgradedWeapon=0..}] EffInvisibility 30
execute at @a[scores={Class=21,InGame=1..,Spell2=499..,UpgradedWeapon=0..}] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0 10 force
execute as @a[team=Orange,scores={Class=21,InGame=1..,UseSnowball=2}] at @s run scoreboard players set @e[type=snowball,distance=..10,limit=1,sort=nearest] Class 21
execute as @e[type=snowball,scores={Class=21}] at @s run scoreboard players set @e[team=Blue,tag=IsPlaying,distance=..3] EffSlow 3040
execute as @e[type=snowball,scores={Class=21}] at @s run teleport @e[team=Blue,tag=IsPlaying,distance=..3] @p[team=Orange,scores={Class=21,Spell2=370..},tag=IsPlaying]
execute as @a[team=Orange,scores={Class=21,InGame=1..,Spell2=399..}] at @s run playsound entity.endermen.teleport record @a[distance=..30] ~ ~ ~ 2 2 1

execute at @e[type=snowball,scores={Class=-21}] run particle mycelium ~ ~ ~ 1.5 1.5 1.5 0 30 force
execute at @e[type=snowball,scores={Class=21}] run particle mycelium ~ ~ ~ 1.5 1.5 1.5 0 30 force

#Spell 3
execute as @a[scores={Class=21,InGame=1..,Spell3=199}] at @s run playsound entity.creeper.hurt record @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players remove @a[scores={Class=21,InGame=1..,UseXp=2}] UpgradedWeapon 1
scoreboard players set @a[scores={Class=21,InGame=1..,UpgradedWeapon=..-2}] UpgradedWeapon 0
scoreboard players set @a[scores={Class=21,InGame=1..,UseXp=2}] EffInvisibility 40
scoreboard players set @a[scores={Class=21,InGame=1..,UseXp=2}] Spell2 0
scoreboard players set @a[scores={Class=21,InGame=1..,UseXp=2}] Spell1 0

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=21,InGame=1..,Spell3=199}] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0 20 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=21,InGame=1..,Spell3=159}] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0 20 force

