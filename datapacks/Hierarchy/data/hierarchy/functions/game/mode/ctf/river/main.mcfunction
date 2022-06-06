execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Orange] run setblock 2855 110 2951 orange_banner[rotation=12]
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Blue] run setblock 3145 110 3049 blue_banner[rotation=4]
execute as @e[type=armor_stand,scores={HaveObjective=..0},name=Orange] run setblock 2855 110 2951 air destroy
execute as @e[type=armor_stand,scores={HaveObjective=..0},name=Blue] run setblock 3145 110 3049 air destroy
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Blue] at @s run scoreboard players set @p[x=3145.5,y=110,z=3049.5,tag=AffectByBlue,distance=..1] HaveObjective 2
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Orange] at @s run scoreboard players set @p[x=2855.5,y=110,z=2951.5,tag=AffectByOrange,distance=..1] HaveObjective 2
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Blue] at @s run scoreboard players set @p[x=3145.5,y=110,z=3049.5,scores={HaveObjective=1..},tag=AffectByOrange,distance=..1] HaveObjective -1
execute as @e[type=armor_stand,scores={HaveObjective=1..},name=Orange] at @s run scoreboard players set @p[x=2855.5,y=110,z=2951.5,scores={HaveObjective=1..},tag=AffectByBlue,distance=..1] HaveObjective -1
