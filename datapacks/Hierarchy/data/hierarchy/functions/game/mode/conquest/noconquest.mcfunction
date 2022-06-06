execute as @e[type=armor_stand,scores={Timer=1},name=Orange] at @s run function hierarchy:game/mode/conquest/arena/spawntowers
execute as @e[type=armor_stand,scores={Timer=1},name=Orange] at @s run function hierarchy:game/mode/conquest/river/spawntowers
execute as @e[type=armor_stand,scores={Timer=1},name=Orange] at @s run function hierarchy:game/mode/conquest/ruins/spawntowers
execute as @e[type=armor_stand,scores={Timer=1},name=Orange] at @s run function hierarchy:game/mode/conquest/infection/spawntowers
execute at @e[type=armor_stand,tag=Conquest] if block ~ ~-1 ~ white_terracotta run fill ~-1 ~5 ~-1 ~1 ~10 ~1 air
setblock 2855 111 2951 air
setblock 3145 111 3049 air
setblock 3877 112 4000 air
setblock 4123 112 4000 air
setblock 5906 107 6000 air
setblock 6094 107 6000 air
setblock 1020 125 1000 air
setblock 980 125 1000 air
execute as @e[type=armor_stand,tag=Conquest] at @s run teleport @s ~ ~-1000 ~
kill @e[type=armor_stand,scores={Timer=1..},tag=Conquest]