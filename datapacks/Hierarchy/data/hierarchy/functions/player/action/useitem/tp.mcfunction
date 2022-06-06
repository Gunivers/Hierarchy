#Tp
scoreboard players set @a[scores={UseTp=1..,EffSilence=..2}] EffSilence 2
scoreboard players set @a[scores={UseTp=1..,EffSilencePrim=..2}] EffSilencePrim 2

tag @e[type=ender_pearl] add Projectile

#Start point
execute as @a[scores={UseTp=1}] at @s run playsound minecraft:block.beacon.activate record @a[distance=..10] ~ ~ ~ 1 1 0
execute at @e[scores={UseTp=1}] run summon armor_stand ~ ~ ~ {NoGravity:1,Small:1,Marker:1,Invisible:1,Tags:["EnderPearl"]}
execute as @e[type=ender_pearl] run data merge entity @s {NoGravity:1}

#   Effects
# effect give @e[scores={UseTp=1}] blindness 5 127 true
scoreboard players set @e[scores={EffInvisibility=..20,UseTp=1}] EffInvisibility 20
effect give @a[scores={UseTp=1}] resistance 3 127 true
effect give @a[scores={UseTp=1}] speed 3 127 true
effect give @a[scores={UseTp=1}] nausea 5 127 true
effect give @a[scores={UseTp=1}] blindness 1 127 true
effect give @a[scores={UseTp=1}] levitation 1 255 true


#   Class
execute as @a[scores={UseTp=1}] at @s run scoreboard players operation @e[type=ender_pearl,distance=..5,limit=1,sort=nearest] Class = @p Class
execute as @a[team=Blue,scores={UseTp=1}] at @s run scoreboard players operation @e[type=ender_pearl,distance=..5,limit=1,sort=nearest] Class *= Neg Constant
execute as @e[type=ender_pearl,scores={Timer=1}] at @s run scoreboard players operation @e[type=armor_stand,tag=EnderPearl,distance=..2,limit=1,sort=nearest] ParticleClass = @e[type=ender_pearl,distance=..1,limit=1,sort=nearest] Class

#Curent
execute as @e[type=ender_pearl] at @s run teleport @e[type=armor_stand,tag=EnderPearl,distance=..3,limit=1,sort=nearest] @e[type=ender_pearl,distance=..1,limit=1,sort=nearest]
execute as @e[type=ender_pearl] at @s run scoreboard players set @e[type=armor_stand,tag=EnderPearl,distance=..2,limit=1,sort=nearest] Timer 37

#End point
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run playsound entity.enderman.teleport record @a[distance=..30]
# execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run effect clear @p[scores={UseTp=1..}] blindness
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run scoreboard players set @p[scores={UseTp=1..,EffInvisibility=..20}] EffInvisibility 1
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run effect clear @p[scores={UseTp=1..}] speed
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run effect clear @p[scores={UseTp=1..}] nausea
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run effect clear @p[scores={UseTp=1..}] levitation
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run effect give @p[scores={UseTp=1..}] blindness 1 1 true
kill @e[type=!player,tag=Anti-Jump]
execute as @e[type=armor_stand,scores={Timer=38},tag=EnderPearl] at @s run summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Tags:["Anti-Jump"],Passengers:[{id:"minecraft:shulker",Tags:["Anti-Jump"],Silent:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b}]}
execute as @e[type=armor_stand,scores={Timer=39},tag=EnderPearl] at @s run effect clear @p[scores={UseTp=1..}] resistance
execute as @e[type=armor_stand,scores={Timer=39},tag=EnderPearl] at @s run tag @p[scores={UseTp=1..}] add TpEnd
execute as @e[type=armor_stand,scores={Timer=39},tag=EnderPearl] at @s as @p[scores={UseTp=1..}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=armor_stand,scores={Timer=39},tag=EnderPearl] at @s as @p[scores={UseTp=1..}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=ender_pearl,scores={Timer=..20}] at @s as @e[type=armor_stand,tag=EnderPearl,distance=..2,limit=1,sort=nearest] at @s run teleport @p[gamemode=adventure,scores={UseTp=1..}] ~ ~-1.7 ~
# execute as @e[type=armor_stand,scores={Timer=39},tag=EnderPearl] at @s run scoreboard players set @p[scores={UseTp=1..}] UseTp 0
kill @e[type=ender_pearl,scores={Timer=20}]

#Generic
clear @a[gamemode=adventure,scores={UseTp=1}] ender_pearl
scoreboard players set @a[scores={UseTp=30..}] UseTp 0
scoreboard players add @a[scores={UseTp=1..}] UseTp 1


