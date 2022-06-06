execute at @s[team=Blue] run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByBlue,distance=..15] EffDamage 2
execute at @s[team=Blue] run scoreboard players operation @e[tag=AffectByBlue,distance=..15] TouchID = @s ID
execute at @s[team=Blue] run particle block minecraft:sand ~ ~ ~ 10 1 10 0.1 1000 force @a
execute at @s[team=Blue] run scoreboard players set @e[scores={EffDamage=..1001},tag=AffectByBlue,distance=..15] EffFall 1001
execute at @s[team=Blue] run effect give @e[tag=AffectByBlue,distance=..15] levitation 1 10 true
execute at @s[team=Blue] run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 2 1

execute at @s[team=Orange] run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByOrange,distance=..15] EffDamage 2
execute at @s[team=Orange] run scoreboard players operation @e[tag=AffectByOrange,distance=..15] TouchID = @s ID
execute at @s[team=Orange] run particle block minecraft:sand ~ ~ ~ 10 1 10 0.1 1000 force @a
execute at @s[team=Orange] run scoreboard players set @e[scores={EffDamage=..1001},tag=AffectByOrange,distance=..15] EffDamage 1001
execute at @s[team=Orange] run effect give @e[tag=AffectByOrange,distance=..15] levitation 1 10 true
execute at @s[team=Orange] run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 2 1
