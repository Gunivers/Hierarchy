execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Blue] run setblock 6094 106 6000 blue_banner[rotation=4]
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Orange] run setblock 5906 106 6000 orange_banner[rotation=12]
execute as @e[type=armor_stand,scores={HaveObjective=..0},name=Blue] run setblock 6094 106 6000 air destroy
execute as @e[type=armor_stand,scores={HaveObjective=..0},name=Orange] run setblock 5906 106 6000 air destroy
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Blue] at @s run scoreboard players set @p[x=6094.5,y=106,z=6000.5,tag=AffectByBlue,distance=..1] HaveObjective 2
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Orange] at @s run scoreboard players set @p[x=5906.5,y=106,z=6000.5,tag=AffectByOrange,distance=..1] HaveObjective 2
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Blue] at @s run scoreboard players set @p[x=6094.5,y=106,z=6000.5,scores={HaveObjective=1..},tag=AffectByOrange,distance=..1] HaveObjective -1
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Orange] at @s run scoreboard players set @p[x=5906.5,y=106,z=6000.5,scores={HaveObjective=1..},tag=AffectByBlue,distance=..1] HaveObjective -1
