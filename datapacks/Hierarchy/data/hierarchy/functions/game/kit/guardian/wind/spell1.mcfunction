execute as @e[type=armor_stand,scores={Class=-35}] at @s run scoreboard players set @e[scores={EffScare=..60},tag=AffectByBlue,distance=..3] EffScare 60
execute as @e[type=armor_stand,scores={Class=-35}] at @s run scoreboard players set @e[scores={EffPoison=..1060},tag=AffectByBlue,distance=..3] EffPoison 1060
execute as @e[type=armor_stand,scores={Class=-35}] at @s run scoreboard players operation @e[tag=AffectByBlue,distance=..3] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=-35}] at @s run effect give @e[tag=AffectByBlue,distance=..3] blindness 5 1 true
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=-35}] run particle sweep_attack ~ ~ ~ 2 2 2 1 3 force
execute as @e[type=armor_stand,scores={Class=-35}] at @s run playsound entity.creeper.primed record @a[distance=..15] ~ ~ ~ 2 2 1
execute at @e[type=armor_stand,scores={Class=-35}] run particle block minecraft:sand ~ ~ ~ 2 2 2 1 15 force @a