#ParticleClass
execute at @e[type=armor_stand,scores={ParticleClass=6,Timer=38},tag=EnderPearl] run particle dust 2 2 2 1 ~ ~1 ~ 0.3 1 0.3 0.2 70 force
execute at @e[scores={ParticleClass=6,UseTp=2}] run particle dust 2 2 2 1 ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[type=armor_stand,scores={ParticleClass=6,Timer=38},tag=EnderPearl] run particle enchant ~ ~1 ~ 3 1 3 0 30 force
execute at @e[scores={ParticleClass=6,UseTp=2}] run particle enchant ~ ~1 ~ 3 1 3 0 30 force
execute as @e[type=ender_pearl,scores={ParticleClass=6,Timer=20..}] at @s run teleport @p[gamemode=adventure,scores={ParticleClass=6,UseTp=20..}] @e[type=ender_pearl,scores={ParticleClass=6,Timer=20..},distance=..1,limit=1,sort=nearest]
execute at @e[type=armor_stand,scores={ParticleClass=5,Timer=38},tag=EnderPearl] run particle poof ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[scores={ParticleClass=5,UseTp=2}] run particle poof ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[type=armor_stand,scores={ParticleClass=5,Timer=38},tag=EnderPearl] run particle cloud ~ ~1 ~ 0.3 1 0.3 0 10 force
execute at @e[scores={ParticleClass=5,UseTp=2}] run particle cloud ~ ~1 ~ 0.3 1 0.3 0 10 force
execute as @e[type=ender_pearl,scores={ParticleClass=5,Timer=20..}] at @s run teleport @p[gamemode=adventure,scores={ParticleClass=5,UseTp=20..}] @e[type=ender_pearl,scores={ParticleClass=5,Timer=20..},distance=..1,limit=1,sort=nearest]
execute at @e[type=armor_stand,scores={ParticleClass=4,Timer=38},tag=EnderPearl] run particle splash ~ ~1 ~ 0.3 1 0.3 0.2 50 force
execute at @e[scores={ParticleClass=4,UseTp=2}] run particle splash ~ ~1 ~ 0.3 1 0.3 0.2 50 force
execute at @e[type=armor_stand,scores={ParticleClass=4,Timer=38},tag=EnderPearl] run particle dripping_water ~ ~1 ~ 0.3 1 0.3 0 30 force
execute at @e[scores={ParticleClass=4,UseTp=2}] run particle dripping_water ~ ~1 ~ 0.3 1 0.3 0 30 force
execute as @e[type=ender_pearl,scores={ParticleClass=4,Timer=20..}] at @s run teleport @p[gamemode=adventure,scores={ParticleClass=4,UseTp=20..}] @e[type=ender_pearl,scores={ParticleClass=4,Timer=20..},distance=..1,limit=1,sort=nearest]
execute at @e[type=armor_stand,scores={ParticleClass=3,Timer=38},tag=EnderPearl] run particle effect ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[scores={ParticleClass=3,UseTp=2}] run particle effect ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[type=armor_stand,scores={ParticleClass=3,Timer=38},tag=EnderPearl] run particle sweep_attack ~ ~1 ~ 0.3 1 0.3 0 3 force
execute at @e[scores={ParticleClass=3,UseTp=2}] run particle sweep_attack ~ ~1 ~ 0.3 1 0.3 0 3 force
execute as @e[type=ender_pearl,scores={ParticleClass=3,Timer=20..}] at @s run teleport @p[gamemode=adventure,scores={ParticleClass=3,UseTp=20..}] @e[type=ender_pearl,scores={ParticleClass=3,Timer=20..},distance=..1,limit=1,sort=nearest]
execute at @e[type=armor_stand,scores={ParticleClass=2,Timer=38},tag=EnderPearl] run particle flame ~ ~1 ~ 0.3 1 0.3 0.2 50 force
execute at @e[scores={ParticleClass=2,UseTp=2}] run particle flame ~ ~1 ~ 0.3 1 0.3 0.2 50 force
execute at @e[type=armor_stand,scores={ParticleClass=2,Timer=38},tag=EnderPearl] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force
execute at @e[scores={ParticleClass=2,UseTp=2}] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force
execute as @e[type=ender_pearl,scores={ParticleClass=2,Timer=20..}] at @s run teleport @p[gamemode=adventure,scores={ParticleClass=2,UseTp=20..}] @e[type=ender_pearl,scores={ParticleClass=2,Timer=20..},distance=..1,limit=1,sort=nearest]
execute at @e[type=armor_stand,scores={ParticleClass=1,Timer=38},tag=EnderPearl] run particle witch ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[scores={ParticleClass=1,UseTp=2}] run particle witch ~ ~1 ~ 0.3 1 0.3 0.2 100 force
execute at @e[type=armor_stand,scores={ParticleClass=1,Timer=38},tag=EnderPearl] run particle mycelium ~ ~1 ~ 0.3 1 0.3 0 10 force
execute at @e[scores={ParticleClass=1,UseTp=2}] run particle mycelium ~ ~1 ~ 0.3 1 0.3 0 10 force
execute as @e[type=ender_pearl,scores={ParticleClass=1,Timer=20..}] at @s run teleport @p[gamemode=adventure,scores={ParticleClass=1,UseTp=20..}] @e[type=ender_pearl,scores={ParticleClass=1,Timer=20..},distance=..1,limit=1,sort=nearest]

execute as @a at @s run scoreboard players operation @p[distance=..1] ParticleClass = @p[distance=..1] Class
scoreboard players operation @e[scores={ParticleClass=..-1}] ParticleClass *= Neg Constant
scoreboard players operation @e[scores={ParticleClass=10..}] ParticleClass %= 10 Constant
