#Ender Crystal
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=3},tag=BlueTower] if block ~ ~-1 ~ white_terracotta run summon end_crystal ~ ~9 ~ {ShowBottom:0b,Invulnerable:1}
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=3},tag=OrangeTower] if block ~ ~-1 ~ white_terracotta run summon end_crystal ~ ~9 ~ {ShowBottom:0b,Invulnerable:1}
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=3},tag=BlueInib] if block ~ ~-1 ~ white_terracotta run summon end_crystal ~ ~8 ~ {ShowBottom:0b,Invulnerable:1}
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=3},tag=OrangeInib] if block ~ ~-1 ~ white_terracotta run summon end_crystal ~ ~8 ~ {ShowBottom:0b,Invulnerable:1}

#Ender Crystal Blast Protector
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=1},tag=BlueTower] if block ~ ~-1 ~ white_terracotta run setblock ~ ~9 ~ barrier
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=1},tag=OrangeTower] if block ~ ~-1 ~ white_terracotta run setblock ~ ~9 ~ barrier
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=1},tag=BlueInib] if block ~ ~-1 ~ white_terracotta run setblock ~ ~9 ~ barrier
execute at @e[type=armor_stand,scores={HaveObjective=-1000..,Timer=1},tag=OrangeInib] if block ~ ~-1 ~ white_terracotta run setblock ~ ~9 ~ barrier

#Clear Towers
execute as @e[type=armor_stand,scores={HaveObjective=..-1000,Timer=1},tag=Conquest] at @s run kill @e[type=end_crystal,distance=..10]
execute at @e[type=armor_stand,scores={HaveObjective=..-1000,Timer=1},tag=Conquest] if block ~ ~-1 ~ white_terracotta run fill ~ ~8 ~ ~ ~9 ~ air
