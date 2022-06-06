# Primary
replaceitem entity @a[gamemode=adventure,scores={Class=1..9,EffSilencePrim=..0,InGame=1..,UseEgg=..0}] hotbar.0 egg{Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack  0✸  1.5s\",\"color\":\"aqua\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={EffSilencePrim=..0,UseEgg=1..}] hotbar.0 gray_dye{display:{Name:"Cooldown"}} 1

execute at @a[scores={UseEgg=2}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:["Mage","Projectile"]}
execute as @a[scores={UseEgg=2}] at @s run scoreboard players operation @e[type=armor_stand,tag=Mage,distance=..5,limit=1,sort=nearest] ID = @s ID
execute as @a[scores={UseEgg=2}] at @s run scoreboard players operation @e[type=armor_stand,tag=Mage,distance=..5,limit=1,sort=nearest] Class = @s Class
execute as @a[team=Blue,scores={UseEgg=2}] at @s run scoreboard players operation @e[type=armor_stand,tag=Mage,distance=..5,limit=1,sort=nearest] Class *= Neg Constant
clear @a[gamemode=adventure,scores={UseEgg=2}] egg
execute as @e[type=egg] run data merge entity @s {NoGravity:1}
tag @e[type=egg,distance=..5,limit=1,sort=nearest] add Mage

kill @e[type=egg,scores={Timer=12..}]
execute as @e[type=egg] at @s run teleport @e[type=armor_stand,tag=Mage,limit=1,sort=nearest] ~ ~ ~

execute at @e[type=armor_stand,tag=Mage] run particle minecraft:dust 0 0 0 1 ~ ~-0.2 ~ 0.2 0.2 0.2 1 3 force
execute at @e[type=armor_stand,tag=Mage] run particle minecraft:dust 0 0 0 1 ~ ~-0.2 ~ 0 0 0 1 3 force

execute as @e[type=egg] at @s run scoreboard players set @e[type=armor_stand,tag=Mage,distance=..1,limit=1,sort=nearest] Timer 0

execute as @e[tag=Mage] run scoreboard players operation @s Var1 = @s Class
execute as @e[scores={Var1=..-1},tag=Mage] run scoreboard players operation @s Var1 *= -1 Constant
execute at @e[type=armor_stand,scores={Timer=2..,Var1=1},tag=Mage] run particle witch ~ ~ ~ 1.5 1.5 1.5 0.3 200
execute at @e[type=armor_stand,scores={Timer=2..,Var1=2},tag=Mage] run particle flame ~ ~ ~ 0.5 0.5 0.5 0.2 150
execute at @e[type=armor_stand,scores={Timer=2..,Var1=2},tag=Mage] run particle smoke ~ ~ ~ 0 0 0 0.25 150
execute at @e[type=armor_stand,scores={Timer=2..,Var1=3},tag=Mage] run particle effect ~ ~ ~ 1.5 1.5 1.5 0 200
execute at @e[type=armor_stand,scores={Timer=2..,Var1=3},tag=Mage] run particle sweep_attack ~ ~ ~ 1.5 1.5 1.5 0 10
execute at @e[type=armor_stand,scores={Timer=2..,Var1=4},tag=Mage] run particle dripping_water ~ ~ ~ 1 1 1 0 200
execute at @e[type=armor_stand,scores={Timer=2..,Var1=4},tag=Mage] run particle firework ~ ~ ~ 0 0 0 0.2 100
execute at @e[type=armor_stand,scores={Timer=2..,Var1=5},tag=Mage] run particle poof ~ ~ ~ 0.5 0.5 0.5 0.3 100
execute at @e[type=armor_stand,scores={Timer=2..,Var1=6},tag=Mage] run particle dust 2 2 2 2 ~ ~ ~ 1.3 1.3 1.3 0.2 200
execute at @e[type=armor_stand,scores={Timer=2..},tag=Mage] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=armor_stand,scores={Timer=2..},tag=Mage] at @s run playsound entity.firework_rocket.blast_far record @a[distance=..30] ~ ~ ~ 2 2 1
execute as @e[type=armor_stand,scores={Class=..-1,Timer=2..},tag=Mage] at @s run scoreboard players set @e[scores={EffResistance=..1002},tag=AffectByBlue,distance=..4.5] EffResistance 1002
execute as @e[type=armor_stand,scores={Class=..-1,Timer=2..},tag=Mage] at @s run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByBlue,distance=..4.5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=1..,Timer=2..},tag=Mage] at @s run scoreboard players set @e[scores={EffResistance=..1002},tag=AffectByOrange,distance=..4.5] EffResistance 1002
execute as @e[type=armor_stand,scores={Class=1..,Timer=2..},tag=Mage] at @s run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByOrange,distance=..4.5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=1..,Timer=2..},tag=Mage] at @s run scoreboard players operation @e[tag=AffectByOrange,distance=..4.5] TouchID = @e[type=armor_stand,tag=Mage,distance=..1,limit=1,sort=nearest] ID
execute as @e[type=armor_stand,scores={Class=..-1,Timer=2..},tag=Mage] at @s run scoreboard players operation @e[tag=AffectByBlue,distance=..4.5] TouchID = @e[type=armor_stand,tag=Mage,distance=..1,limit=1,sort=nearest] ID
kill @e[type=armor_stand,scores={Timer=2..},tag=Mage]



# Passive

# Hero
execute if entity @a[scores={Class=1},tag=IsPlaying] run function hierarchy:game/kit/mage/time/main
execute if entity @a[scores={Class=2},tag=IsPlaying] run function hierarchy:game/kit/mage/burner/main
execute if entity @a[scores={Class=3},tag=IsPlaying] run function hierarchy:game/kit/mage/thunder/main
execute if entity @a[scores={Class=4},tag=IsPlaying] run function hierarchy:game/kit/mage/freezer/main
execute if entity @a[scores={Class=5},tag=IsPlaying] run function hierarchy:game/kit/mage/wind/main
execute if entity @a[scores={Class=6},tag=IsPlaying] run function hierarchy:game/kit/mage/invoker/main
