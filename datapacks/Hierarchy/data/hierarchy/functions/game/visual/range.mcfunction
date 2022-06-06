execute as @a[team=Blue,scores={EffInvisibility=1..,InGame=1..,UseTp=..0}] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Blue]
execute as @e[type=spider,team=Blue] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Blue]
execute as @e[type=ocelot,team=Blue] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Blue]
execute as @e[type=ender_pearl,scores={Class=..-1}] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 force @a[team=Blue]
execute as @e[type=snowball,scores={Class=..-1}] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 force @a[team=Blue]
execute as @e[type=armor_stand,scores={Class=..-1},tag=DirMoving,tag=!No-Ally-Indic] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[team=Blue]
execute as @e[type=boat,name=End,tag=Blue] at @s run particle end_rod ~ ~-200 ~ 0 0 0 0 1 force @a[team=Blue]
execute as @a[team=Orange,scores={EffInvisibility=1..,InGame=1..,UseTp=..0}] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Orange]
execute as @e[type=spider,team=Orange] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Orange]
execute as @e[type=ocelot,team=Orange] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 normal @a[team=Orange]
execute as @e[type=ender_pearl,scores={Class=1..}] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 force @a[team=Orange]
execute as @e[type=snowball,scores={Class=1..}] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0 1 force @a[team=Orange]
execute as @e[type=armor_stand,scores={Class=1..},tag=DirMoving,tag=!No-Ally-Indic] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[team=Orange]
execute as @e[type=boat,name=End,tag=Orange] at @s run particle end_rod ~ ~-200 ~ 0 0 0 0 1 force @a[team=Orange]
execute as @e[tag=Rot] at @s run teleport @s ~ ~ ~ ~13.5 ~
