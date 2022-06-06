scoreboard players set @s[scores={EffSlow=..2002}] EffSlow 2002
scoreboard players set @s[scores={EffSilencePrim=..2}] EffSilencePrim 2

execute at @s anchored eyes positioned ~ ~-0.5 ~ run summon falling_block ^4 ^3.5 ^3 {BlockState:{Name:"chorus_plant"},NoGravity:1,Tags:["MF3G-item","MF3G-item1"]}
execute at @s anchored eyes positioned ~ ~-0.5 ~ run summon falling_block ^-4 ^3.5 ^3 {BlockState:{Name:"chorus_plant"},NoGravity:1,Tags:["MF3G-item","MF3G-item2"]}
execute at @s anchored eyes positioned ~ ~-0.5 ~ run summon falling_block ^4 ^-0.5 ^3 {BlockState:{Name:"chorus_plant"},NoGravity:1,Tags:["MF3G-item","MF3G-item3"]}
execute at @s anchored eyes positioned ~ ~-0.5 ~ run summon falling_block ^-4 ^-0.5 ^3 {BlockState:{Name:"chorus_plant"},NoGravity:1,Tags:["MF3G-item","MF3G-item4"]}

execute at @s anchored eyes run particle minecraft:current_down ^4 ^ ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^-4 ^ ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^2 ^2 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^2 ^ ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^2 ^-2 ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^ ^2 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^ ^ ^3 0.2 0.2 0.2 0 10 force @a[distance=1.7..]
execute at @s anchored eyes run particle minecraft:current_down ^ ^-2 ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^-2 ^2 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^-2 ^ ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^-2 ^-2 ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^3 ^1 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^3 ^-1 ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^1 ^1 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^1 ^-1 ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^-1 ^1 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^-1 ^-1 ^3 0.2 0.2 0.2 0 10 force

execute at @s anchored eyes run particle minecraft:current_down ^-3 ^1 ^3 0.2 0.2 0.2 0 10 force
execute at @s anchored eyes run particle minecraft:current_down ^-3 ^-1 ^3 0.2 0.2 0.2 0 10 force


execute at @s[team=Orange] anchored eyes positioned ^ ^ ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..2] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^2 ^ ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.7] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^-2 ^ ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.7] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^1 ^1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^1 ^-1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^-1 ^1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^-1 ^-1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^3 ^1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^3 ^-1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^-3 ^1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile
execute at @s[team=Orange] anchored eyes positioned ^-3 ^-1 ^3 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..1.5] add KillBlueProjectile

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^3 run tag @e[type=!player,scores={Class=..1},tag=Projectile,distance=..2] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^2 ^ ^3 run tag @e[type=!player,scores={Class=..1},tag=Projectile,distance=..1.7] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^-2 ^ ^3 run tag @e[type=!player,scores={Class=..1},tag=Projectile,distance=..1.7] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^1 ^1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^1 ^-1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^-1 ^1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^-1 ^-1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^3 ^1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^3 ^-1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^-3 ^1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile
execute at @s[team=Blue] anchored eyes positioned ^-3 ^-1 ^3 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..1.5] add KillOrangeProjectile

tag @e[tag=KillBlueProjectile] add KillProjectile
tag @e[tag=KillOrangeProjectile] add KillProjectile


execute at @e[tag=KillBlueProjectile] run scoreboard players set @p[team=Orange,tag=IsPlaying,scores={Class=31,PrivateSpell=1..50}] Spell1 800
execute at @e[tag=KillBlueProjectile] run scoreboard players set @p[team=Orange,tag=IsPlaying,scores={Class=31,PrivateSpell=1..50}] PrivateSpell 0
execute at @e[tag=KillBlueProjectile] run scoreboard players remove @p[team=Orange,tag=IsPlaying,scores={Class=31,PrivateSpell=51..}] PrivateSpell 50

execute at @e[tag=KillOrangeProjectile] run scoreboard players set @p[team=Blue,tag=IsPlaying,scores={Class=31,PrivateSpell=1..50}] Spell1 800
execute at @e[tag=KillOrangeProjectile] run scoreboard players set @p[team=Blue,tag=IsPlaying,scores={Class=31,PrivateSpell=1..50}] PrivateSpell 0
execute at @e[tag=KillOrangeProjectile] run scoreboard players remove @p[team=Blue,tag=IsPlaying,scores={Class=31,PrivateSpell=501..}] PrivateSpell 50

scoreboard players remove @a[tag=IsPlaying,scores={Class=31,PrivateSpell=1..,Timer=1}] Mana 1
scoreboard players remove @a[tag=IsPlaying,scores={Class=31,PrivateSpell=1..,Timer=11}] Mana 1
scoreboard players remove @a[tag=IsPlaying,scores={Class=31,PrivateSpell=1..,Timer=21}] Mana 1
scoreboard players remove @a[tag=IsPlaying,scores={Class=31,PrivateSpell=1..,Timer=31}] Mana 1

execute as @a[tag=IsPlaying,scores={Class=31,Spell1=800}] at @s run playsound minecraft:block.anvil.destroy record @a[distance=..30] ~ ~ ~ 2 1 1


execute at @e[tag=KillProjectile] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 10 force
execute at @e[tag=KillProjectile] run playsound minecraft:block.anvil.land record @a[distance=..30] ~ ~ ~ 2 2 1
kill @e[tag=KillProjectile]
