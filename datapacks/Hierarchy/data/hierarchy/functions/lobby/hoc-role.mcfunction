#Timer (Blue counts the time between color changes, Orange stores the current color)
scoreboard players add @e[type=armor_stand,name=Blue] HoCtimer 1
execute as @e[type=armor_stand,scores={HoCtimer=1},name=Blue] run scoreboard players add @e[type=armor_stand,name=Orange] HoCtimer 1
scoreboard players set @e[type=armor_stand,scores={HoCtimer=6..},name=Orange] HoCtimer 0
scoreboard players set @e[type=armor_stand,scores={HoCtimer=30..},name=Blue] HoCtimer 0

#Changes the color and the sign
execute if entity @e[type=armor_stand,scores={HoCtimer=1},name=Blue] run function hierarchy:lobby/hoc-changerole
