#Attack tower
execute as @a[team=Blue,tag=IsPlaying] at @s positioned ~ ~-5 ~ run scoreboard players remove @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7] HaveObjective 1
execute as @a[team=Orange,tag=IsPlaying] at @s positioned ~ ~-5 ~ run scoreboard players remove @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7] HaveObjective 1
execute as @e[team=Blue,tag=Minions] at @s positioned ~ ~-5 ~ run scoreboard players remove @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7] HaveObjective 1
execute as @e[team=Orange,tag=Minions] at @s positioned ~ ~-5 ~ run scoreboard players remove @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7] HaveObjective 1


#Attack sound
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByOrange] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7] at @s positioned ~ ~5 ~ run playsound minecraft:block.stone.break record @a[distance=..300] ~ ~ ~ 2 1 1
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByBlue] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7] at @s positioned ~ ~5 ~ run playsound minecraft:block.stone.break record @a[distance=..300] ~ ~ ~ 2 1 1
execute at @a[gamemode=adventure,scores={Timer=21},tag=AffectByOrange] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7] at @s positioned ~ ~5 ~ run playsound minecraft:block.stone.break record @a[distance=..300] ~ ~ ~ 2 1 1
execute at @a[gamemode=adventure,scores={Timer=21},tag=AffectByBlue] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7] at @s positioned ~ ~5 ~ run playsound minecraft:block.stone.break record @a[distance=..300] ~ ~ ~ 2 1 1

#Attack particles
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByOrange] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7] at @s positioned ~ ~5 ~ run particle block red_sandstone ~ ~2.5 ~ 0.5 0.5 0.5 0 100 force @a
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByBlue] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7] at @s positioned ~ ~5 ~ run particle block lapis_block ~ ~2.5 ~ 0.5 0.5 0.5 0 100 force @a
execute at @a[gamemode=adventure,scores={Timer=21},tag=AffectByOrange] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7] at @s positioned ~ ~5 ~ run particle block red_sandstone ~ ~2.5 ~ 0.5 0.5 0.5 0 100 force @a
execute at @a[gamemode=adventure,scores={Timer=21},tag=AffectByBlue] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7] at @s positioned ~ ~5 ~ run particle block lapis_block ~ ~2.5 ~ 0.5 0.5 0.5 0 100 force @a

execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByOrange] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7,tag=OrangeTower] at @s positioned ~ ~5 ~ run summon armor_stand ~ ~2 ~ {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1,Team:Orange,Tags:["Bulk"]}]}
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByBlue] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7,tag=BlueTower] at @s positioned ~ ~5 ~ run summon armor_stand ~ ~2 ~ {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1,Team:Blue,Tags:["Bulk"]}]}
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByOrange] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=OrangeConquest,distance=..7,tag=OrangeInib] at @s positioned ~ ~5 ~ run summon armor_stand ~ ~1 ~ {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1,Team:Orange,Tags:["Bulk"]}]}
execute at @a[gamemode=adventure,scores={Timer=1},tag=AffectByBlue] positioned ~ ~-5 ~ as @e[type=armor_stand,scores={HaveObjective=-1000..},tag=BlueConquest,distance=..7,tag=BlueInib] at @s positioned ~ ~5 ~ run summon armor_stand ~ ~1 ~ {Tags:["Bulk"],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Passengers:[{id:magma_cube,Invulnerable:1,Size:1,NoAI:1,Silent:1,Team:Blue,Tags:["Bulk"]}]}
