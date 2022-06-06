#Mode
execute as @e[type=armor_stand,scores={Class=0},name=Blue] at @s run function hierarchy:game/mode/deathmatch/main
execute as @e[type=armor_stand,scores={Class=1},name=Blue] at @s run function hierarchy:game/mode/ctf/main
execute as @e[type=armor_stand,scores={Class=2},name=Blue] at @s run function hierarchy:game/mode/conquest/main
execute as @e[type=armor_stand,scores={Class=4},name=Blue] at @s run function hierarchy:game/mode/deroute/main
