scoreboard players add @e[type=armor_stand,name=Blue] SelectedWTF 0

tag @e[type=armor_stand,scores={Class=3,SelectedWTF=1},name=Blue] add Game_WTF_1
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=2},name=Blue] add Game_WTF_2
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=3},name=Blue] add Game_WTF_3
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=4},name=Blue] add Game_WTF_4
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=5},name=Blue] add Game_WTF_5
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=6},name=Blue] add Game_WTF_6
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=7},name=Blue] add Game_WTF_7
tag @e[type=armor_stand,scores={Class=3,SelectedWTF=8},name=Blue] add Game_WTF_8
execute if entity @e[type=armor_stand,scores={Class=3,SelectedWTF=0},name=Blue] run function hierarchy:game/mode/wtf/randomwtf

tag @e[type=armor_stand,scores={Class=3},name=Blue] add Game_WTF
