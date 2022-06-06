execute at @s[team=Blue,scores={Spell2=390}] run scoreboard players set @e[team=Blue,scores={EffRegen=..100},tag=IsPlaying,distance=..7] EffRegen 100
execute at @s[team=Blue,scores={Spell2=..370}] run scoreboard players set @e[scores={EffDamage=..1002},tag=AffectByBlue,distance=..2] EffDamage 1002
execute at @s[team=Blue,scores={Spell2=..370}] run scoreboard players operation @e[tag=AffectByBlue,distance=..2] TouchID = @s ID
execute at @s[team=Blue,scores={Spell2=..390}] run teleport @e[tag=AffectByBlue,distance=..3] @s
execute at @s[team=Blue,scores={Spell2=..390}] as @e[tag=AffectByBlue,distance=..3] at @s run teleport @s ~ ~ ~ ~180 ~

effect give @s[scores={Spell2=399}] slowness 1 10 true
effect clear @s[scores={Spell2=390}] slowness
effect give @s[scores={Spell2=390}] speed 1 20 true
execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[scores={IsWalking=1..,Spell2=..390}] run particle sweep_attack ~ ~1 ~ 0.1 0.5 0.1 0 3 force
execute at @s[scores={Spell2=..370}] run particle cloud ~ ~1 ~ 0.1 0.5 0.1 0.2 50 force
execute at @s[scores={Spell2=399}] run playsound minecraft:block.beacon.activate record @a[distance=..10] ~ ~ ~ 1 2 1
execute at @s[scores={Spell2=390}] run playsound entity.generic.explode record @a[distance=..10] ~ ~ ~ 1 2 1
execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[scores={IsWalking=1..,Spell2=..390}] run particle cloud ~ ~1 ~ 0.1 0.5 0.1 0 3 force
execute at @s[scores={Spell2=..370}] run playsound block.grass.break record @a[distance=..10] ~ ~ ~ 2 2 1
execute at @s[scores={IsWalking=1..,Spell2=390}] run particle cloud ~ ~1 ~ 5 0.5 5 0.1 100 force

execute at @s[team=Orange,scores={Spell2=390}] run scoreboard players set @e[team=Orange,scores={EffRegen=..100},tag=IsPlaying,distance=..7] EffRegen 100
execute at @s[team=Orange,scores={Spell2=..370}] run scoreboard players set @e[scores={EffDamage=..1002},tag=AffectByOrange,distance=..2] EffDamage 1002
execute at @s[team=Orange,scores={Spell2=..370}] run scoreboard players operation @e[tag=AffectByOrange,distance=..2] TouchID = @s ID
execute at @s[team=Orange,scores={Spell2=..390}] run teleport @e[tag=AffectByOrange,distance=..3] @s
execute at @s[team=Orange,scores={Spell2=..390}] as @e[tag=AffectByOrange,distance=..3] at @s run teleport @s ~ ~ ~ ~180 ~
