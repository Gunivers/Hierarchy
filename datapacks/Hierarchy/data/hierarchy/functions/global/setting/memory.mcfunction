tag @e remove Setting_Game_Started

tag @e remove Setting_Kit_Selection
tag @e remove Setting_Team_Selection
tag @e remove Setting_Event_Mode

tag @e remove Setting_Particles
tag @e remove Setting_Ally_Indicator
tag @e remove Setting_Damage_Indicator

tag @e remove Setting_Minions
tag @e remove Setting_Mites
tag @e remove Setting_Jungle_Mobs

tag @e remove Setting_Force_Ready
tag @e remove Setting_Day_Cycle
tag @e remove Setting_Hats

tag @e remove Setting_NoMana
tag @e remove Setting_NoEndurance
execute as @e[type=armor_stand,name=Blue] at @s if block 0 70 0 green_stained_glass run tag @s add Setting_Event_Mode
execute as @e[type=armor_stand,name=Blue] at @s if block 0 71 0 green_stained_glass run tag @s add Setting_Day_Cycle
execute as @e[type=armor_stand,name=Blue] at @s if block 0 72 0 green_stained_glass run tag @s add Setting_Hats
execute as @e[type=armor_stand,name=Blue] at @s if block 0 73 0 green_stained_glass run tag @s add Setting_Minions
execute as @e[type=armor_stand,name=Blue] at @s if block 0 74 0 green_stained_glass run tag @s add Setting_Mites
execute as @e[type=armor_stand,name=Blue] at @s if block 0 75 0 green_stained_glass run tag @s add Setting_Kit_Selection
execute as @e[type=armor_stand,name=Blue] at @s if block 0 76 0 green_stained_glass run tag @s add Setting_Team_Selection
execute as @e[type=armor_stand,name=Blue] at @s if block 0 77 0 green_stained_glass run tag @s add Setting_Game_Started
execute as @e[type=armor_stand,name=Blue] at @s if block 0 78 0 green_stained_glass run tag @s add Setting_Particles
execute as @e[type=armor_stand,name=Blue] at @s if block 0 79 0 green_stained_glass run tag @s add Setting_Ally_Indicator
execute as @e[type=armor_stand,name=Blue] at @s if block 0 80 0 green_stained_glass run tag @s add Setting_Damage_Indicator
execute as @e[type=armor_stand,name=Blue] at @s if block 0 81 0 green_stained_glass run tag @s add Setting_Force_Ready
execute as @e[type=armor_stand,name=Blue] at @s if block 0 82 0 green_stained_glass run tag @s add Setting_Jungle_Mobs
execute as @e[type=armor_stand,name=Blue] at @s if block 0 83 0 green_stained_glass run tag @s add Setting_NoMana
execute as @e[type=armor_stand,name=Blue] at @s if block 0 84 0 green_stained_glass run tag @s add Setting_NoEndurance
execute as @e[type=armor_stand,name=Blue] at @s if block 0 86 0 green_stained_glass run tag @s add Setting_Event_Mode
tag @e[type=armor_stand,name=Blue,tag=Setting_Game_Started] add Setting_Event_Mode
